# The name of this view in Looker is "Seoul Households"
view: seoul_households {
  label: "서울가구정보"
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_demo.seoul_households`
    ;;

  dimension: year {
    label: "년도"
    type: string
    sql: ${TABLE}.year ;;
  }

  dimension: sido {
    label: "시도"
    type: string
    sql: ${TABLE}.sido ;;
  }

  dimension: gungu {
    label: "시군구"
    type: string
    sql: ${TABLE}.gungu ;;
  }

  dimension: dongmyeon {
    label: "동면읍"
    type: string
    sql: ${TABLE}.dongmyeon ;;
  }

  dimension: total_households {
    label: "전체가구수"
    type: number
    sql: ${TABLE}.total_households ;;
  }

  dimension: household_1 {
    label: "1인가구수"
    type: number
    sql: ${TABLE}.household_1 ;;
  }

  measure: total_household_1 {
    label: "전체1인가구수"
    type: sum
    sql: ${household_1} ;;
  }

  measure: average_household_1 {
    label: "평균1인가구수"
    type: average
    sql: ${household_1} ;;
  }

  dimension: households_2 {
    label: "2인가구수"
    type: number
    sql: ${TABLE}.households_2 ;;
  }

  dimension: households_3 {
    label: "3인가구수"
    type: number
    sql: ${TABLE}.households_3 ;;
  }

  dimension: households_4 {
    label: "4인가구수"
    type: number
    sql: ${TABLE}.households_4 ;;
  }

  dimension: households_5 {
    label: "5인가구수"
    type: number
    sql: ${TABLE}.households_5 ;;
  }

  dimension: households_6 {
    label: "6인가구수"
    type: number
    sql: ${TABLE}.households_6 ;;
  }

  dimension: households_more6 {
    label: "7인이상가구수"
    type: number
    sql: ${TABLE}.households_more6 ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: []
  # }
}
