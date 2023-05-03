# Define the database connection to be used for this model.
connection: "ps2_youn__stf-development__bigquery__looker_demo"

# include all the views
include: "/views/**/*.view"
# include all the dashboards
include: "/dashboards/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: ps2-youn-demo-2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ps2-youn-demo-2_default_datagroup

# label: "ps2-youn-demo-2"
label: "PS2팀-모델.데모2"

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Ps2-youn-demo-2"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: call_delivery {
  label: "배달주문정보탐색"
  join: seoul_weather {
    type: inner
    sql_on: SUBSTR(${call_delivery.addr_sido}, 1, 2) = SUBSTR(${seoul_weather.sido}, 1, 2)
      AND ${call_delivery.addr_sigungu} = ${seoul_weather.gungu}
      AND SUBSTR(${call_delivery.addr_dong}, 1, 3) = SUBSTR(${seoul_weather.dong}, 1, 3)
      AND ${call_delivery.date_date} = ${seoul_weather.date_date}
      AND ${call_delivery.time_tier} = ${seoul_weather.hour} ;;
    relationship: one_to_one
  }
  join: seoul_population {
    type: inner
    sql_on: SUBSTR(${call_delivery.addr_sido}, 1, 2) = SUBSTR(${seoul_population.sido}, 1, 2)
      AND ${call_delivery.addr_sigungu} = ${seoul_population.gungu}
      AND SUBSTR(${call_delivery.addr_dong}, 1, 3) = SUBSTR(${seoul_population.dongmyeon}, 1, 3) ;;
    relationship: one_to_one
  }
}

explore: seoul_population {
  hidden: yes
}

explore: seoul_households {
  label: "서울가구정보탐색"
}

explore: seoul_weather {
  hidden: yes
}
