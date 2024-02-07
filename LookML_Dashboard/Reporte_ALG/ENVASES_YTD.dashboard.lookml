---
- dashboard: envases_ytd
  title: ENVASES YTD
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: CUy0HwHm1KwZ3IO9MyJtdE
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
      \ bold;\" href=\"https://envases.cloud.looker.com/dashboards/1\">Liga a Envases\
      \ MTD</a>\n\t\t\n\t</nav>\n</div>"
    row: 0
    col: 18
    width: 6
    height: 2
  - title: Datos del día
    name: Datos del día
    model: envases-alg
    explore: rpt_ventasytd
    type: single_value
    fields: [rpt_ventasytd.fecha]
    filters: {}
    sorts: [rpt_ventasytd.fecha]
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
    single_value_title: Datos del día
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    table_theme: white
    limit_displayed_rows: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    listen:
      Período: rpt_ventasytd.date_filter
    row: 2
    col: 19
    width: 5
    height: 2
  - title: Información act hasta
    name: Información act hasta
    model: envases-alg
    explore: rpt_ventasytd
    type: single_value
    fields: [rpt_ventasytd.ult_act]
    filters: {}
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
    single_value_title: Información act. hasta
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    table_theme: white
    limit_displayed_rows: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    hide_totals: false
    hide_row_totals: false
    listen:
      Período: rpt_ventasytd.date_filter
    row: 4
    col: 19
    width: 5
    height: 2
  - title: Tipo de cambio anual
    name: Tipo de cambio anual
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.stat_curr, rpt_ventasytd.UKURS]
    filters:
      rpt_ventasytd.UKURS: ">0"
      rpt_ventasytd.category: TOTAL MXN
    sorts: [rpt_ventasytd.stat_curr]
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
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.stat_curr: 150
      rpt_ventasytd.UKURS: 150
    header_font_color: "#fff"
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
      Período: rpt_ventasytd.date_filter
    row: 0
    col: 0
    width: 6
    height: 7
  - title: México
    name: México
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category_orden, rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD,
      rpt_ventasytd.VS_QTY, rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD,
      rpt_ventasytd.VS_VAL, rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD,
      rpt_ventasytd.VS_QTY_EXP, rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_BUD_T, rpt_ventasytd.VS_BUD_QTY_T,
      rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_BUD_VAL_EXP]
    filters:
      rpt_ventasytd.Paises: México
      rpt_ventasytd.category: "-SUB America,-TOTAL USD"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T,
      rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.NATIONAL_QTY_MTD: 50
      rpt_ventasytd.category: 150
      rpt_ventasytd.VS_QTY: 50
      rpt_ventasytd.VS_BUD_QTY: 50
      rpt_ventasytd.NATIONAL_AMOUNT_MTD: 50
      rpt_ventasytd.VS_VAL: 50
      rpt_ventasytd.VS_BUD_VAL: 50
      rpt_ventasytd.EXPORT_QTY_MTD: 50
      rpt_ventasytd.VS_QTY_EXP: 50
      rpt_ventasytd.VS_BUD_QTY_EXP: 50
      rpt_ventasytd.VS_VAL_EXP: 50
      rpt_ventasytd.TOTAL_QTY: 50
      rpt_ventasytd._VS_YEAR_ANT_QTY_T: 50
      rpt_ventasytd.TOTAL_AMOUNT: 50
      rpt_ventasytd.VS_BUD_T: 50
      rpt_ventasytd.VS_BUD_QTY_T: 50
      rpt_ventasytd.EXPORT_AMOUNT_MTD: 50
      rpt_ventasytd.VS_BUD_VAL_EXP: 50
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 50
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category_orden]
    pinned_columns:
      rpt_ventasytd.category: left
    listen:
      Período: rpt_ventasytd.date_filter
    row: 9
    col: 0
    width: 24
    height: 15
  - title: YTD México
    name: YTD México
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category_orden, rpt_ventasytd.category, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR]
    filters:
      rpt_ventasytd.Paises: México
      rpt_ventasytd.stat_curr: MXN
      rpt_ventasytd.category: "-SUB America,-TOTAL USD"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 24
    col: 0
    width: 12
    height: 9
  - title: BUDGET YTD México
    name: BUDGET YTD México
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category_orden, rpt_ventasytd.category, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT,
      rpt_ventasytd.z_BUD_EXPORT_AMOUNT, rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventasytd.Paises: México
      rpt_ventasytd.stat_curr: MXN
      rpt_ventasytd.category: "-SUB America,-TOTAL USD"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT, rpt_ventasytd.z_BUD_EXPORT_AMOUNT,
      rpt_ventasytd.BUD_TOTAL_AMOUNT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 24
    col: 12
    width: 12
    height: 9
  - title: YTD USA
    name: YTD USA
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category_orden, rpt_ventasytd.category, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR]
    filters:
      rpt_ventasytd.Paises: USA
      rpt_ventasytd.stat_curr: MXN,USD
      rpt_ventasytd.category: "-SUB America,-TOTAL USD"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 39
    col: 0
    width: 12
    height: 4
  - title: BUDGET YTD USA
    name: BUDGET YTD USA
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category_orden, rpt_ventasytd.category, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT,
      rpt_ventasytd.z_BUD_EXPORT_AMOUNT, rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventasytd.Paises: USA
      rpt_ventasytd.stat_curr: MXN,USD
      rpt_ventasytd.category: "-TOTAL USD,-SUB America"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT, rpt_ventasytd.z_BUD_EXPORT_AMOUNT,
      rpt_ventasytd.BUD_TOTAL_AMOUNT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 39
    col: 12
    width: 12
    height: 4
  - title: USA
    name: USA
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category_orden, rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD,
      rpt_ventasytd.VS_QTY, rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD,
      rpt_ventasytd.VS_VAL, rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD,
      rpt_ventasytd.VS_QTY_EXP, rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_BUD_T, rpt_ventasytd.VS_BUD_QTY_T,
      rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_BUD_VAL_EXP]
    filters:
      rpt_ventasytd.Paises: USA
      rpt_ventasytd.stat_curr: MXN,USD
      rpt_ventasytd.category: "-TOTAL USD,-SUB America"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T,
      rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.NATIONAL_QTY_MTD: 50
      rpt_ventasytd.category: 150
      rpt_ventasytd.VS_QTY: 50
      rpt_ventasytd.VS_BUD_QTY: 50
      rpt_ventasytd.NATIONAL_AMOUNT_MTD: 50
      rpt_ventasytd.VS_VAL: 50
      rpt_ventasytd.VS_BUD_VAL: 50
      rpt_ventasytd.EXPORT_QTY_MTD: 50
      rpt_ventasytd.VS_QTY_EXP: 50
      rpt_ventasytd.VS_BUD_QTY_EXP: 50
      rpt_ventasytd.VS_VAL_EXP: 50
      rpt_ventasytd.TOTAL_QTY: 50
      rpt_ventasytd._VS_YEAR_ANT_QTY_T: 50
      rpt_ventasytd.TOTAL_AMOUNT: 50
      rpt_ventasytd.VS_BUD_T: 50
      rpt_ventasytd.VS_BUD_QTY_T: 50
      rpt_ventasytd.EXPORT_AMOUNT_MTD: 50
      rpt_ventasytd.VS_BUD_VAL_EXP: 50
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 50
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category_orden]
    pinned_columns:
      rpt_ventasytd.category: left
    listen:
      Período: rpt_ventasytd.date_filter
    row: 33
    col: 0
    width: 24
    height: 6
  - title: YTD Dinamarca
    name: YTD Dinamarca
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.category_orden_dinamarca, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR]
    filters:
      rpt_ventasytd.Paises: Dinamarca
      rpt_ventasytd.stat_curr: MXN,DKK
      rpt_ventasytd.category: "-TOTAL USD,-SUB Europa"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden_dinamarca]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden_dinamarca]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 55
    col: 0
    width: 12
    height: 7
  - title: BUDGET YTD Dinamarca
    name: BUDGET YTD Dinamarca
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT, rpt_ventasytd.z_BUD_EXPORT_AMOUNT,
      rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR, rpt_ventasytd.category_orden_dinamarca]
    filters:
      rpt_ventasytd.Paises: Dinamarca
      rpt_ventasytd.stat_curr: MXN,DKK
      rpt_ventasytd.category: "-TOTAL USD,-SUB Europa"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden_dinamarca]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT, rpt_ventasytd.z_BUD_EXPORT_AMOUNT,
      rpt_ventasytd.BUD_TOTAL_AMOUNT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden_dinamarca]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 55
    col: 12
    width: 12
    height: 7
  - title: Dinamarca
    name: Dinamarca
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.category_orden_dinamarca, rpt_ventasytd.NATIONAL_QTY_MTD,
      rpt_ventasytd.VS_QTY, rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD,
      rpt_ventasytd.VS_VAL, rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD,
      rpt_ventasytd.VS_QTY_EXP, rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_BUD_T, rpt_ventasytd.VS_BUD_QTY_T,
      rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_BUD_VAL_EXP]
    filters:
      rpt_ventasytd.Paises: Dinamarca
      rpt_ventasytd.stat_curr: MXN,DKK
      rpt_ventasytd.category: "-TOTAL USD,-SUB Europa"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden_dinamarca]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T,
      rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.NATIONAL_QTY_MTD: 50
      rpt_ventasytd.category: 150
      rpt_ventasytd.VS_QTY: 50
      rpt_ventasytd.VS_BUD_QTY: 50
      rpt_ventasytd.NATIONAL_AMOUNT_MTD: 50
      rpt_ventasytd.VS_VAL: 50
      rpt_ventasytd.VS_BUD_VAL: 50
      rpt_ventasytd.EXPORT_QTY_MTD: 50
      rpt_ventasytd.VS_QTY_EXP: 50
      rpt_ventasytd.VS_BUD_QTY_EXP: 50
      rpt_ventasytd.VS_VAL_EXP: 50
      rpt_ventasytd.TOTAL_QTY: 50
      rpt_ventasytd._VS_YEAR_ANT_QTY_T: 50
      rpt_ventasytd.TOTAL_AMOUNT: 50
      rpt_ventasytd.VS_BUD_T: 50
      rpt_ventasytd.VS_BUD_QTY_T: 50
      rpt_ventasytd.EXPORT_AMOUNT_MTD: 50
      rpt_ventasytd.VS_BUD_VAL_EXP: 50
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 50
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category_orden_dinamarca]
    pinned_columns:
      rpt_ventasytd.category: left
    listen:
      Período: rpt_ventasytd.date_filter
    row: 43
    col: 0
    width: 24
    height: 12
  - title: BUDGET YTD  Alemania
    name: BUDGET YTD  Alemania
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.category_orden, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT,
      rpt_ventasytd.z_BUD_EXPORT_AMOUNT, rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventasytd.Paises: Alemania
      rpt_ventasytd.stat_curr: MXN,EUR
      rpt_ventasytd.category: "-SUB Europa,-TOTAL USD"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.z_BUD_EXPORT_AMOUNT, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT,
      rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 68
    col: 12
    width: 12
    height: 4
  - title: YTD Alemania
    name: YTD Alemania
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.category_orden]
    filters:
      rpt_ventasytd.Paises: Alemania
      rpt_ventasytd.stat_curr: MXN,EUR
      rpt_ventasytd.category: "-SUB Europa,-TOTAL USD"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 68
    col: 0
    width: 12
    height: 4
  - title: Alemania
    name: Alemania
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.VS_VAL_EXP, rpt_ventasytd.TOTAL_QTY,
      rpt_ventasytd._VS_YEAR_ANT_QTY_T, rpt_ventasytd.VS_YEAR_ANT_VAL_T, rpt_ventasytd.TOTAL_AMOUNT,
      rpt_ventasytd.VS_BUD_T, rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.EXPORT_AMOUNT_MTD,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.category_orden]
    filters:
      rpt_ventasytd.Paises: Alemania
      rpt_ventasytd.stat_curr: MXN,EUR
      rpt_ventasytd.category: "-SUB Europa,-TOTAL USD"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T,
      rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.NATIONAL_QTY_MTD: 50
      rpt_ventasytd.category: 150
      rpt_ventasytd.VS_QTY: 50
      rpt_ventasytd.VS_BUD_QTY: 50
      rpt_ventasytd.NATIONAL_AMOUNT_MTD: 50
      rpt_ventasytd.VS_VAL: 50
      rpt_ventasytd.VS_BUD_VAL: 50
      rpt_ventasytd.EXPORT_QTY_MTD: 50
      rpt_ventasytd.VS_QTY_EXP: 50
      rpt_ventasytd.VS_BUD_QTY_EXP: 50
      rpt_ventasytd.VS_VAL_EXP: 50
      rpt_ventasytd.TOTAL_QTY: 50
      rpt_ventasytd._VS_YEAR_ANT_QTY_T: 50
      rpt_ventasytd.TOTAL_AMOUNT: 50
      rpt_ventasytd.VS_BUD_T: 50
      rpt_ventasytd.VS_BUD_QTY_T: 50
      rpt_ventasytd.EXPORT_AMOUNT_MTD: 50
      rpt_ventasytd.VS_BUD_VAL_EXP: 50
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 50
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category_orden]
    pinned_columns:
      rpt_ventasytd.category: left
    listen:
      Período: rpt_ventasytd.date_filter
    row: 62
    col: 0
    width: 24
    height: 6
  - title: BUDGET YTD Países Bajos
    name: BUDGET YTD Países Bajos
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.category_orden, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT,
      rpt_ventasytd.z_BUD_EXPORT_AMOUNT, rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventasytd.Paises: Holanda
      rpt_ventasytd.stat_curr: MXN,EUR
      rpt_ventasytd.category: "-SUB Europa,-TOTAL USD"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.z_BUD_EXPORT_AMOUNT, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT,
      rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 79
    col: 12
    width: 12
    height: 4
  - title: YTD Países Bajos
    name: YTD Países Bajos
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.category_orden]
    filters:
      rpt_ventasytd.Paises: Holanda
      rpt_ventasytd.stat_curr: MXN,EUR
      rpt_ventasytd.category: "-SUB Europa,-TOTAL USD"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 79
    col: 0
    width: 12
    height: 4
  - title: YTD Guatemala
    name: YTD Guatemala
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.category_orden]
    filters:
      rpt_ventasytd.Paises: Guatemala
      rpt_ventasytd.stat_curr: MXN,GTQ
      rpt_ventasytd.category: "-SUB America,-TOTAL USD"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventasytd.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 89
    col: 0
    width: 12
    height: 4
  - title: BUDGET YTD Guatemala
    name: BUDGET YTD Guatemala
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.category_orden, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT,
      rpt_ventasytd.z_BUD_EXPORT_AMOUNT, rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventasytd.Paises: Guatemala
      rpt_ventasytd.stat_curr: MXN,GTQ
      rpt_ventasytd.category: "-SUB America,-TOTAL USD"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
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
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.z_BUD_NATIONAL_AMOUNT, rpt_ventasytd.z_BUD_EXPORT_AMOUNT,
      rpt_ventasytd.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
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
    hidden_pivots: {}
    hidden_fields: [rpt_ventasytd.category_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 89
    col: 12
    width: 12
    height: 4
  - title: Países Bajos
    name: Países Bajos
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.VS_VAL_EXP, rpt_ventasytd.TOTAL_QTY,
      rpt_ventasytd._VS_YEAR_ANT_QTY_T, rpt_ventasytd.VS_YEAR_ANT_VAL_T, rpt_ventasytd.TOTAL_AMOUNT,
      rpt_ventasytd.VS_BUD_T, rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.EXPORT_AMOUNT_MTD,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.category_orden]
    filters:
      rpt_ventasytd.Paises: Holanda
      rpt_ventasytd.stat_curr: MXN,EUR
      rpt_ventasytd.category: "-SUB Europa,-TOTAL USD"
      rpt_ventasytd.sub_category: "-1"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T,
      rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.NATIONAL_QTY_MTD: 50
      rpt_ventasytd.category: 150
      rpt_ventasytd.VS_QTY: 50
      rpt_ventasytd.VS_BUD_QTY: 50
      rpt_ventasytd.NATIONAL_AMOUNT_MTD: 50
      rpt_ventasytd.VS_VAL: 50
      rpt_ventasytd.VS_BUD_VAL: 50
      rpt_ventasytd.EXPORT_QTY_MTD: 50
      rpt_ventasytd.VS_QTY_EXP: 50
      rpt_ventasytd.VS_BUD_QTY_EXP: 50
      rpt_ventasytd.VS_VAL_EXP: 50
      rpt_ventasytd.TOTAL_QTY: 50
      rpt_ventasytd._VS_YEAR_ANT_QTY_T: 50
      rpt_ventasytd.TOTAL_AMOUNT: 50
      rpt_ventasytd.VS_BUD_T: 50
      rpt_ventasytd.VS_BUD_QTY_T: 50
      rpt_ventasytd.EXPORT_AMOUNT_MTD: 50
      rpt_ventasytd.VS_BUD_VAL_EXP: 50
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 50
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category_orden]
    pinned_columns:
      rpt_ventasytd.category: left
    listen:
      Período: rpt_ventasytd.date_filter
    row: 72
    col: 0
    width: 24
    height: 7
  - title: Guatemala
    name: Guatemala
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.VS_VAL_EXP, rpt_ventasytd.TOTAL_QTY,
      rpt_ventasytd._VS_YEAR_ANT_QTY_T, rpt_ventasytd.VS_YEAR_ANT_VAL_T, rpt_ventasytd.TOTAL_AMOUNT,
      rpt_ventasytd.VS_BUD_T, rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.EXPORT_AMOUNT_MTD,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.category_orden]
    filters:
      rpt_ventasytd.Paises: Guatemala
      rpt_ventasytd.stat_curr: MXN,GTQ
      rpt_ventasytd.category: "-SUB America,-TOTAL USD"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T,
      rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.NATIONAL_QTY_MTD: 50
      rpt_ventasytd.category: 150
      rpt_ventasytd.VS_QTY: 50
      rpt_ventasytd.VS_BUD_QTY: 50
      rpt_ventasytd.NATIONAL_AMOUNT_MTD: 50
      rpt_ventasytd.VS_VAL: 50
      rpt_ventasytd.VS_BUD_VAL: 50
      rpt_ventasytd.EXPORT_QTY_MTD: 50
      rpt_ventasytd.VS_QTY_EXP: 50
      rpt_ventasytd.VS_BUD_QTY_EXP: 50
      rpt_ventasytd.VS_VAL_EXP: 50
      rpt_ventasytd.TOTAL_QTY: 50
      rpt_ventasytd._VS_YEAR_ANT_QTY_T: 50
      rpt_ventasytd.TOTAL_AMOUNT: 50
      rpt_ventasytd.VS_BUD_T: 50
      rpt_ventasytd.VS_BUD_QTY_T: 50
      rpt_ventasytd.EXPORT_AMOUNT_MTD: 50
      rpt_ventasytd.VS_BUD_VAL_EXP: 50
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 50
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category_orden]
    pinned_columns:
      rpt_ventasytd.category: left
    listen:
      Período: rpt_ventasytd.date_filter
    row: 83
    col: 0
    width: 24
    height: 6
  - title: YTD Total MXN
    name: YTD Total MXN
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.VS_VAL_EXP, rpt_ventasytd.TOTAL_QTY,
      rpt_ventasytd._VS_YEAR_ANT_QTY_T, rpt_ventasytd.VS_YEAR_ANT_VAL_T, rpt_ventasytd.TOTAL_AMOUNT,
      rpt_ventasytd.VS_BUD_T, rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.EXPORT_AMOUNT_MTD,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.category_orden]
    filters:
      rpt_ventasytd.category: TOTAL MXN,TOTAL USD
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T,
      rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.NATIONAL_QTY_MTD: 50
      rpt_ventasytd.category: 150
      rpt_ventasytd.VS_QTY: 50
      rpt_ventasytd.VS_BUD_QTY: 50
      rpt_ventasytd.NATIONAL_AMOUNT_MTD: 50
      rpt_ventasytd.VS_VAL: 50
      rpt_ventasytd.VS_BUD_VAL: 50
      rpt_ventasytd.EXPORT_QTY_MTD: 50
      rpt_ventasytd.VS_QTY_EXP: 50
      rpt_ventasytd.VS_BUD_QTY_EXP: 50
      rpt_ventasytd.VS_VAL_EXP: 50
      rpt_ventasytd.TOTAL_QTY: 50
      rpt_ventasytd._VS_YEAR_ANT_QTY_T: 50
      rpt_ventasytd.TOTAL_AMOUNT: 50
      rpt_ventasytd.VS_BUD_T: 50
      rpt_ventasytd.VS_BUD_QTY_T: 50
      rpt_ventasytd.EXPORT_AMOUNT_MTD: 50
      rpt_ventasytd.VS_BUD_VAL_EXP: 50
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 50
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category_orden]
    pinned_columns:
      rpt_ventasytd.category: left
    listen:
      Período: rpt_ventasytd.date_filter
    row: 99
    col: 0
    width: 24
    height: 3
  - title: RESUMEN
    name: RESUMEN
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category2_orden, rpt_ventasytd.category2, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T, rpt_ventasytd.TOTAL_AMOUNT]
    filters:
      rpt_ventasytd.category2: "-Guatemala (USD)"
      rpt_ventasytd.summary_flag: '1,2'
    sorts: [rpt_ventasytd.category2_orden]
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
    pinned_columns: {}
    column_order: [rpt_ventasytd.category2, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.TOTAL_AMOUNT: 100
      rpt_ventasytd.VS_BUD_T: 100
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 100
      rpt_ventasytd.category2: 191
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category2_orden]
    listen:
      Período: rpt_ventasytd.date_filter
    row: 0
    col: 7
    width: 9
    height: 9
  - title: Canadá
    name: Canadá
    model: envases-alg
    explore: rpt_ventasytd
    type: looker_grid
    fields: [rpt_ventasytd.category_orden, rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD,
      rpt_ventasytd.VS_QTY, rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD,
      rpt_ventasytd.VS_VAL, rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD,
      rpt_ventasytd.VS_QTY_EXP, rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_BUD_T, rpt_ventasytd.VS_BUD_QTY_T,
      rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_BUD_VAL_EXP]
    filters:
      rpt_ventasytd.Paises: Canadá
      rpt_ventasytd.stat_curr: MXN,CAD
      rpt_ventasytd.category: "-TOTAL USD,-SUB America"
    sorts: [rpt_ventasytd.category_orden]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '9'
    rows_font_size: '9'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [rpt_ventasytd.category, rpt_ventasytd.NATIONAL_QTY_MTD, rpt_ventasytd.VS_QTY,
      rpt_ventasytd.VS_BUD_QTY, rpt_ventasytd.NATIONAL_AMOUNT_MTD, rpt_ventasytd.VS_VAL,
      rpt_ventasytd.VS_BUD_VAL, rpt_ventasytd.EXPORT_QTY_MTD, rpt_ventasytd.VS_QTY_EXP,
      rpt_ventasytd.VS_BUD_QTY_EXP, rpt_ventasytd.EXPORT_AMOUNT_MTD, rpt_ventasytd.VS_VAL_EXP,
      rpt_ventasytd.VS_BUD_VAL_EXP, rpt_ventasytd.TOTAL_QTY, rpt_ventasytd._VS_YEAR_ANT_QTY_T,
      rpt_ventasytd.VS_BUD_QTY_T, rpt_ventasytd.TOTAL_AMOUNT, rpt_ventasytd.VS_YEAR_ANT_VAL_T,
      rpt_ventasytd.VS_BUD_T]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventasytd.stat_curr: Tipo de moneda
      rpt_ventasytd.UKURS: Tipo de Cambio
    series_column_widths:
      rpt_ventasytd.NATIONAL_QTY_MTD: 50
      rpt_ventasytd.category: 150
      rpt_ventasytd.VS_QTY: 50
      rpt_ventasytd.VS_BUD_QTY: 50
      rpt_ventasytd.NATIONAL_AMOUNT_MTD: 50
      rpt_ventasytd.VS_VAL: 50
      rpt_ventasytd.VS_BUD_VAL: 50
      rpt_ventasytd.EXPORT_QTY_MTD: 50
      rpt_ventasytd.VS_QTY_EXP: 50
      rpt_ventasytd.VS_BUD_QTY_EXP: 50
      rpt_ventasytd.VS_VAL_EXP: 50
      rpt_ventasytd.TOTAL_QTY: 50
      rpt_ventasytd._VS_YEAR_ANT_QTY_T: 50
      rpt_ventasytd.TOTAL_AMOUNT: 50
      rpt_ventasytd.VS_BUD_T: 50
      rpt_ventasytd.VS_BUD_QTY_T: 50
      rpt_ventasytd.EXPORT_AMOUNT_MTD: 50
      rpt_ventasytd.VS_BUD_VAL_EXP: 50
      rpt_ventasytd.VS_YEAR_ANT_VAL_T: 50
    series_cell_visualizations:
      rpt_ventasytd.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#5e2129"
    custom_color_enabled: true
    custom_color: "#5e2129"
    show_single_value_title: true
    single_value_title: Información act. hasta
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    hidden_fields: [rpt_ventasytd.category_orden]
    pinned_columns:
      rpt_ventasytd.category: left
    listen:
      Período: rpt_ventasytd.date_filter
    row: 93
    col: 0
    width: 24
    height: 6
  filters:
  - name: Período
    title: Período
    type: field_filter
    default_value: 2023/07/26
    allow_multiple_values: true
    required: true
    ui_config:
      type: day_picker
      display: inline
      options: []
    model: envases-alg
    explore: rpt_ventasytd
    listens_to_filters: []
    field: rpt_ventasytd.date_filter
