# The name of this view in Looker is "My Bw Journal"
view: my_bw_journal {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `erkan-celen-sndbx-b.fitibia.my_bw_journal` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: pk {
    primary_key: yes
    type: number
    sql: ${TABLE}.pk ;;
    action:  {
      label: "Objection"
      url: "https://europe-west1-erkan-celen-sndbx-b.cloudfunctions.net/looker-slack"
      icon_url: "https://www.pngall.com/wp-content/uploads/4/Exclamation-Mark-Symbol-PNG-Clipart.png"
      form_param: {
        name: "name"
        type: string
        label: "name"
        required: yes
        default: "{{_user_attributes['name']}}"
      }
      form_param: {
        name: "text"
        type: string
        label: "comments"
        required: yes
        default: "Type your objection here"
      }
      param: {
        name: "action_type"
        value: "objection"
      }
    }
    action: {
      label: "Validation"
      url: "https://europe-west1-erkan-celen-sndbx-b.cloudfunctions.net/looker-slack"
      icon_url: "https://cdn.pixabay.com/photo/2013/07/13/10/08/green-156618_960_720.png"
      param: {
        name: "action_type"
        value: "validation"
      }
      param: {
        name: "name"
        value: "{{_user_attributes['name']}}"
      }
    }
    action: {
      label: "Add a Comment"
      url: "https://europe-west1-erkan-celen-sndbx-b.cloudfunctions.net/looker-slack"
      icon_url: "https://cdn.iconscout.com/icon/free/png-256/free-comment-3251596-2724645.png"
      param: {
        name: "action_type"
        value: "comment"
      }
      form_param: {
        name: "name"
        type: string
        label: "name"
        required: yes
        default: "{{_user_attributes['name']}}"
      }
      form_param: {
        name: "text"
        type: string
        label: "comments"
        required: yes
        default: "Type your comments here"
      }
    }
  }

  dimension: id {
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
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
