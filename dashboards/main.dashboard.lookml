---
- dashboard: my_fitness_journal
  title: My Fitness Journal
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 9kdc1NHUym3fhde8FbFne4

  elements:
  - name: logo
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "![Foo](https://jaarcongresnl2022.agileconsortium.net/wp-content/uploads/2019/10/logo-Xebia.jpg)"
    row: 100
    col: 0
    width: 2
    height: 3
  - name: banner
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "![Banner](https://static.vecteezy.com/system/resources/previews/027/295/549/non_2x/handsome-african-basketball-player-posing-isolated-on-white-background-sport-theme-free-photo.jpg)"
    row: 0
    col: 16
    width: 8
    height: 5
  - name: empty_box
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 8
    width: 8
    height: 2
  - name: fitibia
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '<h1 style="text-align: center;font-weight: bold;color:#6c1d5f">Fitibia</h1>'
    row: 3
    col: 8
    width: 8
    height: 3


  - name: reps_sets_and_sessions
    title: Reps Sets and Sessions
    model: my_bw_journal
    explore: my_bw_journal
    type: looker_column
    fields: [my_bw_journal.date_week, reps, sets, sessions]
    fill_fields: [my_bw_journal.date_week]
    filters: {}
    sorts: [my_bw_journal.date_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: reps
      value_format:
      value_format_name:
      based_on: my_bw_journal.reps
      _kind_hint: measure
      measure: reps
      type: sum
      _type_hint: number
    - category: measure
      expression:
      label: max_weight
      value_format:
      value_format_name:
      based_on: my_bw_journal.weight
      _kind_hint: measure
      measure: max_weight
      type: max
      _type_hint: number
    - category: measure
      expression:
      label: sessions
      value_format:
      value_format_name:
      based_on: my_bw_journal.id
      _kind_hint: measure
      measure: sessions
      type: count_distinct
      _type_hint: number
    - category: measure
      expression:
      label: sets
      value_format:
      value_format_name:
      based_on: set_id_concatted
      _kind_hint: measure
      measure: sets
      type: count_distinct
      _type_hint: number
    - category: dimension
      expression: concat(${my_bw_journal.id}, ${my_bw_journal.set})
      label: set_id_concatted
      value_format:
      value_format_name:
      dimension: set_id_concatted
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      reps: "#6c1d5f"
      sets: "#bc89b2"
      sessions: "#483444"
    y_axes: [{label: Reps Avg, orientation: left, series: [{axisId: reps, id: reps,
            name: reps}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: sets, id: sets, name: sets}, {axisId: sessions, id: sessions,
            name: sessions}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hide_legend: false
    label_value_format: "##"
    series_labels:
      max_reps: Reps
      max_weight: Weight
    label_rotation: 0
    x_axis_datetime_label: "%Y-%m-%d"
    trend_lines: []
    x_axis_label_rotation: -45
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    listen:
      Excercise: my_bw_journal.excercise
      Date: my_bw_journal.date_date
    row: 5
    col: 0
    width: 24
    height: 5

  - name: weights
    title: Weights (kg)
    model: my_bw_journal
    explore: my_bw_journal
    type: looker_column
    fields: [my_bw_journal.date_week, max_weight]
    fill_fields: [my_bw_journal.date_week]
    filters: {}
    sorts: [my_bw_journal.date_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: max_reps
      value_format:
      value_format_name:
      based_on: my_bw_journal.reps
      _kind_hint: measure
      measure: max_reps
      type: max
      _type_hint: number
    - category: measure
      expression:
      label: max_weight
      value_format:
      value_format_name:
      based_on: my_bw_journal.weight
      _kind_hint: measure
      measure: max_weight
      type: max
      _type_hint: number
    - category: measure
      expression:
      label: sessions
      value_format:
      value_format_name:
      based_on: my_bw_journal.id
      _kind_hint: measure
      measure: sessions
      type: count_distinct
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        __FILE: erkan_s_legos/dashboards/main.dashboard.lookml
        __LINE_NUM: 90
    y_axes: [{label: Reps, orientation: left, series: [{axisId: sessions, id: sessions,
            name: sessions, __FILE: erkan_s_legos/dashboards/main.dashboard.lookml,
            __LINE_NUM: 91}, {axisId: max_reps, id: max_reps, name: Reps, __FILE: erkan_s_legos/dashboards/main.dashboard.lookml,
            __LINE_NUM: 92}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: erkan_s_legos/dashboards/main.dashboard.lookml,
        __LINE_NUM: 91}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    label_value_format: "##"
    series_colors:
      max_weight: "#6c1d5f"
    series_labels:
      max_reps: Reps
      max_weight: Weight
    label_rotation: 0
    x_axis_label_rotation: -45
    x_axis_datetime_label: "%Y-%m-%d"
    trend_lines: []
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    row: 6
    col: 0
    width: 24
    height: 5
    hidden_pivots: {}
    listen:
      Excercise: my_bw_journal.excercise
      Date: my_bw_journal.date_date

  - name: bodyweight
    title: Body Weight (kg)
    model: my_bw_journal
    explore: my_bw_journal
    type: looker_column
    fields: [my_bw_journal.date_week, max_bodyweight]
    fill_fields: [my_bw_journal.date_week]
    filters:
    sorts: [my_bw_journal.date_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: max_reps
      value_format:
      value_format_name:
      based_on: my_bw_journal.reps
      _kind_hint: measure
      measure: max_reps
      type: max
      _type_hint: number
    - category: measure
      expression:
      label: max_weight
      value_format:
      value_format_name:
      based_on: my_bw_journal.weight
      _kind_hint: measure
      measure: max_weight
      type: max
      _type_hint: number
    - category: measure
      expression:
      label: sessions
      value_format:
      value_format_name:
      based_on: my_bw_journal.id
      _kind_hint: measure
      measure: sessions
      type: count_distinct
      _type_hint: number
    - category: measure
      expression:
      label: max_bodyweight
      value_format:
      value_format_name:
      based_on: my_bw_journal.bodyweight
      _kind_hint: measure
      measure: max_bodyweight
      type: max
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        __FILE: erkan_s_legos/dashboards/main.dashboard.lookml
        __LINE_NUM: 90
    y_axes: [{label: '', orientation: left, series: [{axisId: max_bodyweight, id: max_bodyweight,
            name: max_bodyweight}], showLabels: false, showValues: false, maxValue: 100,
        minValue: 70, unpinAxis: false, tickDensity: custom, tickDensityCustom: 0, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    label_value_format: "##.#"
    series_colors:
      max_bodyweight: "#6c1d5f"
    series_labels:
      max_reps: Reps
      max_weight: Weight
    label_rotation: 0
    x_axis_datetime_label: "%Y-%m-%d"
    trend_lines: []
    x_axis_label_rotation: -45
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Excercise: my_bw_journal.excercise
      Date: my_bw_journal.date_date
    row: 7
    col: 0
    width: 24
    height: 5
    hidden_pivots: {}

  - name: journal
    title: Journal
    model: my_bw_journal
    explore: my_bw_journal
    type: looker_grid
    fields: [my_bw_journal.pk, my_bw_journal.id, my_bw_journal.date_date, my_bw_journal.excercise, my_bw_journal.set,
      my_bw_journal.reps, my_bw_journal.weight, my_bw_journal.bodyweight, my_bw_journal_validations.validated, my_bw_journal_comments.comment]
    sorts: [my_bw_journal.pk desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    header_font_color: "#ffffff"
    header_background_color: "#8214A0"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#004931",
        font_color: !!null '', color_application: {collection_id: sligro, palette_id: sligro-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    row: 8
    col: 0
    width: 24
    height: 10


  filters:
  - name: Excercise
    title: Excercise
    type: field_filter
    default_value: deadlift
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: my_bw_journal
    explore: my_bw_journal
    listens_to_filters: []
    field: my_bw_journal.excercise
  - name: Date
    title: Time Interval
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: true
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: my_bw_journal
    explore: my_bw_journal
    listens_to_filters: []
    field: my_bw_journal.date_date
