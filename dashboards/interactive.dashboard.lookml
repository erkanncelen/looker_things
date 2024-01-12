- dashboard: interactive
  title: Interactive
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
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
