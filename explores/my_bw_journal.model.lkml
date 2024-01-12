connection: "erkans_legos"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*.dashboard.lookml"

explore: my_bw_journal {
  view_name: my_bw_journal

  join: my_bw_journal_comments {
    type: left_outer
    relationship: one_to_one
    sql_on: ${my_bw_journal_comments.pk} = ${my_bw_journal.pk} ;;
  }
  join: my_bw_journal_validations {
    type: left_outer
    relationship: one_to_one
    sql_on: ${my_bw_journal_validations.pk} = ${my_bw_journal.pk} ;;
  }
  }
