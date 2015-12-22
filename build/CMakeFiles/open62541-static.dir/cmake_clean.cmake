file(REMOVE_RECURSE
  "libopen62541-static.pdb"
  "libopen62541-static.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/open62541-static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
