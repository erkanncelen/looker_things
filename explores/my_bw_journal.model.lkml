connection: "erkans_legos"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*.dashboard.lookml"

explore: my_bw_journal {
  view_name: my_bw_journal
  }
