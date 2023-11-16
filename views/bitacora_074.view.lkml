view: bitacora_074 {
  derived_table: {
    sql: select
         max(case when time_zone = 'CST' then format_datetime('%F %R', date_time) end) as cst_datetime,
         max(case when time_zone = 'CET' then format_datetime('%F %R', date_time) end) as cet_datetime,
         max(case when time_zone = 'EST' then format_datetime('%F %R', date_time) end) as est_datetime
         from `envases-analytics-eon-poc.ENVASES_REPORTING.bitacora_074`
      ;;
}

  dimension: cst_datetime {
    type: string
    sql: ${TABLE}.CST_DATETIME ;;
  }

  dimension: cet_datetime {
    type: string
    sql: ${TABLE}.CET_DATETIME ;;
  }

  dimension: est_datetime {
    type: string
    sql: ${TABLE}.EST_DATETIME ;;
  }


}
