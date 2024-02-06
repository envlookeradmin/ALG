---
- dashboard: preliminaryenvases_74_bis_subcateg_ecs
  title: Preliminary-Envases_74_BIS_SubCateg (ECS)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: dNzlmxknjfL9IQvYuGo7iN
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 5px; padding: 5px 10px; background: #5e2129;\
      \ height: 60px; color: red;\">\n\t<nav style=\"font-size: 18px;\">\n\t\t<img\
      \ style=\"color: #efefef; padding: 5px 15px; float: left; height: 40px;\" src=\"\
      https://wwwstatic.lookercdn.com/logos/looker_all_white.svg\"/>\n\t\t<a style=\"\
      color: #efefef; padding: 5px 15px; float: left; line-height: 40px; font-weight:\
      \ bold;\" href=\"https://envases.cloud.looker.com/dashboards/9\"></a>\n\t\t\
      <a style=\"color: #efefef; padding: 5px 15px; float: left; line-height: 40px;\
      \ font-weight: bold;\" href=\"https://envases.cloud.looker.com/dashboards/11\"\
      ></a>\n\t\t\n\t</nav>\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Dato_dia
    name: Dato_dia
    model: envases-alg
    explore: rpt_alg
    type: single_value
    fields: [rpt_alg.fecha]
    filters: {}
    sorts: [rpt_alg.fecha]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5e2129"
    single_value_title: Data of the day
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_alg.FCURR: Tipo moneda
      rpt_alg.UKURS: Tipo de cambio
    header_font_color: "#ffffff"
    header_background_color: "#5e2129"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Períod: rpt_alg.date_filter
    row: 2
    col: 19
    width: 5
    height: 2
  - title: Info_act_hasta
    name: Info_act_hasta
    model: envases-alg
    explore: rpt_alg
    type: single_value
    fields: [rpt_alg.ult_act]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5e2129"
    single_value_title: Information updated until
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_alg.FCURR: Tipo moneda
      rpt_alg.UKURS: Tipo de cambio
    header_font_color: "#ffffff"
    header_background_color: "#5e2129"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Períod: rpt_alg.date_filter
    row: 4
    col: 19
    width: 5
    height: 2
  - title: ECS - SOUTH
    name: ECS - SOUTH
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg.category, rpt_alg.vacio_1, rpt_alg.vacio_2, rpt_alg.sort_category,
      rpt_alg.DAILY_SALES, rpt_alg.TOTAL_QTY_MTD, rpt_alg.VS_T_QTY_MTD_LY, rpt_alg.VS_T_QTY_BUD_MTD,
      rpt_alg.TOTAL_AMOUNT_MTD, rpt_alg.VS_T_AMOUNT_MTD_LY, rpt_alg.VS_TOTAL_BUD_MTD,
      rpt_alg.TOTAL_AMOUNT_MTD_LY, rpt_alg.TOTAL_AMOUNT_BUD_MTD, rpt_alg.TOTAL_QTY_YTD,
      rpt_alg.VS_T_QTY_YTD_LY, rpt_alg.VS_T_QTY_BUD_YTD, rpt_alg.TOTAL_AMOUNT_YTD,
      rpt_alg.VS_T_AMOUNT_YTD_LY, rpt_alg.VS_TOTAL_BUD_YTD, rpt_alg.TOTAL_AMOUNT_YTD_LY,
      rpt_alg.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg.category: "-TOTAL MXN,-SUB Europa,-SUB America,-TOTAL USD,-TOTAL LOCAL\
        \ CURRENCY EUR"
      rpt_alg.cluster: ECS - SOUTH
    sorts: [rpt_alg.sort_category]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns:
      rpt_alg.sort_category: left
      rpt_alg.category: left
    column_order: [rpt_alg.category, rpt_alg.DAILY_SALES, rpt_alg.vacio_1, rpt_alg.TOTAL_QTY_MTD,
      rpt_alg.VS_T_QTY_MTD_LY, rpt_alg.VS_T_QTY_BUD_MTD, rpt_alg.TOTAL_AMOUNT_MTD,
      rpt_alg.VS_T_AMOUNT_MTD_LY, rpt_alg.VS_TOTAL_BUD_MTD, rpt_alg.TOTAL_AMOUNT_MTD_LY,
      rpt_alg.TOTAL_AMOUNT_BUD_MTD, rpt_alg.vacio_2, rpt_alg.TOTAL_QTY_YTD, rpt_alg.VS_T_QTY_YTD_LY,
      rpt_alg.VS_T_QTY_BUD_YTD, rpt_alg.TOTAL_AMOUNT_YTD, rpt_alg.VS_T_AMOUNT_YTD_LY,
      rpt_alg.VS_TOTAL_BUD_YTD, rpt_alg.TOTAL_AMOUNT_YTD_LY, rpt_alg.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg.FCURR: Tipo moneda
      rpt_alg.UKURS: Tipo de cambio
      rpt_alg.TOTAL_AMOUNT: TOTAL AMOUNT
      rpt_alg.TOTAL_QTY: TOTAL QTY
      rpt_alg.VS_BUD_QTY_T: "% VS BUD QTY T"
      rpt_alg.VS_BUD_T: "% VS BUD MTD"
      rpt_alg.EXPORT_AMOUNT_MTD: MTD Amount
      rpt_alg.EXPORT_BUD_QTY_MTD: MTD
      rpt_alg.TOTAL_QTY_YEAR: TOTAL QTY
      rpt_alg._VS_YEAR_ANT_QTY_T_YEAR: "% VS AÑO ANT QTY T"
      rpt_alg.VS_BUD_QTY_T_YEAR: "% VS BUD QTY T"
      rpt_alg.TOTAL_AMOUNT_YEAR: TOTAL AMOUNT
      rpt_alg.VS_YEAR_ANT_VAL_T_YEAR: "% VS AÑO ANT VAL"
      rpt_alg.VS_BUD_T_YEAR: "% VS BUD MTD"
      rpt_alg.EXPORT_AMOUNT_YTD: MTD AMOUNT Y
      rpt_alg.EXPORT_AMOUNT_YTD_YEAR_ANT_YEAR: MTD Y
      rpt_alg.category: CATEGORY
      rpt_alg._VS_YEAR_ANT_QTY_T: "% VS AÑO ANT QTY T"
      rpt_alg.VS_YEAR_ANT_VAL_T: "% VS AÑO ANT VAL"
      rpt_alg.BUD_TOTAL_AMOUNT_YEAR: BUD TOTAL AMOUNT
      rpt_alg.TOTAL_AMOUNT_YEAR_ANT: TOTAL AMOUNT AÑO ANT
      rpt_alg.BUD_TOTAL_AMOUNT_YEAR_YEAR: BUD TOTAL AMOUNT
      rpt_alg.TOTAL_AMOUNT_YEAR_ANT_YEAR: TOTAL AMOUNT AÑO ANT
      rpt_alg.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg.vacio_1: "."
      rpt_alg.vacio_2: "."
      rpt_alg.SALES_DAY: DAILY SALES
      rpt_alg.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg.category: 120
      rpt_alg.vacio_1: 10
      rpt_alg.TOTAL_QTY_MTD: 55
      rpt_alg.VS_T_QTY_MTD_LY: 70
      rpt_alg.VS_T_QTY_BUD_MTD: 70
      rpt_alg.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg.VS_TOTAL_BUD_MTD: 70
      rpt_alg.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg.VS_T_QTY_YTD_LY: 70
      rpt_alg.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg.TOTAL_QTY_YTD: 55
      rpt_alg.VS_T_QTY_BUD_YTD: 70
      rpt_alg.TOTAL_AMOUNT_YTD: 75
      rpt_alg.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg.VS_TOTAL_BUD_YTD: 70
      rpt_alg.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg.vacio_2: 10
      rpt_alg.TOTAL_AMOUNT_MTD: 80
      rpt_alg.DAILY_SALES: 70
    series_cell_visualizations:
      rpt_alg.SALES_DAY:
        is_active: false
    series_text_format:
      rpt_alg.vacio_1:
        bg_color: "#FFF"
      rpt_alg.vacio_2:
        bg_color: "#FFF"
    header_font_color: "#ffffff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#5e2129"
    single_value_title: Información act. hasta
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [rpt_alg.category_orden, rpt_alg.sort_category]
    listen:
      Períod: rpt_alg.date_filter
    row: 6
    col: 0
    width: 24
    height: 22
  - name: CURRENCY
    title: CURRENCY
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg.FCURR, rpt_alg.UKURS]
    filters:
      rpt_alg.UKURS: ">0"
      rpt_alg.category: TOTAL MXN
    sorts: [rpt_alg.FCURR]
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
    series_labels:
      rpt_alg.FCURR: CURRENCY TYPE
      rpt_alg.UKURS: EXCHANGE RATE
    series_column_widths:
      rpt_alg.FCURR: 125
      rpt_alg.UKURS: 125
    header_font_color: "#ffffff"
    header_background_color: "#5e2129"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Períod: rpt_alg.date_filter
    row: 2
    col: 0
    width: 5
    height: 4
  filters:
  - name: Períod
    title: Períod
    type: field_filter
    default_value: 2023/12/31
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_picker
      display: inline
      options: []
    model: envases-alg
    explore: rpt_alg
    listens_to_filters: []
    field: rpt_alg.date_filter
