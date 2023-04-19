# The name of this view in Looker is "Call Delivery"
view: call_delivery {
  label: "배달주문정보"
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_demo.call_delivery`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Addr Dong" in Explore.

  dimension: addr_sido {
    label: "시도"
    type: string
    sql: ${TABLE}.addr_sido ;;
  }

  dimension: addr_sigungu {
    label: "시군구"
    type: string
    sql: ${TABLE}.addr_sigungu ;;
  }

  dimension: addr_dong {
    label: "동면읍"
    type: string
    sql: ${TABLE}.addr_dong ;;
  }

  dimension_group: date {
    label: "주문날짜"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: day {
    label: "요일"
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: day_index {
    label: "요일인덱스"
    type: number
    sql: CASE
      WHEN ${TABLE}.day = '월' THEN 1
      WHEN ${TABLE}.day = '화' THEN 2
      WHEN ${TABLE}.day = '수' THEN 3
      WHEN ${TABLE}.day = '목' THEN 4
      WHEN ${TABLE}.day = '금' THEN 5
      WHEN ${TABLE}.day = '토' THEN 6
      WHEN ${TABLE}.day = '일' THEN 7
      ELSE 0
    END ;;
  }

  dimension: is_weekend {
    label: "주중주말"
    type: string
    sql: CASE
      WHEN ${TABLE}.day IN ('월', '화', '수', '목', '금') THEN "주중"
      WHEN ${TABLE}.day IN ('토', '일') THEN "주말"
      ELSE ""
    END ;;
  }

  dimension: time_tier {
    label: "시간대"
    type: string
    sql: ${TABLE}.time_tier ;;
  }

  dimension: industry_item {
    label: "업종"
    type: string
    sql: ${TABLE}.industry_item ;;
  }

  dimension: call_cnt{
    label: "주문수"
    type: number
    sql: ${TABLE}.call_cnt ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  # measure: count {
  #   type: count
  #   drill_fields: []
  # }

  measure: total_calls_cnt{
    label: "전체주문수"
    type: sum
    sql: ${call_cnt} ;;
  }

  measure: average_calls_cnt {
    label: "평균주문수"
    type: average
    sql: ${call_cnt} ;;
  }

  measure: total_costs {
    label: "전체매출"
    type: sum
    sql: CASE
      WHEN  ${TABLE}.industry_item = '치킨' THEN ${TABLE}.call_cnt * 18000
      WHEN  ${TABLE}.industry_item = '피자' THEN ${TABLE}.call_cnt * 23000
      WHEN  ${TABLE}.industry_item = '음식점-중국음식' THEN ${TABLE}.call_cnt * 15000
      WHEN  ${TABLE}.industry_item = '음식점-족발/보쌈전문' THEN ${TABLE}.call_cnt * 30000
      ELSE ${TABLE}.call_cnt * 20000
    END ;;
  }
}
