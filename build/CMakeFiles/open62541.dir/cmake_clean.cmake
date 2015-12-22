file(REMOVE_RECURSE
  "libopen62541.pdb"
  "libopen62541.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/open62541.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
