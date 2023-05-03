- dashboard: delivery_analysis
  title: "[DEMO] 딜리버리 통계 대시보드"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: ekkTZ1LMu07xv1EbHAqtY1
  elements:
  - type: button
    name: button_303
    rich_content_json: '{"text":"클릭 버튼 추가 예시","description":"","newTab":true,"alignment":"center","size":"small","style":"OUTLINED","color":"#62bad4"}'
    row: 23
    col: 0
    width: 24
    height: 1
  - title: "[D2] 전체 주문 수"
    name: "[D2] 전체 주문 수"
    model: ps2-youn-demo-2
    explore: call_delivery
    type: single_value
    fields: [call_delivery.total_calls_cnt]
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
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    single_value_title: 전체 주문 수
    defaults_version: 1
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 3
    col: 0
    width: 4
    height: 3
  - title: 업종별 전체 주문 수
    name: 업종별 전체 주문 수
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_pie
    fields: [call_delivery.total_calls_cnt, call_delivery.industry_item]
    sorts: [call_delivery.total_calls_cnt desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    start_angle: 0
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    series_labels:
      음식점-중국음식: 중국음식
      음식점-족발/보쌈전문: 족발보쌈
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 주문 수
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    series_types: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
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
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 3
    col: 18
    width: 6
    height: 7
  - title: 업종별 전체 주문 수
    name: 업종별 전체 주문 수 (2)
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_column
    fields: [call_delivery.addr_sigungu, call_delivery.total_calls_cnt, call_delivery.industry_item]
    pivots: [call_delivery.industry_item]
    sorts: [call_delivery.industry_item, call_delivery.total_calls_cnt desc 0]
    limit: 500
    column_limit: 50
    row_total: right
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    y_axes: [{label: '', orientation: left, series: [{axisId: call_delivery.total_calls_cnt,
            id: 음식점-족발/보쌈전문 - call_delivery.total_calls_cnt, name: 족발보쌈}, {axisId: call_delivery.total_calls_cnt,
            id: 음식점-중국음식 - call_delivery.total_calls_cnt, name: 중국음식}, {axisId: call_delivery.total_calls_cnt,
            id: 치킨 - call_delivery.total_calls_cnt, name: 치킨 - 배달주문정보 전체주문수}, {axisId: call_delivery.total_calls_cnt,
            id: 피자 - call_delivery.total_calls_cnt, name: 피자 - 배달주문정보 전체주문수}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: call_delivery.total_costs,
            id: 음식점-족발/보쌈전문 - call_delivery.total_costs, name: 음식점-족발/보쌈전문 - 배달주문정보
              전체매출}, {axisId: call_delivery.total_costs, id: 음식점-중국음식 - call_delivery.total_costs,
            name: 음식점-중국음식 - 배달주문정보 전체매출}, {axisId: call_delivery.total_costs, id: 치킨
              - call_delivery.total_costs, name: 치킨 - 배달주문정보 전체매출}, {axisId: call_delivery.total_costs,
            id: 피자 - call_delivery.total_costs, name: 피자 - 배달주문정보 전체매출}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      Row Total - call_delivery.total_calls_cnt: line
    series_colors:
      Row Total - call_delivery.total_calls_cnt: "#b3a0dd"
    series_labels:
      음식점-중국음식: 중국음식
      음식점-족발/보쌈전문: 족발보쌈
      Row Total - call_delivery.total_calls_cnt: 전체 주문 수
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    start_angle: 0
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 주문 수
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 16
    col: 0
    width: 12
    height: 7
  - title: 업종별 전체 매출
    name: 업종별 전체 매출
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_column
    fields: [call_delivery.addr_sigungu, call_delivery.industry_item, call_delivery.total_costs]
    pivots: [call_delivery.industry_item]
    sorts: [call_delivery.industry_item, call_delivery.total_costs desc 0]
    limit: 500
    column_limit: 50
    row_total: right
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      Row Total - call_delivery.total_costs: line
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 16
    col: 12
    width: 12
    height: 7
  - title: 서울 지역구별 주문 현황
    name: 서울 지역구별 주문 현황
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_grid
    fields: [call_delivery.addr_sigungu, call_delivery.industry_item, call_delivery.total_calls_cnt,
      call_delivery.total_costs]
    pivots: [call_delivery.industry_item]
    sorts: [call_delivery.industry_item, call_delivery.total_calls_cnt desc 0]
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    show_view_names: false
    show_row_numbers: true
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
    series_types: {}
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 10
    col: 0
    width: 24
    height: 6
  - title: "[D2] 전체 매출"
    name: "[D2] 전체 매출"
    model: ps2-youn-demo-2
    explore: call_delivery
    type: single_value
    fields: [call_delivery.total_costs]
    sorts: [call_delivery.total_costs desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    single_value_title: 전체 매출
    value_format: '#,##0,, "M"'
    comparison_label: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 3
    col: 4
    width: 4
    height: 3
  - title: 주문 수 TOP 5 지역구
    name: 주문 수 TOP 5 지역구
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_grid
    fields: [call_delivery.total_calls_cnt, call_delivery.addr_sigungu]
    sorts: [call_delivery.total_calls_cnt desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
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
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 6
    col: 0
    width: 4
    height: 4
  - title: 매출 TOP 5 지역구
    name: 매출 TOP 5 지역구
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_grid
    fields: [call_delivery.addr_sigungu, call_delivery.total_costs]
    sorts: [call_delivery.total_costs desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
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
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 6
    col: 4
    width: 4
    height: 4
  - title: 월별 전체 매출
    name: 월별 전체 매출
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_column
    fields: [call_delivery.total_costs, call_delivery.date_month]
    fill_fields: [call_delivery.date_month]
    sorts: [call_delivery.total_costs desc 0]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
      call_delivery.total_costs: "#82c2ca"
    x_axis_label_rotation: 300
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    defaults_version: 1
    hidden_pivots: {}
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 3
    col: 8
    width: 10
    height: 7
  - title: 기온별 주문 업종 매출
    name: 기온별 주문 업종 매출
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_column
    fields: [call_delivery.total_costs, seoul_weather.temperature_tier, call_delivery.industry_item]
    pivots: [call_delivery.industry_item]
    fill_fields: [seoul_weather.temperature_tier]
    sorts: [call_delivery.industry_item]
    limit: 500
    column_limit: 50
    row_total: right
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types:
      Row Total - call_delivery.total_costs: line
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
      call_delivery.total_costs: "#1f78b4"
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    defaults_version: 1
    hidden_pivots: {}
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 29
    col: 0
    width: 11
    height: 6
  - title: 강수량별 주문 업종 매출
    name: 강수량별 주문 업종 매출
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_column
    fields: [call_delivery.total_costs, call_delivery.industry_item, seoul_weather.rainfall_tier]
    pivots: [call_delivery.industry_item]
    fill_fields: [seoul_weather.rainfall_tier]
    sorts: [call_delivery.industry_item]
    limit: 500
    column_limit: 50
    row_total: right
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types:
      Row Total - call_delivery.total_costs: line
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
      call_delivery.total_costs: "#1f78b4"
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    defaults_version: 1
    hidden_pivots: {}
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 29
    col: 11
    width: 13
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"텍스트 입력 예시","bold":true,"color":"hsl(217,
      77%, 60%)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 35
    col: 0
    width: 24
    height: 2
  - title: 요일별 주문 업종 매출
    name: 요일별 주문 업종 매출
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_column
    fields: [call_delivery.day_index, call_delivery.day, call_delivery.total_costs,
      call_delivery.industry_item]
    pivots: [call_delivery.industry_item]
    sorts: [call_delivery.industry_item, call_delivery.day_index]
    limit: 500
    column_limit: 50
    row_total: right
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types:
      Row Total - call_delivery.total_costs: line
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
      call_delivery.total_costs: "#1f78b4"
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [call_delivery.day_index]
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 24
    col: 0
    width: 8
    height: 5
  - title: 주중/주말 매출 비율
    name: 주중/주말 매출 비율
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_pie
    fields: [call_delivery.is_weekend, call_delivery.average_costs]
    sorts: [call_delivery.average_costs desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
      call_delivery.total_costs: "#1f78b4"
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 24
    col: 8
    width: 4
    height: 5
  - title: 업종별 주말 매출
    name: 업종별 주말 매출
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_bar
    fields: [call_delivery.average_costs, call_delivery.industry_item]
    filters:
      call_delivery.is_weekend: 주말
    sorts: [call_delivery.average_costs desc 0]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
      call_delivery.total_costs: "#1f78b4"
      call_delivery.average_costs: "#90c8ae"
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 24
    col: 12
    width: 8
    height: 5
  - title: 업종별 주말 배출 비율
    name: 업종별 주말 배출 비율
    model: ps2-youn-demo-2
    explore: call_delivery
    type: looker_pie
    fields: [call_delivery.average_costs, call_delivery.industry_item]
    filters:
      call_delivery.is_weekend: 주말
    sorts: [call_delivery.average_costs desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      Row Total - call_delivery.total_costs: "#b3a0dd"
      call_delivery.total_costs: "#1f78b4"
      call_delivery.average_costs: "#90c8ae"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", call_delivery.addr_sigungu, 음식점-중국음식_call_delivery.total_calls_cnt,
      음식점-중국음식_call_delivery.total_costs, 치킨_call_delivery.total_calls_cnt, 치킨_call_delivery.total_costs,
      피자_call_delivery.total_calls_cnt, 피자_call_delivery.total_costs, 음식점-족발/보쌈전문_call_delivery.total_calls_cnt,
      음식점-족발/보쌈전문_call_delivery.total_costs]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_column_widths:
      call_delivery.addr_sigungu: 86
    series_cell_visualizations:
      call_delivery.total_calls_cnt:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 전체 매출
    value_format: ''
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: ''
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      주문날짜 Year: call_delivery.date_year
    row: 24
    col: 20
    width: 4
    height: 5
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"## Comments"}],"id":1682664107049},{"type":"ul","children":[{"type":"li","children":[{"type":"lic","children":[{"text":"원본
      공용 데이터세트: stf-developmnet.looker_demo\n2018년 SKT 서울시 배달주문 정보, 2018 서울 날씨정보,
      2018 서울 인구정보, 2018 서울 가구정보"}],"id":1682639680572}],"id":1682639682405}],"id":1682664107049}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: 주문날짜 Year
    title: 주문날짜 Year
    type: field_filter
    default_value: '2018'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ps2-youn-demo-2
    explore: call_delivery
    listens_to_filters: []
    field: call_delivery.date_year
