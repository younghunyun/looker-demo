# The name of this view in Looker is "Seoul Population"
view: seoul_population {
  label: "서울인구정보"

  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_demo.seoul_population` ;;

  dimension: year {
    label: "통계년도"
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

  dimension: population_total {
    label: "인구수"
    type: number
    sql: ${TABLE}.population_total ;;
  }

  dimension: households_total {
    label: "가구수"
    type: number
    sql: ${TABLE}.households_total ;;
  }

  dimension: persons_per_household {
    label: "가구당평균인구"
    type: number
    sql: ${TABLE}.persons_per_household ;;
  }

  dimension: more_64 {
    label: "64세이상인구"
    type: number
    sql: ${TABLE}.more_64 ;;
  }

  ## 한국인 인구 정보

  dimension: korean_total {
    label: "한국인"
    type: number
    sql: ${TABLE}.korean_total ;;
  }

  dimension: korean_male {
    label: "한국인|남자"
    type: number
    sql: ${TABLE}.korean_male ;;
  }

  dimension: korean_female {
    label: "한국인|여자"
    type: number
    sql: ${TABLE}.korean_female ;;
  }

  dimension: korean_0_to_4 {
    label: "한국인|0-4세"
    type: number
    sql: ${TABLE}.korean_0_to_4 ;;
  }

  dimension: korean_5_to_9 {
    label: "한국인|5-9세"
    type: number
    sql: ${TABLE}.korean_5_to_9 ;;
  }

  dimension: korean_10_to_14 {
    label: "한국인|10-14세"
    type: number
    sql: ${TABLE}.korean_10_to_14 ;;
  }

  dimension: korean_15_to_19 {
    label: "한국인|15-19세"
    type: number
    sql: ${TABLE}.korean_15_to_19 ;;
  }

  dimension: korean_20_to_24 {
    label: "한국인|20-24세"
    type: number
    sql: ${TABLE}.korean_20_to_24 ;;
  }

  dimension: korean_25_to_29 {
    label: "한국인|25-29세"
    type: number
    sql: ${TABLE}.korean_25_to_29 ;;
  }

  dimension: korean_30_to_34 {
    label: "한국인|30-34세"
    type: number
    sql: ${TABLE}.korean_30_to_34 ;;
  }

  dimension: korean_35_to_39 {
    label: "한국인|35-39세"
    type: number
    sql: ${TABLE}.korean_35_to_39 ;;
  }

  dimension: korean_40_to_44 {
    label: "한국인|40-44세"
    type: number
    sql: ${TABLE}.korean_40_to_44 ;;
  }

  dimension: korean_45_to_49 {
    label: "한국인|45-49세"
    type: number
    sql: ${TABLE}.korean_45_to_49 ;;
  }

  dimension: korean_50_to_54 {
    label: "한국인|50-54세"
    type: number
    sql: ${TABLE}.korean_50_to_54 ;;
  }

  dimension: korean_55_to_59 {
    label: "한국인|55-59세"
    type: number
    sql: ${TABLE}.korean_55_to_59 ;;
  }

  dimension: korean_60_to_64 {
    label: "한국인|60-64세"
    type: number
    sql: ${TABLE}.korean_60_to_64 ;;
  }

  dimension: korean_65_to_69 {
    label: "한국인|65-69세"
    type: number
    sql: ${TABLE}.korean_65_to_69 ;;
  }

  dimension: korean_70_to_74 {
    label: "한국인|70-74세"
    type: number
    sql: ${TABLE}.korean_70_to_74 ;;
  }

  dimension: korean_75_to_79 {
    label: "한국인|75-79세"
    type: number
    sql: ${TABLE}.korean_75_to_79 ;;
  }

  dimension: korean_80_to_84 {
    label: "한국인|80-84세"
    type: number
    sql: ${TABLE}.korean_80_to_84 ;;
  }

  dimension: korean_85_to_89 {
    label: "한국인|85-89세"
    type: number
    sql: ${TABLE}.korean_85_to_89 ;;
  }

  dimension: korean_90_to_94 {
    label: "한국인|90-94세"
    type: number
    sql: ${TABLE}.korean_90_to_94 ;;
  }

  dimension: korean_95_to_99 {
    label: "한국인|95-99세"
    type: number
    sql: ${TABLE}.korean_95_to_99 ;;
  }

  dimension: korean_more_99 {
    label: "한국인|100세이상"
    type: number
    sql: ${TABLE}.korean_more_99 ;;
  }

  ## 외국인 인구 정보

  dimension: foreigner_total {
    label: "외국인"
    type: number
    sql: ${TABLE}.foreigner_total ;;
  }

  dimension: foreigner_male {
    label: "외국인|남자"
    type: number
    sql: ${TABLE}.foreigner_male ;;
  }

  dimension: foreigner_female {
    label: "외국인|여자"
    type: number
    sql: ${TABLE}.foreigner_female ;;
  }

  dimension: foreigner_0_to_4 {
    label: "외국인|0-4세"
    type: number
    sql: ${TABLE}.foreigner_0_to_4 ;;
  }

  dimension: foreigner_5_to_9 {
    label: "외국인|5-9세"
    type: number
    sql: ${TABLE}.foreigner_5_to_9 ;;
  }

  dimension: foreigner_10_to_14 {
    label: "외국인|10-14세"
    type: number
    sql: ${TABLE}.foreigner_10_to_14 ;;
  }

  dimension: foreigner_15_to_19 {
    label: "외국인|15-19세"
    type: number
    sql: ${TABLE}.foreigner_15_to_19 ;;
  }

  dimension: foreigner_20_to_24 {
    label: "외국인|20-24세"
    type: number
    sql: ${TABLE}.foreigner_20_to_24 ;;
  }

  dimension: foreigner_25_to_29 {
    label: "외국인|25-29세"
    type: number
    sql: ${TABLE}.foreigner_25_to_29 ;;
  }

  dimension: foreigner_30_to_34 {
    label: "외국인|30-34세"
    type: number
    sql: ${TABLE}.foreigner_30_to_34 ;;
  }

  dimension: foreigner_35_to_39 {
    label: "외국인|35-39세"
    type: number
    sql: ${TABLE}.foreigner_35_to_39 ;;
  }

  dimension: foreigner_40_to_44 {
    label: "외국인|40-44세"
    type: number
    sql: ${TABLE}.foreigner_40_to_44 ;;
  }

  dimension: foreigner_45_to_49 {
    label: "외국인|45-49세"
    type: number
    sql: ${TABLE}.foreigner_45_to_49 ;;
  }

  dimension: foreigner_50_to_54 {
    label: "외국인|50-54세"
    type: number
    sql: ${TABLE}.foreigner_50_to_54 ;;
  }

  dimension: foreigner_55_to_59 {
    label: "외국인|55-59세"
    type: number
    sql: ${TABLE}.foreigner_55_to_59 ;;
  }

  dimension: foreigner_60_to_64 {
    label: "외국인|60-64세"
    type: number
    sql: ${TABLE}.foreigner_60_to_64 ;;
  }

  dimension: foreigner_65_to_69 {
    label: "외국인|65-69세"
    type: number
    sql: ${TABLE}.foreigner_65_to_69 ;;
  }

  dimension: foreigner_70_to_74 {
    label: "외국인|70-74세"
    type: number
    sql: ${TABLE}.foreigner_70_to_74 ;;
  }

  dimension: foreigner_75_to_79 {
    label: "외국인|75-79세"
    type: number
    sql: ${TABLE}.foreigner_75_to_79 ;;
  }

  dimension: foreigner_80_to_84 {
    label: "외국인|80-84세"
    type: number
    sql: ${TABLE}.foreigner_80_to_84 ;;
  }

  dimension: foreigner_85_to_89 {
    label: "외국인|85-89세"
    type: number
    sql: ${TABLE}.foreigner_85_to_89 ;;
  }

  dimension: foreigner_90_to_94 {
    label: "외국인|90-94세"
    type: number
    sql: ${TABLE}.foreigner_90_to_94 ;;
  }

  dimension: foreigner_95_to_99 {
    label: "외국인|95-99세"
    type: number
    sql: ${TABLE}.foreigner_95_to_99 ;;
  }

  dimension: foreigner_more_99 {
    label: "외국인|100세이상"
    type: number
    sql: ${TABLE}.foreigner_more_99 ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: []
  # }
}
