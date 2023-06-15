connection: "auteco"


include: "/views/**/*.view"

#include: "/Dashboard/**/*.dashboard.lookml"

datagroup: auteco_1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: auteco_1_default_datagroup

explore: tabla_auteco {}
explore: tabla_auteco1 {}
