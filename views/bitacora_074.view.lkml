view: bitacora_074 {
  derived_table: {
    sql: select
         max(cst_datetime) as cst_datetime,
         max(cet_datetime) as cet_datetime
         from `envases-analytics-eon-poc.ENVASES_REPORTING.bitacora_074`
      ;;
}

  dimension: cst_datetime {
    type: date_time
    sql: ${TABLE}.CST_DATETIME ;;
  }

  dimension: cet_datetime {
    type: date_time
    sql: ${TABLE}.CET_DATETIME ;;
  }


}
