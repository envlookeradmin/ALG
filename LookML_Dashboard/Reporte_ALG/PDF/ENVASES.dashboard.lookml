---
- dashboard: envases
  title: ENVASES
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: KfkoMN6wGWuS4f5sEZxCaQ
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
      \ bold;\" href=\"https://envases.cloud.looker.com/dashboards/9\">Envases MTD</a>\n\
      \t\t<a style=\"color: #efefef; padding: 5px 15px; float: left; line-height:\
      \ 40px; font-weight: bold;\" href=\"https://envases.cloud.looker.com/dashboards/11\"\
      >Envases YTD</a>\n\t\t\n\t</nav>\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Divisas
    name: Divisas
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.stat_curr, rpt_ventas.UKURS]
    filters:
      rpt_ventas.UKURS: ">0"
    sorts: [rpt_ventas.UKURS]
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
    header_text_alignment: center
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
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_column_widths:
      rpt_ventas.stat_curr: 150
      rpt_ventas.UKURS: 150
    series_text_format:
      rpt_ventas.UKURS:
        align: right
    header_font_color: "#FFF"
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
      Período: rpt_ventas.date_filter
    row: 2
    col: 0
    width: 6
    height: 4
  - title: Fecha_del_dia
    name: Fecha_del_dia
    model: envases-alg
    explore: rpt_ventas
    type: single_value
    fields: [rpt_ventas.fecha]
    filters: {}
    sorts: [rpt_ventas.fecha]
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
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    table_theme: white
    limit_displayed_rows: false
    header_font_color: "#FFF"
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
      Período: rpt_ventas.date_filter
    row: 2
    col: 19
    width: 5
    height: 2
  - title: Información act hasta
    name: Información act hasta
    model: envases-alg
    explore: rpt_ventas
    type: single_value
    fields: [rpt_ventas.ult_act]
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
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    table_theme: white
    limit_displayed_rows: false
    header_font_color: "#FFF"
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
      Período: rpt_ventas.date_filter
    row: 4
    col: 19
    width: 5
    height: 2
  - title: México
    name: México
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD,
      rpt_ventas.VS_QTY, rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL,
      rpt_ventas.VS_BUD_VAL, rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    filters:
      rpt_ventas.Paises: México
    sorts: [rpt_ventas.category_orden]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_column_widths:
      rpt_ventas.category: 150
      rpt_ventas.NATIONAL_QTY_MTD: 50
      rpt_ventas.VS_QTY: 50
      rpt_ventas.VS_BUD_QTY: 50
      rpt_ventas.NATIONAL_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL: 50
      rpt_ventas.VS_BUD_VAL: 50
      rpt_ventas.VS_QTY_EXP: 50
      rpt_ventas.VS_BUD_QTY_EXP: 50
      rpt_ventas.EXPORT_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL_EXP: 50
      rpt_ventas.TOTAL_QTY: 50
      rpt_ventas._VS_YEAR_ANT_QTY_T: 50
      rpt_ventas.VS_BUD_QTY_T: 50
      rpt_ventas.TOTAL_AMOUNT: 50
      rpt_ventas.VS_YEAR_ANT_VAL_T: 50
      rpt_ventas.VS_BUD_T: 50
      rpt_ventas.VS_BUD_VAL_EXP: 50
      rpt_ventas.EXPORT_QTY_MTD: 50
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD, rpt_ventas.VS_QTY,
      rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL, rpt_ventas.VS_BUD_VAL,
      rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    listen:
      Período: rpt_ventas.date_filter
    row: 6
    col: 0
    width: 24
    height: 14
  - title: USA
    name: USA
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD,
      rpt_ventas.VS_QTY, rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL,
      rpt_ventas.VS_BUD_VAL, rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    filters:
      rpt_ventas.Paises: USA
    sorts: [rpt_ventas.category_orden]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_column_widths:
      rpt_ventas.category: 150
      rpt_ventas.NATIONAL_QTY_MTD: 50
      rpt_ventas.VS_QTY: 50
      rpt_ventas.VS_BUD_QTY: 50
      rpt_ventas.NATIONAL_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL: 50
      rpt_ventas.VS_BUD_VAL: 50
      rpt_ventas.VS_QTY_EXP: 50
      rpt_ventas.VS_BUD_QTY_EXP: 50
      rpt_ventas.EXPORT_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL_EXP: 50
      rpt_ventas.TOTAL_QTY: 50
      rpt_ventas._VS_YEAR_ANT_QTY_T: 50
      rpt_ventas.VS_BUD_QTY_T: 50
      rpt_ventas.TOTAL_AMOUNT: 50
      rpt_ventas.VS_YEAR_ANT_VAL_T: 50
      rpt_ventas.VS_BUD_T: 50
      rpt_ventas.VS_BUD_VAL_EXP: 50
      rpt_ventas.EXPORT_QTY_MTD: 50
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD, rpt_ventas.VS_QTY,
      rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL, rpt_ventas.VS_BUD_VAL,
      rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    listen:
      Período: rpt_ventas.date_filter
    row: 29
    col: 0
    width: 24
    height: 4
  - title: Dinamarca
    name: Dinamarca
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden_dinamarca, rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD,
      rpt_ventas.VS_QTY, rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL,
      rpt_ventas.VS_BUD_VAL, rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    filters:
      rpt_ventas.Paises: Dinamarca
    sorts: [rpt_ventas.category_orden_dinamarca]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_column_widths:
      rpt_ventas.category: 150
      rpt_ventas.NATIONAL_QTY_MTD: 50
      rpt_ventas.VS_QTY: 50
      rpt_ventas.VS_BUD_QTY: 50
      rpt_ventas.NATIONAL_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL: 50
      rpt_ventas.VS_BUD_VAL: 50
      rpt_ventas.VS_QTY_EXP: 50
      rpt_ventas.VS_BUD_QTY_EXP: 50
      rpt_ventas.EXPORT_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL_EXP: 50
      rpt_ventas.TOTAL_QTY: 50
      rpt_ventas._VS_YEAR_ANT_QTY_T: 50
      rpt_ventas.VS_BUD_QTY_T: 50
      rpt_ventas.TOTAL_AMOUNT: 50
      rpt_ventas.VS_YEAR_ANT_VAL_T: 50
      rpt_ventas.VS_BUD_T: 50
      rpt_ventas.VS_BUD_VAL_EXP: 50
      rpt_ventas.EXPORT_QTY_MTD: 50
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden_dinamarca]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD, rpt_ventas.VS_QTY,
      rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL, rpt_ventas.VS_BUD_VAL,
      rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    listen:
      Período: rpt_ventas.date_filter
    row: 36
    col: 0
    width: 24
    height: 10
  - title: Holanda
    name: Holanda
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD,
      rpt_ventas.VS_QTY, rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL,
      rpt_ventas.VS_BUD_VAL, rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    filters:
      rpt_ventas.Paises: Holanda
    sorts: [rpt_ventas.category_orden]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_column_widths:
      rpt_ventas.category: 150
      rpt_ventas.NATIONAL_QTY_MTD: 50
      rpt_ventas.VS_QTY: 50
      rpt_ventas.VS_BUD_QTY: 50
      rpt_ventas.NATIONAL_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL: 50
      rpt_ventas.VS_BUD_VAL: 50
      rpt_ventas.VS_QTY_EXP: 50
      rpt_ventas.VS_BUD_QTY_EXP: 50
      rpt_ventas.EXPORT_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL_EXP: 50
      rpt_ventas.TOTAL_QTY: 50
      rpt_ventas._VS_YEAR_ANT_QTY_T: 50
      rpt_ventas.VS_BUD_QTY_T: 50
      rpt_ventas.TOTAL_AMOUNT: 50
      rpt_ventas.VS_YEAR_ANT_VAL_T: 50
      rpt_ventas.VS_BUD_T: 50
      rpt_ventas.VS_BUD_VAL_EXP: 50
      rpt_ventas.EXPORT_QTY_MTD: 50
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    listen:
      Período: rpt_ventas.date_filter
    row: 62
    col: 0
    width: 24
    height: 5
  - title: Guatemala
    name: Guatemala
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD,
      rpt_ventas.VS_QTY, rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL,
      rpt_ventas.VS_BUD_VAL, rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    filters:
      rpt_ventas.Paises: Guatemala
      rpt_ventas.stat_curr: MXN,GTQ
    sorts: [rpt_ventas.category_orden]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_column_widths:
      rpt_ventas.category: 150
      rpt_ventas.NATIONAL_QTY_MTD: 50
      rpt_ventas.VS_QTY: 50
      rpt_ventas.VS_BUD_QTY: 50
      rpt_ventas.NATIONAL_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL: 50
      rpt_ventas.VS_BUD_VAL: 50
      rpt_ventas.VS_QTY_EXP: 50
      rpt_ventas.VS_BUD_QTY_EXP: 50
      rpt_ventas.EXPORT_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL_EXP: 50
      rpt_ventas.TOTAL_QTY: 50
      rpt_ventas._VS_YEAR_ANT_QTY_T: 50
      rpt_ventas.VS_BUD_QTY_T: 50
      rpt_ventas.TOTAL_AMOUNT: 50
      rpt_ventas.VS_YEAR_ANT_VAL_T: 50
      rpt_ventas.VS_BUD_T: 50
      rpt_ventas.VS_BUD_VAL_EXP: 50
      rpt_ventas.EXPORT_QTY_MTD: 50
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    listen:
      Período: rpt_ventas.date_filter
    row: 71
    col: 0
    width: 24
    height: 6
  - title: Alemania
    name: Alemania
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD,
      rpt_ventas.VS_QTY, rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL,
      rpt_ventas.VS_BUD_VAL, rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    filters:
      rpt_ventas.Paises: Alemania
    sorts: [rpt_ventas.category_orden]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_column_widths:
      rpt_ventas.category: 150
      rpt_ventas.NATIONAL_QTY_MTD: 50
      rpt_ventas.VS_QTY: 50
      rpt_ventas.VS_BUD_QTY: 50
      rpt_ventas.NATIONAL_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL: 50
      rpt_ventas.VS_BUD_VAL: 50
      rpt_ventas.VS_QTY_EXP: 50
      rpt_ventas.VS_BUD_QTY_EXP: 50
      rpt_ventas.EXPORT_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL_EXP: 50
      rpt_ventas.TOTAL_QTY: 50
      rpt_ventas._VS_YEAR_ANT_QTY_T: 50
      rpt_ventas.VS_BUD_QTY_T: 50
      rpt_ventas.TOTAL_AMOUNT: 50
      rpt_ventas.VS_YEAR_ANT_VAL_T: 50
      rpt_ventas.VS_BUD_T: 50
      rpt_ventas.VS_BUD_VAL_EXP: 50
      rpt_ventas.EXPORT_QTY_MTD: 50
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD, rpt_ventas.VS_QTY,
      rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL, rpt_ventas.VS_BUD_VAL,
      rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    listen:
      Período: rpt_ventas.date_filter
    row: 53
    col: 0
    width: 24
    height: 5
  - title: MTD Total MXN
    name: MTD Total MXN
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_QTY_MTD,
      rpt_ventas.VS_QTY, rpt_ventas.VS_BUD_QTY, rpt_ventas.NATIONAL_AMOUNT_MTD, rpt_ventas.VS_VAL,
      rpt_ventas.VS_BUD_VAL, rpt_ventas.EXPORT_QTY_MTD, rpt_ventas.VS_QTY_EXP, rpt_ventas.VS_BUD_QTY_EXP,
      rpt_ventas.EXPORT_AMOUNT_MTD, rpt_ventas.VS_VAL_EXP, rpt_ventas.VS_BUD_VAL_EXP,
      rpt_ventas.TOTAL_QTY, rpt_ventas._VS_YEAR_ANT_QTY_T, rpt_ventas.VS_BUD_QTY_T,
      rpt_ventas.TOTAL_AMOUNT, rpt_ventas.VS_YEAR_ANT_VAL_T, rpt_ventas.VS_BUD_T]
    filters:
      rpt_ventas.Paises: ''
      rpt_ventas.category: TOTAL MXN
    sorts: [rpt_ventas.category_orden]
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width:
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_column_widths:
      rpt_ventas.category: 150
      rpt_ventas.NATIONAL_QTY_MTD: 50
      rpt_ventas.VS_QTY: 50
      rpt_ventas.VS_BUD_QTY: 50
      rpt_ventas.NATIONAL_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL: 50
      rpt_ventas.VS_BUD_VAL: 50
      rpt_ventas.VS_QTY_EXP: 50
      rpt_ventas.VS_BUD_QTY_EXP: 50
      rpt_ventas.EXPORT_AMOUNT_MTD: 50
      rpt_ventas.VS_VAL_EXP: 50
      rpt_ventas.TOTAL_QTY: 50
      rpt_ventas._VS_YEAR_ANT_QTY_T: 50
      rpt_ventas.VS_BUD_QTY_T: 50
      rpt_ventas.TOTAL_AMOUNT: 50
      rpt_ventas.VS_YEAR_ANT_VAL_T: 50
      rpt_ventas.VS_BUD_T: 50
      rpt_ventas.VS_BUD_VAL_EXP: 50
      rpt_ventas.EXPORT_QTY_MTD: 50
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    listen:
      Período: rpt_ventas.date_filter
    row: 81
    col: 0
    width: 24
    height: 3
  - title: MTD México
    name: MTD México
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    filters:
      rpt_ventas.Paises: México
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 20
    col: 0
    width: 12
    height: 9
  - title: BUDGET MTD México
    name: BUDGET MTD México
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT,
      rpt_ventas.z_BUD_EXPORT_AMOUNT, rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventas.Paises: México
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT, rpt_ventas.z_BUD_EXPORT_AMOUNT,
      rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 20
    col: 12
    width: 12
    height: 9
  - title: BUDGET MTD US
    name: BUDGET MTD US
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT,
      rpt_ventas.z_BUD_EXPORT_AMOUNT, rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventas.Paises: USA
      rpt_ventas.stat_curr: USD,MXN
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT, rpt_ventas.z_BUD_EXPORT_AMOUNT,
      rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 33
    col: 12
    width: 12
    height: 3
  - title: MTD USA
    name: MTD USA
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    filters:
      rpt_ventas.Paises: USA
      rpt_ventas.stat_curr: MXN,USD
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 33
    col: 0
    width: 12
    height: 3
  - title: MTD Dinamarca
    name: MTD Dinamarca
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    filters:
      rpt_ventas.Paises: Dinamarca
      rpt_ventas.stat_curr: MXN,DKK
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 46
    col: 0
    width: 12
    height: 7
  - title: BUDGET MTD Dinamarca
    name: BUDGET MTD Dinamarca
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT,
      rpt_ventas.z_BUD_EXPORT_AMOUNT, rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventas.Paises: Dinamarca
      rpt_ventas.stat_curr: MXN,DKK
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT, rpt_ventas.z_BUD_EXPORT_AMOUNT,
      rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 46
    col: 12
    width: 12
    height: 7
  - title: BUDGET MTD  Alemania
    name: BUDGET MTD  Alemania
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT,
      rpt_ventas.z_BUD_EXPORT_AMOUNT, rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventas.Paises: Alemania
      rpt_ventas.stat_curr: MXN,EUR
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT, rpt_ventas.z_BUD_EXPORT_AMOUNT,
      rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 58
    col: 12
    width: 12
    height: 4
  - title: MTD Alemania
    name: MTD Alemania
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    filters:
      rpt_ventas.Paises: Alemania
      rpt_ventas.stat_curr: MXN,EUR
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 58
    col: 0
    width: 12
    height: 4
  - title: MTD Holanda
    name: MTD Holanda
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    filters:
      rpt_ventas.Paises: Holanda
      rpt_ventas.stat_curr: MXN,EUR
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 67
    col: 0
    width: 12
    height: 4
  - title: BUDGET MTD Holanda
    name: BUDGET MTD Holanda
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT,
      rpt_ventas.z_BUD_EXPORT_AMOUNT, rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventas.Paises: Holanda
      rpt_ventas.stat_curr: MXN,EUR
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT, rpt_ventas.z_BUD_EXPORT_AMOUNT,
      rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 67
    col: 12
    width: 12
    height: 4
  - title: MTD Guatemala
    name: MTD Guatemala
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    filters:
      rpt_ventas.Paises: Guatemala
      rpt_ventas.stat_curr: MXN,GTQ
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,
      rpt_ventas.EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR, rpt_ventas.TOTAL_AMOUNT_YEAR_ANT]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 77
    col: 0
    width: 12
    height: 4
  - title: BUDGET MTD Guatemala
    name: BUDGET MTD Guatemala
    model: envases-alg
    explore: rpt_ventas
    type: looker_grid
    fields: [rpt_ventas.category_orden, rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT,
      rpt_ventas.z_BUD_EXPORT_AMOUNT, rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    filters:
      rpt_ventas.Paises: Guatemala
      rpt_ventas.stat_curr: MXN,GTQ
    sorts: [rpt_ventas.category_orden]
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
    show_sql_query_menu_options: false
    column_order: [rpt_ventas.category, rpt_ventas.z_BUD_NATIONAL_AMOUNT, rpt_ventas.z_BUD_EXPORT_AMOUNT,
      rpt_ventas.BUD_TOTAL_AMOUNT_YEAR]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rpt_ventas.UKURS: Tipo de Cambio
      rpt_ventas.stat_curr: Tipo de moneda
    series_cell_visualizations:
      rpt_ventas.NATIONAL_QTY_MTD:
        is_active: false
    header_font_color: "#FFF"
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
    hidden_fields: [rpt_ventas.category_orden]
    hidden_pivots: {}
    pinned_columns:
      rpt_ventas.category: left
    listen:
      Período: rpt_ventas.date_filter
    row: 77
    col: 12
    width: 12
    height: 4
  filters:
  - name: Período
    title: Período
    type: field_filter
    default_value: last day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: envases-alg
    explore: rpt_ventas
    listens_to_filters: []
    field: rpt_ventas.date_filter
