# The name of this view in Looker is "Seoul Households"
view: seoul_households {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_demo.seoul_households`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dongmyeon" in Explore.

  dimension: dongmyeon {
    type: string
    sql: ${TABLE}.dongmyeon ;;
  }

  dimension: gungu {
    type: string
    sql: ${TABLE}.gungu ;;
  }

  dimension: household_1 {
    type: number
    sql: ${TABLE}.household_1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_household_1 {
    type: sum
    sql: ${household_1} ;;
  }

  measure: average_household_1 {
    type: average
    sql: ${household_1} ;;
  }

  dimension: households_2 {
    type: number
    sql: ${TABLE}.households_2 ;;
  }

  dimension: households_3 {
    type: number
    sql: ${TABLE}.households_3 ;;
  }

  dimension: households_4 {
    type: number
    sql: ${TABLE}.households_4 ;;
  }

  dimension: households_5 {
    type: number
    sql: ${TABLE}.households_5 ;;
  }

  dimension: households_6 {
    type: number
    sql: ${TABLE}.households_6 ;;
  }

  dimension: households_more6 {
    type: number
    sql: ${TABLE}.households_more6 ;;
  }

  dimension: sido {
    type: string
    sql: ${TABLE}.sido ;;
  }

  dimension: total_households {
    type: number
    sql: ${TABLE}.total_households ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
