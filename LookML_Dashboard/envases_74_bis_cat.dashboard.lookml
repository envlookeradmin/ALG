---
- dashboard: envases_74_bis_cat
  title: Envases_74_BIS_cat
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ISqWmg3P6gKFfjkKdRR2Eh
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
    fields: [rpt_alg_category.fecha]
    filters: {}
    sorts: [rpt_alg_category.fecha]
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
      Período: rpt_alg_category.date_filter
    row: 2
    col: 19
    width: 5
    height: 2
  - title: Info_act_hasta
    name: Info_act_hasta
    model: envases-alg
    explore: rpt_alg
    type: single_value
    fields: [rpt_alg_category.ult_act]
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
      Período: rpt_alg_category.date_filter
    row: 4
    col: 19
    width: 5
    height: 2
  - title: CURRENCY
    name: CURRENCY
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.FCURR, rpt_alg_category.UKURS]
    filters:
      rpt_alg_category.UKURS: ">0"
      rpt_alg_category.category: TOTAL MXN
    sorts: [rpt_alg_category.FCURR]
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
      rpt_alg_category.FCURR: CURRENCY TYPE
      rpt_alg_category.UKURS: EXCHANGE RATE
    series_column_widths:
      rpt_alg_category.FCURR: 125
      rpt_alg_category.UKURS: 125
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
      Período: rpt_alg_category.date_filter
    row: 2
    col: 0
    width: 5
    height: 4
  - name: SUMMARY (copy 2)
    title: SUMMARY (copy 2)
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.sort_category2, rpt_alg_category.category2, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2,
      rpt_alg_category.DAILY_SALES, rpt_alg_category.TOTAL_AMOUNT_MTD, rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY, rpt_alg_category.VS_TOTAL_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL MXN,-TOTAL EUR"
      rpt_alg_category.category2: "-NULL"
      rpt_alg_category.summary_flag: '1,2'
    sorts: [rpt_alg_category.sort_category2]
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
      rpt_alg_category.sort_category: left
      rpt_alg_category.category: left
    column_order: [rpt_alg_category.category2, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_AMOUNT_YTD,
      rpt_alg_category.VS_T_AMOUNT_YTD_LY, rpt_alg_category.VS_TOTAL_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.category2: COUNTRY
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 100
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 100
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 70
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.category2: 120
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden, rpt_alg_category.sort_category2]
    listen:
      Período: rpt_alg_category.date_filter
    row: 2
    col: 6
    width: 12
    height: 7
  - title: MEXICO
    name: MEXICO
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.sort_category,
      rpt_alg_category.DAILY_SALES, rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD, rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD,
      rpt_alg_category.VS_T_QTY_YTD_LY, rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD,
      rpt_alg_category.VS_T_AMOUNT_YTD_LY, rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL EUR,-SUB Europa,-SUB America"
      rpt_alg_category.cluster: MEXICO
    sorts: [rpt_alg_category.sort_category]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden, rpt_alg_category.sort_category]
    listen:
      Período: rpt_alg_category.date_filter
    row: 9
    col: 0
    width: 24
    height: 16
  - title: USA
    name: USA
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.sort_category,
      rpt_alg_category.DAILY_SALES, rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD, rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD,
      rpt_alg_category.VS_T_QTY_YTD_LY, rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD,
      rpt_alg_category.VS_T_AMOUNT_YTD_LY, rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL MXN,-TOTAL EUR,-SUB Europa,-SUB America,-TOTAL LOCAL\
        \ CURRENCY USD"
      rpt_alg_category.cluster: USA
    sorts: [rpt_alg_category.sort_category]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden, rpt_alg_category.sort_category]
    listen:
      Período: rpt_alg_category.date_filter
    row: 25
    col: 0
    width: 24
    height: 5
  - title: CANADA
    name: CANADA
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.DAILY_SALES,
      rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL MXN,-TOTAL EUR,-SUB Europa,-SUB America"
      rpt_alg_category.cluster: CANADA
    sorts: [rpt_alg_category.category]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden]
    listen:
      Período: rpt_alg_category.date_filter
    row: 30
    col: 0
    width: 24
    height: 4
  - title: GUATEMALA
    name: GUATEMALA
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.sort_category,
      rpt_alg_category.DAILY_SALES, rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD, rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD,
      rpt_alg_category.VS_T_QTY_YTD_LY, rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD,
      rpt_alg_category.VS_T_AMOUNT_YTD_LY, rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL MXN,-TOTAL EUR,-SUB Europa,-SUB America"
      rpt_alg_category.cluster: GUATEMALA
    sorts: [rpt_alg_category.sort_category]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden, rpt_alg_category.sort_category]
    listen:
      Período: rpt_alg_category.date_filter
    row: 34
    col: 0
    width: 24
    height: 6
  - title: ECN - NORTH
    name: ECN - NORTH
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.sort_category_denmark,
      rpt_alg_category.DAILY_SALES, rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD, rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD,
      rpt_alg_category.VS_T_QTY_YTD_LY, rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD,
      rpt_alg_category.VS_T_AMOUNT_YTD_LY, rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL MXN,-SUB Europa,-SUB America,-TOTAL USD"
      rpt_alg_category.cluster: ECN - NORTH
    sorts: [rpt_alg_category.sort_category_denmark]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden, rpt_alg_category.sort_category_denmark]
    listen:
      Período: rpt_alg_category.date_filter
    row: 43
    col: 0
    width: 24
    height: 11
  - title: ECW - WEST
    name: ECW - WEST
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.sort_category,
      rpt_alg_category.DAILY_SALES, rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD, rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD,
      rpt_alg_category.VS_T_QTY_YTD_LY, rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD,
      rpt_alg_category.VS_T_AMOUNT_YTD_LY, rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL MXN,-SUB Europa,-SUB America,-TOTAL USD,-TOTAL LOCAL\
        \ CURRENCY EUR"
      rpt_alg_category.cluster: ECW - WEST
    sorts: [rpt_alg_category.sort_category]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden, rpt_alg_category.sort_category]
    listen:
      Período: rpt_alg_category.date_filter
    row: 64
    col: 0
    width: 24
    height: 6
  - title: ECC - CENTRAL
    name: ECC - CENTRAL
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.DAILY_SALES,
      rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL MXN,-SUB Europa,-SUB America,-TOTAL USD,-TOTAL LOCAL\
        \ CURRENCY EUR"
      rpt_alg_category.cluster: ECC - CENTRAL
    sorts: [rpt_alg_category.category]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden]
    listen:
      Período: rpt_alg_category.date_filter
    row: 54
    col: 0
    width: 24
    height: 5
  - title: ECS - SOUTH
    name: ECS - SOUTH
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.sort_category,
      rpt_alg_category.DAILY_SALES, rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD, rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD,
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD,
      rpt_alg_category.VS_T_QTY_YTD_LY, rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD,
      rpt_alg_category.VS_T_AMOUNT_YTD_LY, rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: "-TOTAL MXN,-SUB Europa,-SUB America,-TOTAL USD,-TOTAL LOCAL\
        \ CURRENCY EUR"
      rpt_alg_category.cluster: ECS - SOUTH
    sorts: [rpt_alg_category.sort_category]
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
      rpt_alg_category.sort_category: left
      rpt_alg_category.category: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden, rpt_alg_category.sort_category]
    listen:
      Período: rpt_alg_category.date_filter
    row: 59
    col: 0
    width: 24
    height: 5
  - title: TOTAL
    name: TOTAL
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.DAILY_SALES,
      rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: TOTAL USD,TOTAL MXN
    sorts: [rpt_alg_category.category desc]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 74
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden]
    listen:
      Período: rpt_alg_category.date_filter
    row: 74
    col: 0
    width: 24
    height: 4
  - title: TOTAL AMERICA
    name: TOTAL AMERICA
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.DAILY_SALES,
      rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: TOTAL MXN,TOTAL USD
      rpt_alg_category.cluster: GUATEMALA,CANADA,MEXICO,USA
    sorts: [rpt_alg_category.category desc]
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
      rpt_alg_category.category: left
      rpt_alg_category.DAILY_SALES: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden]
    listen:
      Período: rpt_alg_category.date_filter
    row: 40
    col: 0
    width: 24
    height: 3
  - title: TOTAL EUROPE
    name: TOTAL EUROPE
    model: envases-alg
    explore: rpt_alg
    type: looker_grid
    fields: [rpt_alg_category.category, rpt_alg_category.vacio_1, rpt_alg_category.vacio_2, rpt_alg_category.DAILY_SALES,
      rpt_alg_category.TOTAL_QTY_MTD, rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    filters:
      rpt_alg_category.category: TOTAL MXN,TOTAL EUR
      rpt_alg_category.cluster: ECW - WEST,ECC - CENTRAL,ECN - NORTH,ECS - SOUTH
    sorts: [rpt_alg_category.category]
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
      rpt_alg_category.DAILY_SALES: left
      rpt_alg_category.category: left
    column_order: [rpt_alg_category.category, rpt_alg_category.DAILY_SALES, rpt_alg_category.vacio_1, rpt_alg_category.TOTAL_QTY_MTD,
      rpt_alg_category.VS_T_QTY_MTD_LY, rpt_alg_category.VS_T_QTY_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD,
      rpt_alg_category.VS_T_AMOUNT_MTD_LY, rpt_alg_category.VS_TOTAL_BUD_MTD, rpt_alg_category.TOTAL_AMOUNT_MTD_LY,
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD, rpt_alg_category.vacio_2, rpt_alg_category.TOTAL_QTY_YTD, rpt_alg_category.VS_T_QTY_YTD_LY,
      rpt_alg_category.VS_T_QTY_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD, rpt_alg_category.VS_T_AMOUNT_YTD_LY,
      rpt_alg_category.VS_TOTAL_BUD_YTD, rpt_alg_category.TOTAL_AMOUNT_YTD_LY, rpt_alg_category.TOTAL_AMOUNT_BUD_YTD]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 10
    series_labels:
      rpt_alg_category.category: CATEGORY
      rpt_alg_category.TOTAL_QTY_MTD: TOTAL QTY MTD
      rpt_alg_category.VS_T_QTY_MTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_MTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD: TOTAL AMOUNT MTD
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_MTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: TOTAL AMOUNT BUD
      rpt_alg_category.TOTAL_QTY_YTD: TOTAL QTY YTD
      rpt_alg_category.VS_T_QTY_YTD_LY: "% VS TOTAL QTY LY"
      rpt_alg_category.VS_T_QTY_BUD_YTD: "% VS TOTAL QTY BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD: TOTAL AMOUNT YTD
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: "% VS TOTAL AMOUNT LY"
      rpt_alg_category.VS_TOTAL_BUD_YTD: "% VS TOTAL BUD"
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: TOTAL AMOUNT LY
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: TOTAL AMOUNT BUD
      rpt_alg_category.vacio_1: "."
      rpt_alg_category.vacio_2: "."
      rpt_alg_category.DAILY_SALES: DAILY SALES
    series_column_widths:
      rpt_alg_category.category: 120
      rpt_alg_category.vacio_1: 10
      rpt_alg_category.TOTAL_QTY_MTD: 55
      rpt_alg_category.VS_T_QTY_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_BUD_MTD: 70
      rpt_alg_category.VS_T_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_MTD: 70
      rpt_alg_category.TOTAL_AMOUNT_MTD_LY: 70
      rpt_alg_category.VS_T_QTY_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_MTD: 80
      rpt_alg_category.TOTAL_QTY_YTD: 55
      rpt_alg_category.VS_T_QTY_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD: 75
      rpt_alg_category.VS_T_AMOUNT_YTD_LY: 70
      rpt_alg_category.VS_TOTAL_BUD_YTD: 70
      rpt_alg_category.TOTAL_AMOUNT_YTD_LY: 70
      rpt_alg_category.TOTAL_AMOUNT_BUD_YTD: 80
      rpt_alg_category.vacio_2: 10
      rpt_alg_category.TOTAL_AMOUNT_MTD: 80
      rpt_alg_category.DAILY_SALES: 70
    series_text_format:
      rpt_alg_category.vacio_1:
        bg_color: "#FFF"
      rpt_alg_category.vacio_2:
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
    hidden_fields: [rpt_alg_category.category_orden]
    listen:
      Período: rpt_alg_category.date_filter
    row: 70
    col: 0
    width: 24
    height: 4
  filters:
  - name: Período
    title: Período
    type: field_filter
    default_value: 2023/09/08
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_picker
      display: inline
      options: []
    model: envases-alg
    explore: rpt_alg
    listens_to_filters: []
    field: rpt_alg_category.date_filter
