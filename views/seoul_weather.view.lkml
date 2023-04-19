# The name of this view in Looker is "Seoul Weather"
view: seoul_weather {
  label: "서울날씨정보"

  sql_table_name: `looker_demo.seoul_weather`;;

  dimension_group: date {
    label: "날짜"
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
    label: "시도"
    type: string
    sql: ${TABLE}.sido ;;
  }

  dimension: gungu {
    label: "시군구"
    type: string
    sql: ${TABLE}.gungu ;;
  }

  dimension: dong {
    label: "동면읍"
    type: string
    sql: ${TABLE}.dong ;;
  }

  dimension: hour {
    label: "시간대"
    type: string
    sql: ${TABLE}.hour ;;
  }

  dimension: rainfall {
    label: "강수량"
    type: number
    sql: ${TABLE}.rainfall ;;
  }

  dimension: rainfall_tier {
    label: "강수량범위"
    type: tier
    bins: [0.0, 10.0, 20.0, 30.0, 40.0, 50.0 ,60.0]
    style: interval
    sql: ${TABLE}.rainfall ;;
  }

  measure: average_rainfall {
    label: "평균강수량"
    type: average
    sql: ${rainfall} ;;
  }

  dimension: temperature {
    label: "기온"
    type: number
    sql: ${TABLE}.temperature ;;
  }

  dimension: temperature_tier {
    label: "기온범위"
    type: tier
    bins: [-20.0, -10.0, 0.0, 10.0, 20.0, 30.0, 40.0]
    style: interval
    sql: ${TABLE}.temperature ;;
  }

  measure: average_temperature {
    label: "평균기온"
    type: average
    sql: ${temperature} ;;
  }
}
