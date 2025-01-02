connection: "superstore"

# include all the views -SSH
include: "/views/**/*.view.lkml"

datagroup: looker_new_github_ssh_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_new_github_ssh_default_datagroup

explore: superstore {}
