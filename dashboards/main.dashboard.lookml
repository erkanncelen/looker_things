---
- dashboard: my_fitness_journal
  title: My Fitness Journal
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 9kdc1NHUym3fhde8FbFne4

  elements:
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
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        __FILE: erkan_s_legos/dashboards/main.dashboard.lookml
        __LINE_NUM: 91
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
    series_colors: {}
    series_labels:
      max_reps: Reps
      max_weight: Weight
    label_rotation: 0
    x_axis_datetime_label: "%Y-%m-%d"
    trend_lines: []
    analysis_config:
      forecasting:
      - field_name: reps
        forecast_n: 2
        forecast_interval: week
      - field_name: sets
        forecast_n: 2
        forecast_interval: week
      - field_name: sessions
        forecast_n: 2
        forecast_interval: week
    x_axis_label_rotation: -45
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    listen:
      Excercise: my_bw_journal.excercise
      Date: my_bw_journal.date_date
    row: 0
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
    analysis_config:
      forecasting:
      - field_name: max_weight
        forecast_n: 2
        forecast_interval: week
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
      max_weight: "#1864B4"
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
    row: 1
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
    analysis_config:
      forecasting:
      - field_name: max_bodyweight
        forecast_n: 2
        forecast_interval: week
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
      max_weight: "#1864B4"
      max_bodyweight: "#3EB0D5"
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
    row: 2
    col: 0
    width: 24
    height: 5
    hidden_pivots: {}


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
