view: bitacora_074 {
  derived_table: {
    sql: select
          case
          when time_zone = 'CST' THEN 'MEXICO (CST)'
          when time_zone = 'CET' THEN 'EUROPE (CET)'
          when time_zone = 'EST' THEN 'USA - CANADA (EST)'
          end as time_zone,
          max(format_datetime('%F %R', date_time) ) as date_time
          from `envases-analytics-eon-poc.ENVASES_REPORTING.bitacora_074`
         group by 1
      ;;
}

  dimension: time_zone {
    type: string
    sql: ${TABLE}.TIME_ZONE ;;
  }

  dimension: date_time {
    type: string
    sql: ${TABLE}.DATE_TIME ;;
  }


}
