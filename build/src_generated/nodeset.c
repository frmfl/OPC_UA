/* WARNING: This is a generated file.
 * Any manual changes will be overwritten.

 */
#include "nodeset.h"
UA_INLINE void nodeset(UA_Server *server) {

do {
// Referencing node found and declared as parent: i=58/BaseObjectType using i=45/HasSubtype
// Node: opcua_node_objectType_t(ns=1;i=1001), 1:testType
UA_ObjectTypeAttributes attr;
UA_ObjectTypeAttributes_init(&attr);
attr.displayName = UA_LOCALIZEDTEXT("", "testType");
attr.description = UA_LOCALIZEDTEXT("", "");
UA_NodeId nodeId = UA_NODEID_NUMERIC(1, 1001);
UA_NodeId parentNodeId = UA_NODEID_NUMERIC(0, 58);
UA_NodeId parentReferenceNodeId = UA_NODEID_NUMERIC(0, 45);
UA_QualifiedName nodeName = UA_QUALIFIEDNAME(1, "testType");
UA_Server_addObjectTypeNode(server, nodeId, parentNodeId, parentReferenceNodeId, nodeName
       , attr, NULL);
} while(0);

do {
// Referencing node found and declared as parent: ns=1;i=1001/1:testType using i=47/HasComponent
// Node: opcua_node_variable_t(ns=1;i=6001), 1:Var1
UA_VariableAttributes attr;
UA_VariableAttributes_init(&attr);
attr.displayName = UA_LOCALIZEDTEXT("", "Var1");
attr.description = UA_LOCALIZEDTEXT("", "");
UA_NodeId nodeId = UA_NODEID_NUMERIC(1, 6001);
UA_NodeId typeDefinition = UA_NODEID_NULL;
UA_NodeId parentNodeId = UA_NODEID_NUMERIC(1, 1001);
UA_NodeId parentReferenceNodeId = UA_NODEID_NUMERIC(0, 47);
UA_QualifiedName nodeName = UA_QUALIFIEDNAME(1, "Var1");
UA_Server_addVariableNode(server, nodeId, parentNodeId, parentReferenceNodeId, nodeName
       , typeDefinition
       , attr, NULL);
// This node has the following references that can be created:
UA_Server_addReference(server, UA_NODEID_NUMERIC(1, 6001), UA_NODEID_NUMERIC(0, 40), UA_EXPANDEDNODEID_NUMERIC(0, 63), UA_TRUE);
UA_Server_addReference(server, UA_NODEID_NUMERIC(1, 6001), UA_NODEID_NUMERIC(0, 37), UA_EXPANDEDNODEID_NUMERIC(0, 78), UA_TRUE);
} while(0);

do {
// Referencing node found and declared as parent: i=85/Objects using i=35/Organizes
// Node: opcua_node_object_t(ns=1;i=5001), 1:testInstance
UA_ObjectAttributes attr;
UA_ObjectAttributes_init(&attr);
attr.displayName = UA_LOCALIZEDTEXT("", "testInstance");
attr.description = UA_LOCALIZEDTEXT("", "");
UA_NodeId nodeId = UA_NODEID_NUMERIC(1, 5001);
UA_NodeId typeDefinition = UA_NODEID_NULL;
UA_NodeId parentNodeId = UA_NODEID_NUMERIC(0, 85);
UA_NodeId parentReferenceNodeId = UA_NODEID_NUMERIC(0, 35);
UA_QualifiedName nodeName = UA_QUALIFIEDNAME(1, "testInstance");
UA_Server_addObjectNode(server, nodeId, parentNodeId, parentReferenceNodeId, nodeName
       , typeDefinition
       , attr, NULL);
// This node has the following references that can be created:
UA_Server_addReference(server, UA_NODEID_NUMERIC(1, 5001), UA_NODEID_NUMERIC(0, 40), UA_EXPANDEDNODEID_NUMERIC(1, 1001), UA_TRUE);
} while(0);

do {
// Referencing node found and declared as parent: ns=1;i=5001/1:testInstance using i=47/HasComponent
// Node: opcua_node_variable_t(ns=1;i=6002), 1:Var1
UA_VariableAttributes attr;
UA_VariableAttributes_init(&attr);
attr.displayName = UA_LOCALIZEDTEXT("", "Var1");
attr.description = UA_LOCALIZEDTEXT("", "");
UA_NodeId nodeId = UA_NODEID_NUMERIC(1, 6002);
UA_NodeId typeDefinition = UA_NODEID_NULL;
UA_NodeId parentNodeId = UA_NODEID_NUMERIC(1, 5001);
UA_NodeId parentReferenceNodeId = UA_NODEID_NUMERIC(0, 47);
UA_QualifiedName nodeName = UA_QUALIFIEDNAME(1, "Var1");
UA_Server_addVariableNode(server, nodeId, parentNodeId, parentReferenceNodeId, nodeName
       , typeDefinition
       , attr, NULL);
// This node has the following references that can be created:
UA_Server_addReference(server, UA_NODEID_NUMERIC(1, 6002), UA_NODEID_NUMERIC(0, 40), UA_EXPANDEDNODEID_NUMERIC(0, 63), UA_TRUE);
} while(0);
}
