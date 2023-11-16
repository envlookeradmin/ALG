view: bitacora_074 {
  derived_table: {
    sql: select
         max(format_datetime('%F %R', cst_datetime)) as cst_datetime,
         max(format_datetime('%F %R', cet_datetime)) as cet_datetime
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


}
