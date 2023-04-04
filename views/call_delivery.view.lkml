# The name of this view in Looker is "Call Delivery"
view: call_delivery {
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
    type: string
    sql: ${TABLE}.addr_sido ;;
  }

  dimension: addr_sigungu {
    type: string
    sql: ${TABLE}.addr_sigungu ;;
  }

  dimension: addr_dong {
    type: string
    sql: ${TABLE}.addr_dong ;;
  }

  dimension_group: date {
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
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: time_tier {
    type: string
    sql: ${TABLE}.time_tier ;;
  }

  dimension: industry_item {
    type: string
    sql: ${TABLE}.industry_item ;;
  }

  dimension: call_cnt{
    type: number
    sql: ${TABLE}.call_cnt ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_calls_cnt{
    type: sum
    sql: ${call_cnt} ;;
  }

  measure: average_calls_cnt {
    type: average
    sql: ${call_cnt} ;;
  }

  measure: total_calls_china {
    type: sum
    sql: CASE WHEN  ${TABLE}.industry_item = '음식점-중국음식' THEN ${TABLE}.call_cnt ELSE 0 END ;;
  }

  measure: total_calls_chicken {
    type:sum
    sql: CASE WHEN  ${TABLE}.industry_item = '치킨' THEN ${TABLE}.call_cnt ELSE 0 END ;;
  }

  measure: total_calls_pizza {
    type: sum
    sql: CASE WHEN  ${TABLE}.industry_item = '피자' THEN ${TABLE}.call_cnt ELSE 0 END ;;
  }

  measure: total_calls_pork {
    type: sum
    sql: CASE WHEN  ${TABLE}.industry_item = '음식점-족발/보쌈전문' THEN ${TABLE}.call_cnt ELSE 0 END ;;
  }
}
