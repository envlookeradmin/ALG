
view: ventas {
  derived_table: {
    sql: WITH VENTAS_ALG AS (
    SELECT '01/01/2023' AS FECHA,
        'ALG' AS DIVISION,
        'Europa' AS CONTINENTE,
        'Dinamarca' AS PAIS,
        'DINSUC01' AS SUCURSAL,
        55.676098 AS LATITUD,
        12.568337 AS LONGITUD,
        1001 AS CLIENTE,
        80 AS VENTA,
        2 AS CANTIDAD
    FROM envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR
    GROUP BY 1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10
)
SELECT *
FROM VENTAS_ALG
UNION ALL
SELECT '02/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC01' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1002 AS CLIENTE,
    80 AS VENTA,
    2 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '03/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC01' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1003 AS CLIENTE,
    80 AS VENTA,
    2 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '04/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC01' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1004 AS CLIENTE,
    80 AS VENTA,
    2 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '05/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC01' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1005 AS CLIENTE,
    80 AS VENTA,
    2 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '01/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC02' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1001 AS CLIENTE,
    150 AS VENTA,
    8 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '02/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC02' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1002 AS CLIENTE,
    150 AS VENTA,
    8 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '03/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC02' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1003 AS CLIENTE,
    150 AS VENTA,
    8 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '04/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC02' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1004 AS CLIENTE,
    150 AS VENTA,
    8 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '05/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Dinamarca' AS PAIS,
    'DINSUC02' AS SUCURSAL,
    55.676098 AS LATITUD,
    12.568337 AS LONGITUD,
    1005 AS CLIENTE,
    150 AS VENTA,
    8 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '01/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC01' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2001 AS CLIENTE,
    50 AS VENTA,
    5 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '02/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC01' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2002 AS CLIENTE,
    50 AS VENTA,
    5 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '03/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC01' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2003 AS CLIENTE,
    50 AS VENTA,
    5 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '04/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC01' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2004 AS CLIENTE,
    50 AS VENTA,
    5 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '05/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC01' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2005 AS CLIENTE,
    50 AS VENTA,
    5 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '01/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC02' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2001 AS CLIENTE,
    30 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '02/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC02' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2002 AS CLIENTE,
    30 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '03/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC02' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2003 AS CLIENTE,
    30 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '04/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC02' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2004 AS CLIENTE,
    30 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '05/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'México' AS PAIS,
    'MXSUC02' AS SUCURSAL,
    19.42847 AS LATITUD,
    -99.12766 AS LONGITUD,
    2005 AS CLIENTE,
    30 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '01/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'USA' AS PAIS,
    'USASUC01' AS SUCURSAL,
    38.907045 AS LATITUD,
    -77.036735 AS LONGITUD,
    3001 AS CLIENTE,
    35 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '02/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'USA' AS PAIS,
    'USASUC01' AS SUCURSAL,
    38.907045 AS LATITUD,
    -77.036735 AS LONGITUD,
    3002 AS CLIENTE,
    35 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '03/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'USA' AS PAIS,
    'USASUC01' AS SUCURSAL,
    38.907045 AS LATITUD,
    -77.036735 AS LONGITUD,
    3003 AS CLIENTE,
    35 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '04/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'USA' AS PAIS,
    'USASUC01' AS SUCURSAL,
    38.907045 AS LATITUD,
    -77.036735 AS LONGITUD,
    3004 AS CLIENTE,
    35 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '05/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'USA' AS PAIS,
    'USASUC01' AS SUCURSAL,
    38.907045 AS LATITUD,
    -77.036735 AS LONGITUD,
    3005 AS CLIENTE,
    35 AS VENTA,
    10 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '01/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'Canadá' AS PAIS,
    'CASUC01' AS SUCURSAL,
    45.424721 AS LATITUD,
    -75.695000 AS LONGITUD,
    4001 AS CLIENTE,
    500 AS VENTA,
    50 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '02/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'Canadá' AS PAIS,
    'CASUC01' AS SUCURSAL,
    45.424721 AS LATITUD,
    -75.695000 AS LONGITUD,
    4002 AS CLIENTE,
    500 AS VENTA,
    50 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '03/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'Canadá' AS PAIS,
    'CASUC01' AS SUCURSAL,
    45.424721 AS LATITUD,
    -75.695000 AS LONGITUD,
    4003 AS CLIENTE,
    500 AS VENTA,
    50 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '04/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'Canadá' AS PAIS,
    'CASUC01' AS SUCURSAL,
    45.424721 AS LATITUD,
    -75.695000 AS LONGITUD,
    4004 AS CLIENTE,
    500 AS VENTA,
    50 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '05/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'America' AS CONTINENTE,
    'Canadá' AS PAIS,
    'CASUC01' AS SUCURSAL,
    45.424721 AS LATITUD,
    -75.695000 AS LONGITUD,
    4005 AS CLIENTE,
    500 AS VENTA,
    50 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '01/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Alemania' AS PAIS,
    'ALESUC01' AS SUCURSAL,
    52.520008 AS LATITUD,
    13.404954 AS LONGITUD,
    5001 AS CLIENTE,
    250 AS VENTA,
    15 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '02/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Alemania' AS PAIS,
    'ALESUC01' AS SUCURSAL,
    52.520008 AS LATITUD,
    13.404954 AS LONGITUD,
    5002 AS CLIENTE,
    250 AS VENTA,
    15 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '03/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Alemania' AS PAIS,
    'ALESUC01' AS SUCURSAL,
    52.520008 AS LATITUD,
    13.404954 AS LONGITUD,
    5003 AS CLIENTE,
    250 AS VENTA,
    15 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '04/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Alemania' AS PAIS,
    'ALESUC01' AS SUCURSAL,
    52.520008 AS LATITUD,
    13.404954 AS LONGITUD,
    5004 AS CLIENTE,
    250 AS VENTA,
    15 AS CANTIDAD
FROM VENTAS_ALG
UNION ALL
SELECT '05/01/2023' AS FECHA,
    'ALG' AS DIVISION,
    'Europa' AS CONTINENTE,
    'Alemania' AS PAIS,
    'ALESUC01' AS SUCURSAL,
    52.520008 AS LATITUD,
    13.404954 AS LONGITUD,
    5005 AS CLIENTE,
    250 AS VENTA,
    15 AS CANTIDAD
FROM VENTAS_ALG ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fecha {
    type: string
    sql: ${TABLE}.FECHA ;;
  }


  dimension_group: created {
    label: "Fecha"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      month_name,
      year
    ]
    sql: CAST(${TABLE}.FECHA AS date) ;;
    drill_fields: [continente,pais,created_raw,Total_cantidad,Total_venta]
  }

  dimension: division {
    type: string
    sql: ${TABLE}.DIVISION ;;
    drill_fields: [continente,pais,created_raw,Total_cantidad,Total_venta]
  }

  dimension: continente {
    type: string
    sql: ${TABLE}.CONTINENTE ;;
    drill_fields: [pais,map,Total_cantidad,Total_venta]

    link: {
      label: "Mapa"
      url: "https://envases.cloud.looker.com/dashboards/38"
      icon_url: "http://google.com/favicon.ico"
    }
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.PAIS ;;
    drill_fields: [sucursal,Total_cantidad,Total_venta]
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.SUCURSAL ;;

  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.LATITUD ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.LONGITUD ;;
  }

  dimension: map {
    type: location
    sql_latitude:${latitud} ;;
    sql_longitude:${longitud} ;;
    drill_fields: [detail*]
  }


  dimension: cliente {
    type: number
    sql: ${TABLE}.CLIENTE ;;
  }

  dimension: venta {
    type: number
    sql: ${TABLE}.VENTA ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.CANTIDAD ;;
  }

  measure: Total_venta {
    type: sum
    sql: ${TABLE}.VENTA *10000;;
   # drill_fields: [continente,pais,sucursal,Total_cantidad,Total_venta]
    drill_fields: [continente,pais,sucursal,Total_cantidad,Total_venta]
  }

  measure: Total_cantidad {
    type: sum
    sql: ${TABLE}.CANTIDAD *10000 ;;
    drill_fields: [continente,pais,sucursal,Total_cantidad,Total_venta]
  }

  set: detail {
    fields: [
      fecha,
      division,
      continente,
      pais,
      sucursal,
      latitud,
      longitud,
      cliente,
      venta,
      cantidad
    ]
  }
}
