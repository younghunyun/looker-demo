# Define the database connection to be used for this model.
connection: "ps2_youn__stf-development__bigquery__looker_demo"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: ps2-youn-demo-2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ps2-youn-demo-2_default_datagroup

label: "ps2-youn-demo-2"

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Ps2-youn-demo-2"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: call_delivery {
  join: seoul_weather {
    type: inner
    sql_on: SUBSTR(${call_delivery.addr_sido}, 0, 3) = SUBSTR(${seoul_weather.sido}, 0, 3)
      AND SUBSTR(${call_delivery.addr_sigungu}, 0, 3) = SUBSTR(${seoul_weather.gungu}, 0, 3)
      AND SUBSTR(${call_delivery.addr_dong}, 0, 3) = SUBSTR(${seoul_weather.dong}, 0, 3)
      AND ${call_delivery.date_date} = ${seoul_weather.date_date} ;;
      # AND ${call_delivery.time_tier} = ${seoul_weather.hour} ;;
    relationship: one_to_one
  }
  join: seoul_population {
    type: inner
    sql_on: ${call_delivery.addr_sido} = ${seoul_population.sido}
      AND ${call_delivery.addr_sigungu} = ${seoul_population.gungu}
      AND SUBSTR(${call_delivery.addr_dong}, 0, 2) = ${seoul_population.dongmyeon};;
    relationship: one_to_one
  }
}

explore: seoul_population {
  hidden: yes
}

explore: seoul_households {}

explore: seoul_weather {
  hidden: yes
}
