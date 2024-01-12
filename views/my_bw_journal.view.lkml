# The name of this view in Looker is "My Bw Journal"
view: my_bw_journal {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `erkan-celen-sndbx-b.fitibia.my_bw_journal` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Bodyweight" in Explore.

  dimension: bodyweight {
    type: number
    sql: ${TABLE}.bodyweight ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_bodyweight {
    type: sum
    sql: ${bodyweight} ;;  }
  measure: average_bodyweight {
    type: average
    sql: ${bodyweight} ;;  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: excercise {
    type: string
    sql: ${TABLE}.excercise ;;
  }

  dimension: reps {
    type: number
    sql: ${TABLE}.reps ;;
  }

  dimension: set {
    type: number
    sql: ${TABLE}.`set` ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
    action:  {
      label: "Objection"
      url: "https://hooks.slack.com/services/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"
      icon_url: "https://cdn-icons-png.flaticon.com/512/10295/10295693.png"
      form_url: "https://hooks.slack.com/services/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/{{ value }}/form.json"
      param: {
        name: "text"
        value: "value string"
      }
    #   # form_param: {
    #   #   name:  "text"
    #   #   type: textarea
    #   #   label:  "comments"
    #   #   # option: {
    #   #   #   name:  "text"
    #   #   #   label:  "possibly-localized-string"
    #   #   # }
    #   #   required:  yes
    #   #   description:  "possibly-localized-string"
    #   #   default:  "string"
    #   # }
    }
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
