- dashboard: auteco_poc
  title: Auteco Poc
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OYC4KTLLOTrnp0vxhBYNFi
  elements:
  - title: Auteco Poc
    name: Auteco Poc
    model: auteco_1
    explore: auteco_poc
    type: looker_line
    fields: [auteco_poc.promedio_precio, auteco_poc.date, auteco_poc.empresa]
    pivots: [auteco_poc.empresa]
    filters: {}
    sorts: [auteco_poc.empresa, auteco_poc.date]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Subcategoria: auteco_poc.subcategoria
      Segmento: auteco_poc.segmento
      Subsegmento: auteco_poc.subsegmento
      Empresa: auteco_poc.empresa
      Fecha: auteco_poc.date_granularity
      Linea: auteco_poc.linea
    row: 0
    col: 7
    width: 17
    height: 7
  - title: New Tile
    name: New Tile
    model: auteco_1
    explore: auteco_poc
    type: single_value
    fields: [auteco_poc.empresa_imagen]
    sorts: [auteco_poc.empresa_imagen]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#fdfffc"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    series_types: {}
    listen:
      Subcategoria: auteco_poc.subcategoria
      Segmento: auteco_poc.segmento
      Subsegmento: auteco_poc.subsegmento
      Empresa: auteco_poc.empresa
      Fecha: auteco_poc.date_granularity
      Linea: auteco_poc.linea
    row: 3
    col: 0
    width: 7
    height: 3
  - title: etiqueta
    name: etiqueta
    model: auteco_1
    explore: auteco_poc
    type: single_value
    fields: [auteco_poc.promedio_precio, auteco_poc.empresa, auteco_poc.date]
    filters: {}
    sorts: [auteco_poc.date desc]
    limit: 3
    column_limit: 50
    dynamic_fields: [{args: [auteco_poc.promedio_precio], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: auteco_poc.promedio_precio, label: Percent
          change from previous - Auteco Poc Promedio Precio, source_field: auteco_poc.promedio_precio,
        table_calculation: percent_change_from_previous_auteco_poc_promedio_precio,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    value_format: PriceDeltaMonth
    comparison_label: PriceDeltaMonth
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    series_types: {}
    hidden_fields: [auteco_poc.date]
    hidden_pivots: {}
    listen:
      Subcategoria: auteco_poc.subcategoria
      Segmento: auteco_poc.segmento
      Subsegmento: auteco_poc.subsegmento
      Empresa: auteco_poc.empresa
      Fecha: auteco_poc.date_granularity
      Linea: auteco_poc.linea
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Unidades
    name: Unidades
    model: auteco_1
    explore: auteco_poc
    type: looker_pie
    fields: [unidades, auteco_poc.empresa_link]
    sorts: [porcentaje_de_unidades desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, expression: !!null '', label: unidades, value_format: !!null '',
        value_format_name: !!null '', based_on: auteco_poc.cantidad, _kind_hint: measure,
        measure: unidades, type: sum, _type_hint: number}, {category: table_calculation,
        label: Porcentaje de unidades, value_format: !!null '', value_format_name: percent_2,
        calculation_type: percent_of_column_sum, table_calculation: porcentaje_de_unidades,
        args: [unidades], _kind_hint: measure, _type_hint: number}, {args: [unidades],
        calculation_type: rank_of_column, category: table_calculation, based_on: unidades,
        label: Rank of  unidades, source_field: unidades, table_calculation: rank_of_unidades,
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors: {}
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_unidades,
            id: percent_of_unidades, name: Percent of  unidades}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Empresas
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [porcentaje_de_unidades]
    listen:
      Subcategoria: auteco_poc.subcategoria
      Segmento: auteco_poc.segmento
      Subsegmento: auteco_poc.subsegmento
      Fecha: auteco_poc.date_granularity
      Linea: auteco_poc.linea
    row: 7
    col: 0
    width: 10
    height: 6
  - title: Promedio Precio
    name: Promedio Precio
    model: auteco_1
    explore: auteco_poc
    type: looker_column
    fields: [auteco_poc.promedio_precio, auteco_poc.empresa_link]
    sorts: [auteco_poc.promedio_precio desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: measure, expression: !!null '', label: unidades, value_format: !!null '',
        value_format_name: !!null '', based_on: auteco_poc.cantidad, _kind_hint: measure,
        measure: unidades, type: sum, _type_hint: number}, {category: table_calculation,
        label: Precio, value_format: !!null '', value_format_name: percent_2, calculation_type: percent_of_column_sum,
        table_calculation: precio, args: [auteco_poc.promedio_precio], _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: auteco_poc.promedio_precio,
            id: auteco_poc.promedio_precio, name: Promedio Precio}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Empresas
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '10'
    label_value_format: "$#'#00000"
    series_types: {}
    series_colors:
      auteco_poc.promedio_precio: "#1A73E8"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    hidden_fields:
    listen:
      Subcategoria: auteco_poc.subcategoria
      Segmento: auteco_poc.segmento
      Subsegmento: auteco_poc.subsegmento
      Empresa: auteco_poc.empresa
      Fecha: auteco_poc.date_granularity
      Linea: auteco_poc.linea
    row: 7
    col: 10
    width: 14
    height: 6
  - type: button
    name: button_105
    rich_content_json: '{"text":"Variación Porcentual","description":"","newTab":false,"alignment":"center","size":"small","style":"FILLED","color":"#079c98","href":"https://politecnicograncolombiano.cloud.looker.com/dashboards/25?Mes=&A%C3%B1o=&Linea=200+DUKE%2C1290+SUPER+ADVENTURE+R"}'
    row: 6
    col: 0
    width: 4
    height: 1
  - type: button
    name: button_120
    rich_content_json: '{"text":"Relación","description":"","newTab":false,"alignment":"center","size":"small","style":"FILLED","color":"#079c98","href":"https://politecnicograncolombiano.cloud.looker.com/dashboards/26?Anio=&Segmento=&Fecha+Month+Name=&Subsegmento=&Subcategoria=&Linea="}'
    row: 6
    col: 4
    width: 3
    height: 1
  filters:
  - name: Fecha
    title: Fecha
    type: field_filter
    default_value: month
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: auteco_1
    explore: auteco_poc
    listens_to_filters: []
    field: auteco_poc.date_granularity
  - name: Empresa
    title: Empresa
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: auteco_1
    explore: auteco_poc
    listens_to_filters: [Subcategoria]
    field: auteco_poc.empresa
  - name: Subcategoria
    title: Subcategoria
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: auteco_1
    explore: auteco_poc
    listens_to_filters: [Empresa]
    field: auteco_poc.subcategoria
  - name: Segmento
    title: Segmento
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: auteco_1
    explore: auteco_poc
    listens_to_filters: [Empresa, Subcategoria]
    field: auteco_poc.segmento
  - name: Subsegmento
    title: Subsegmento
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: auteco_1
    explore: auteco_poc
    listens_to_filters: [Empresa, Subcategoria, Segmento]
    field: auteco_poc.subsegmento
  - name: Linea
    title: Linea
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: auteco_1
    explore: auteco_poc
    listens_to_filters: [Empresa, Subcategoria, Segmento, Subsegmento]
    field: auteco_poc.linea
