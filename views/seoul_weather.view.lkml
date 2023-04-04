# The name of this view in Looker is "Seoul Weather"
view: seoul_weather {

  sql_table_name: `looker_demo.seoul_weather`;;

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

  dimension: sido {
    type: string
    sql: ${TABLE}.sido ;;
  }

  dimension: gungu {
    type: string
    sql: ${TABLE}.gungu ;;
  }

  dimension: dong {
    type: string
    sql: ${TABLE}.dong ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}.hour ;;
  }

  dimension: rainfall {
    type: number
    sql: ${TABLE}.rainfall ;;
  }

  dimension: rainfall_tier {
    type: bin
    bins: [-10.0, 0.0, 10.0, 20.0, 30.0, 40.0, 50.0 ,60.0, 70.0]
    style: interval
    sql: ${TABLE}.rainfall ;;
  }

  dimension: temperature {
    type: number
    sql: ${TABLE}.temperature ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_rainfall {
    type: sum
    sql: ${rainfall} ;;
  }

  measure: average_rainfall {
    type: average
    sql: ${rainfall} ;;
  }
}
