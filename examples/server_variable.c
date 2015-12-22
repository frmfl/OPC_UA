/*
 * This work is licensed under a Creative Commons CCZero 1.0 Universal License.
 * See http://creativecommons.org/publicdomain/zero/1.0/ for more information.
 */

#include <signal.h>

#ifdef UA_NO_AMALGAMATION
# include "ua_types.h"
# include "ua_server.h"
# include "logger_stdout.h"
# include "networklayer_tcp.h"
#else
# include "open62541.h"
#endif

UA_Boolean running = 1;
UA_Logger logger = Logger_Stdout;

static void stopHandler(int sign) {
    UA_LOG_INFO(logger, UA_LOGCATEGORY_SERVER, "received ctrl-c");
    running = 0;
}

static void onRead(void *handle, const UA_NodeId nodeid, const UA_Variant *data,
                   const UA_NumericRange *range) {
    UA_LOG_INFO(logger, UA_LOGCATEGORY_USERLAND,
                "onRead; handle is: %i", (uintptr_t)handle);
}

static void onWrite(void *h, const UA_NodeId nodeid, const UA_Variant *data,
                    const UA_NumericRange *range) {
    UA_LOG_INFO(logger, UA_LOGCATEGORY_USERLAND, "onWrite; handle: %i", (uintptr_t)h);
}

int main(int argc, char** argv) {
    signal(SIGINT, stopHandler); /* catches ctrl-c */

    UA_Server *server = UA_Server_new(UA_ServerConfig_standard);
    UA_Server_setLogger(server, logger);
    UA_ServerNetworkLayer *nl;
    nl = ServerNetworkLayerTCP_new(UA_ConnectionConfig_standard, 16664);
    UA_Server_addNetworkLayer(server, nl);

    /* add a variable node to the address space */
    UA_VariableAttributes attr;
    UA_VariableAttributes_init(&attr);
    UA_Int32 myInteger = 42;
    UA_Variant_setScalar(&attr.value, &myInteger, &UA_TYPES[UA_TYPES_INT32]);
    attr.description = UA_LOCALIZEDTEXT("en_US","the answer");
    attr.displayName = UA_LOCALIZEDTEXT("en_US","the answer");
    UA_NodeId myIntegerNodeId = UA_NODEID_STRING(1, "the.answer");
    UA_QualifiedName myIntegerName = UA_QUALIFIEDNAME(1, "the answer");

    // Set node ID's
    UA_NodeId parentNodeId = UA_NODEID_NUMERIC(0, UA_NS0ID_OBJECTSFOLDER);
    UA_NodeId parentReferenceNodeId = UA_NODEID_NUMERIC(0, UA_NS0ID_ORGANIZES);
    UA_Server_addVariableNode(server, myIntegerNodeId, parentNodeId,
                              parentReferenceNodeId, myIntegerName,
                              UA_NODEID_NULL, attr, NULL);

    UA_ValueCallback callback = {(void*)7, onRead, onWrite};
    UA_Server_setVariableNode_valueCallback(server, myIntegerNodeId, callback);

    UA_StatusCode retval = UA_Server_run(server, 1, &running);
    UA_Server_delete(server);

    return retval;
}
