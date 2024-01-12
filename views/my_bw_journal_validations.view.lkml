# The name of this view in Looker is "My Bw Journal Validations"
view: my_bw_journal_validations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `erkan-celen-sndbx-b.fitibia.my_bw_journal_validations` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Pk" in Explore.

  dimension: pk {
    type: number
    sql: ${TABLE}.pk ;;
  }

  dimension: validated {
    type: yesno
    sql: ${TABLE}.validated ;;
  }
}
