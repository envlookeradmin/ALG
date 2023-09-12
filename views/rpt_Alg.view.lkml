view: rpt_alg {
 derived_table: {
  sql: SELECT v.*,CAST(c.DATE AS TIMESTAMP) Fecha,c.QUARTER,c.YEAR,0 UKURS,'' FCURR, DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
      LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY=c.CALDAY  WHERE CATEGORY NOT IN ('TOTAL MXN')

    UNION ALL

    SELECT V.NET_WGT_DL
    ,V.UNIT_OF_WT
    ,V.STAT_CURR
    ,V.MATL_GROUP
    ,V.BILL_QTY
    ,V.znetval *UKURS  znetval
    ,V.ZPPTOQTY
    ,V.ZPPTO
    ,V.ZPRICEVAL
    ,V.LEN
    ,V.UNIT_DIM
    ,V.CURRENCY
    ,V.UNIT
    ,V.SOLD_TO
    ,V.CUST_GROUP
    ,V.MATL_TYPE
    ,V.PRODH1
    ,V.SIZE_DIM
    ,V.EXTMATLGRP
    ,V.COUNTRY
    ,V.SALES_GRP
    ,V.SALES_OFF
    ,V.PRODH2
    ,V.PRODH3
    ,V.PRODH4
    ,V.PROD_HIER
    ,V.ZIOSD00A
    ,V.VERSION
    ,V.PLANT
    ,V.MATERIAL
    ,V.DISTR_CHAN
    ,V.DIVISION
    ,V.SALESORG
    ,V.CALDAY
    ,V.LOC_CURRCY
    ,V.BASE_UOM
    ,'TOTAL MXN' CATEGORY
    ,V.SUBCATEGORY
    ,V.CLIENT
    ,CAST(c.DATE AS TIMESTAMP) Fecha,c.QUARTER,c.YEAR
    ,mo.UKURS
    ,mo.FCURR, DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
    LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY=c.CALDAY
    LEFT JOIN (

    SELECT CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING) AS CALDAY, TRIM(FCURR) FCURR, TRIM(TCURR) TCURR, UKURS,c.date FROM `envases-analytics-eon-poc.DATASET_RAW.ECC_PROD_TCURR`
    left join envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on c.CALDAY=CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING)
    WHERE TRIM(FCURR) IN ('USD', 'EUR', 'DKK', 'GTQ') AND TRIM(TCURR) = 'MXN' AND TRIM(KURST) = 'M'  AND    c.DATE= CAST({% date_start date_filter %} AS DATE)

    ) mo on   v.STAT_CURR=mo.FCURR
    WHERE CATEGORY='TOTAL MONEDA ORIGEN'

    union all

    SELECT v.*,CAST(c.DATE AS TIMESTAMP) Fecha,c.QUARTER,c.YEAR,0 UKURS,'' TCURR, DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
    LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY=c.CALDAY  WHERE CATEGORY in ('TOTAL MXN') and SALESORG in ( "MXF1","MXFC")


    ;;
}

  filter: date_filter {
    label: "Período"
    description: "Use this date filter in combination with the timeframes dimension for dynamic date filtering"
    type: date
    # default_value: "6 weeks"

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
    sql: CAST(${TABLE}.Fecha AS TIMESTAMP) ;;

  }

  dimension: distr_chan {
    type: string
    sql: ${TABLE}.DISTR_CHAN ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.VERSION ;;
  }

  dimension: Client {
    label: "Cliente"
    type: string
    sql: ${TABLE}.CLIENT ;;
  }

  dimension: category {
    type: string
    # sql: case when ${TABLE}.CATEGORY is null then 'Otros' else ${TABLE}.CATEGORY  end ;;
    sql:  ${TABLE}.CATEGORY ;;

    html: {% if value == 'TOTAL MONEDA ORIGEN' or
                value == 'TOTAL MXN'

      %}
      <p style="color: white; background-color: #5e2129; font-size:100%; text-align:left">{{ rendered_value }}</p>
      {% else %}
      <p style="">{{ rendered_value }}</p>
      {% endif %} ;;

  }

  dimension: Paises {
    case: {
      when: {
        sql: ${TABLE}.SALESORG = "DE00" ;;
        label: "Alemania"
      }
      when: {
        sql: ${TABLE}.SALESORG = "NLF1" ;;
        label: "Holanda"
      }
      when: {
        sql: ${TABLE}.SALESORG = "3100" ;;
        label: "Canadá"
      }
      when: {
        sql: ${TABLE}.SALESORG in ( "MXF1","MXFC") ;;
        label: "México"
      }
      when: {
        sql: ${TABLE}.SALESORG in ( "GTF1") ;;
        label: "Guatemala"
      }
      when: {
        sql: ${TABLE}.SALESORG in ( "DKF1","DKF3","SEF1","USF2") ;;
        label: "Dinamarca"
      }
      when: {
        sql: ${TABLE}.SALESORG in ( "USF1") ;;
        label: "USA"
      }

      else: "Otros"
    }
  }

  dimension: category_orden {
    label: "category_orden_mexico"
    type: string
    sql: case

            when ${TABLE}.CATEGORY="CP 19L" then "A01"
            when ${TABLE}.CATEGORY="CP 15L" then "A02"
            when ${TABLE}.CATEGORY="CP 10L" then "A03"
            when ${TABLE}.CATEGORY="CP 08L" then "A04"
            when ${TABLE}.CATEGORY="CP 04L" then "A05"
            when ${TABLE}.CATEGORY="Cubeta de Plastico" then "A06"
            when ${TABLE}.CATEGORY="Porron de Plastico" then "A07"
            when ${TABLE}.CATEGORY="Tambores de Plastico" then "A08"
            when ${TABLE}.CATEGORY="Bote bocan" then "A09"
            when ${TABLE}.CATEGORY="Tambores" then "A10"
            when ${TABLE}.CATEGORY="Tambores Conicos" then "A11"
            when ${TABLE}.CATEGORY="Cubeta de Lamina" then "A12"
            when ${TABLE}.CATEGORY="Alcoholero" then "A13"
            when ${TABLE}.CATEGORY="Bote de Pintura" then "A14"
            when ${TABLE}.CATEGORY="Bote de Aerosol" then "A15"
            when ${TABLE}.CATEGORY="Línea General" then "A16"
            when ${TABLE}.CATEGORY="Bote Sanitario" then "A17"
            when ${TABLE}.CATEGORY="Bote Atún" then "A18"
            when ${TABLE}.CATEGORY="Bote Oval" then "A19"
            when ${TABLE}.CATEGORY="Tapa Easy Open" then "A20"
            when ${TABLE}.CATEGORY="Fondo Charola y Bafle" then "A21"
            when ${TABLE}.CATEGORY="Tapa Twiss Off" then "A22"
            when ${TABLE}.CATEGORY="Varios" then "A23"
            when ${TABLE}.CATEGORY="Fish." then "A24"
            when ${TABLE}.CATEGORY="PeelOff." then "A25"

      when ${TABLE}.CATEGORY="Coating and Printing Services" then "A26"
      when ${TABLE}.CATEGORY="Miscelaneous" then "A27"
      when ${TABLE}.CATEGORY="Pails and lids for pails" then "A28"
      when ${TABLE}.CATEGORY="Tinplate and lids for tinplate" then "A29"

      when ${TABLE}.CATEGORY="Beverage Draught" then "A30"
      when ${TABLE}.CATEGORY="Beverage Gravity" then "A31"
      when ${TABLE}.CATEGORY="Industrial" then "A32"
      when ${TABLE}.CATEGORY="SC Print" then "A33"

      when ${TABLE}.CATEGORY="Bote de Aerosol GT" then "A34"
      when ${TABLE}.CATEGORY="Bote de Pintura GT" then "A35"
      when ${TABLE}.CATEGORY="Bote Sanitario GT" then "A36"
      when ${TABLE}.CATEGORY="Bote Sanitario GT" then "A37"
      when ${TABLE}.CATEGORY="Varios GT" then "A38"

      when ${TABLE}.CATEGORY="Bote Pint. Envases Ohio" then "A39"
      when ${TABLE}.CATEGORY="Cub.Lam. Envases Ohio" then "A40"




      when ${TABLE}.CATEGORY="TOTAL MONEDA ORIGEN" then "Z1"
      when ${TABLE}.CATEGORY="TOTAL MXN" then "Z2" else "z"  end ;;
  }

  dimension: bill_qty {
    type: number
    sql: ${TABLE}.BILL_QTY /1000;;
  }

  dimension: znetval {
    type: number
    sql: ${TABLE}.ZNETVAL/1000 ;;
  }

  dimension: UKURS {

    type: number
    sql: ${TABLE}.UKURS ;;
    value_format: "#,##0.00"
  }

  dimension: FCURR {

    type: string
    sql: ${TABLE}.FCURR ;;
  }

  dimension: fecha {
    label: "fecha filtro"
    type: string
    sql: CAST({% date_start date_filter %} AS DATE) ;;
  }

  dimension: actualizacion {
    type: date
    sql: ${TABLE}.ACTUALIZACION ;;
  }



################################################################### fILTROS DE TIEMPO ######################################################

##################Dias ############################

  dimension: periodo_dia {
    hidden: yes
    type: yesno
    sql:DATE_TRUNC(CAST(${created_date} AS DATE),DAY) =DATE_ADD( DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), DAY),INTERVAL -0 DAY);;
  }

  dimension: periodo_dia_anterior {
    hidden: yes
    type: yesno
    sql:DATE_TRUNC(CAST(${created_date} AS DATE),DAY) =DATE_ADD(DATE_ADD( DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), DAY),INTERVAL -1 year),INTERVAL -0 day);;
  }

  ##################Dias ############################


  ##################Mes ############################
  dimension: periodo_mes{
    hidden: yes
    type: yesno
    sql: DATE_TRUNC(CAST(${created_date} AS DATE),DAY) >=DATE_ADD(DATE_ADD(LAST_DAY(CAST({% date_start date_filter %} AS DATE)), INTERVAL 1 DAY),INTERVAL -1 MONTH) AND DATE_TRUNC(CAST(${created_date} AS DATE),DAY) <= DATE_ADD((CAST({% date_start date_filter %} AS DATE)),INTERVAL -0 day)  ;;
    #sql: DATE_TRUNC(CAST(${created_date} AS DATE),DAY)>=DATE_ADD(DATE_ADD(LAST_DAY(CAST({% date_start date_filter %} AS DATE)), INTERVAL 1 DAY),INTERVAL -1 MONTH)    ;;
    #sql:DATE_TRUNC(CAST(${created_date} AS DATE),YEAR) =  DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR)  and DATE_TRUNC(CAST(${created_date} AS DATE),MONTH) = DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH) ;;
    #LAST_DAY
  }


  dimension: periodo_mes_anterior{
    hidden: yes
    type: yesno
    sql: DATE_TRUNC(CAST(${created_date} AS DATE),DAY) >=DATE_ADD(DATE_ADD(LAST_DAY(     DATE_ADD( CAST({% date_start date_filter %} AS DATE) ,INTERVAL -1 YEAR)        ), INTERVAL 1 DAY),INTERVAL -1 MONTH) AND DATE_TRUNC(CAST(${created_date} AS DATE),DAY) <= DATE_ADD(   DATE_ADD( CAST({% date_start date_filter %} AS DATE) ,INTERVAL -1 YEAR)    ,INTERVAL -0 day)  ;;
    # sql:DATE_TRUNC(CAST(${created_date} AS DATE),YEAR) =  DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR) -1  and   DATE_TRUNC(CAST(${created_date} AS DATE),MONTH) = DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH) ;;

  }
  ##################Mes ############################


  ##################año ############################


  dimension: periodo_year {
    hidden: yes
    type: yesno
    sql: ${created_date} >= CAST(CONCAT(CAST(EXTRACT(YEAR FROM DATE ({% date_start date_filter %})) AS STRING),"-01-01")  AS DATE) and  ${created_date} <= DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), DAY)   ;;
    #DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR);;  FECHA         DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH)
  }

  dimension: periodo_year_anterior {
    hidden: yes
    type: yesno
    sql: ${created_date} >= CAST(CONCAT(CAST(EXTRACT(YEAR FROM DATE ({% date_start date_filter %})) -1 AS STRING),"-01-01")  AS DATE) and  ${created_date} <= DATE_ADD(DATE_ADD( DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), DAY),INTERVAL -1 year),INTERVAL -0 day)   ;;
    #DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR);;  FECHA         DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH)
  }

  ##################año ############################
################################################################### fILTROS DE TIEMPO ######################################################



################################################################### CALCULOS DIARIOS ######################################################

  measure: SALES_DAY {
    group_label: "Diario"
    label: "Venta por dia"
    type: sum
    sql: ${bill_qty} ;;


    filters: [distr_chan: "10"]
    filters: [version: "000"]

    drill_fields: [ Client,SALES_DAY]

    value_format: "#,##0"
  }

  measure: ult_act {
    type: date
    label: "Fecha actualización"
    sql: MAX(${actualizacion});;
    convert_tz: no
  }



#################################################################### CALCULOS MENSUALES ##################################################################


  measure: NATIONAL_QTY_MTD {
    group_label: "Mensual"
    label: "NATIONAL QTY MTD"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
      field: periodo_mes
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]

    drill_fields: [ Client,NATIONAL_QTY_MTD]

    value_format: "#,##0"
  }

  measure: EXPORT_QTY_MTD {
    group_label: "Mensual"
    label: "EXPORT QTY MTD"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
      field: periodo_mes
      value: "yes"
    }

    filters: [distr_chan: "20"]
    filters: [version: "000"]

    drill_fields: [ Client,EXPORT_QTY_MTD]
    value_format: "#,##0"
  }

  measure: TOTAL_QTY {
    group_label: "Mensual"
    label: "TOTAL QTY MONTH"
    type: number
    sql: ${NATIONAL_QTY_MTD} + ${EXPORT_QTY_MTD} ;;
   # drill_fields: [ Client,NATIONAL_QTY_MTD,EXPORT_QTY_MTD,TOTAL_QTY]
    drill_fields: [ Client,TOTAL_QTY]
    value_format: "#,##0"
  }



  measure: NATIONAL_QTY_MTD_LY {
    group_label: "Mensual"
    label: "NATIONAL QTY_MTD_LY"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
      field: periodo_mes_anterior
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ Client,NATIONAL_QTY_MTD_LY]
    value_format: "#,##0"
  }


  measure: EXPORT_QTY_MTD_LY {
    group_label: "Mensual"
    label: "EXPORT QTY_MTD LY"
    type: sum
    sql: ${bill_qty};;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: periodo_mes_anterior
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_QTY_MTD_LY]
    value_format: "#,##0.00"
  }


  measure: TOTAL_QTY_LY {
    group_label: "Mensual"
    label: "TOTAL QTY MONTH LY"
    type: number
    sql: ${NATIONAL_QTY_MTD_LY} + ${EXPORT_QTY_MTD_LY} ;;

    drill_fields: [ Client,NATIONAL_QTY_MTD_LY,EXPORT_QTY_MTD_LY,TOTAL_QTY_LY]
    value_format: "#,##0.00"
  }


  measure: _VS_YEAR_ANT_QTY_T {
    group_label: "Mensual"
    label: "% VS AÑO ANT QTY T"
    type: number
    sql: CASE WHEN ${TOTAL_QTY} > 0 AND ${TOTAL_QTY_LY} = 0 THEN 1
              WHEN ${TOTAL_QTY} = 0 AND ${TOTAL_QTY_LY} > 0 THEN -1
              WHEN (${TOTAL_QTY}/NULLIF(${TOTAL_QTY_LY},0))-1  = 0 THEN 0 ELSE (${TOTAL_QTY}/NULLIF(${TOTAL_QTY_LY},0))-1   END *100;;
    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_QTY,TOTAL_QTY_LY,_VS_YEAR_ANT_QTY_T]

  }

  measure: NATIONAL_BUD_QTY_MTD {
    group_label: "Mensual"
    label: "NATIONAL BUD QTY MTD"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
     field: periodo_mes
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "A00"]
    drill_fields: [ Client,NATIONAL_BUD_QTY_MTD]
  }

  measure: EXPORT_BUD_QTY_MTD {
    group_label: "Mensual"
    label: "EXPORT BUD QTY MTD"
    type: sum
    sql: ${bill_qty} ;;
    filters: [distr_chan: "20"]
    filters: [version: "A00"]
    filters: {
     field: periodo_mes
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_BUD_QTY_MTD]
    value_format: "#,##0.00"
  }



  measure: BUD_TOTAL_QTY {
    group_label: "Mensual"
    label: "BUD TOTAL QTY"
    type: number
    sql: ${NATIONAL_BUD_QTY_MTD} + ${EXPORT_BUD_QTY_MTD} ;;
    #[#NATIONAL BUD QTY MTD]+ [#EXPORT BUD QTY MTD]

    drill_fields: [ Client,NATIONAL_BUD_QTY_MTD,EXPORT_BUD_QTY_MTD,BUD_TOTAL_QTY]
    value_format: "#,##0"
  }


  measure: VS_BUD_QTY_T {
    group_label: "Mensual"
    label: "% VS BUD QTY T"
    type: number
    sql: CASE WHEN ${TOTAL_QTY} > 0 AND ${BUD_TOTAL_QTY} = 0 THEN 1
              WHEN ${TOTAL_QTY} = 0 AND ${BUD_TOTAL_QTY} > 0 THEN -1
              WHEN (${TOTAL_QTY} /  NULLIF (${BUD_TOTAL_QTY},0))-1= 0 THEN 0 ELSE (${TOTAL_QTY} /  NULLIF (${BUD_TOTAL_QTY},0))-1
             END *100 ;;
    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_QTY,BUD_TOTAL_QTY,VS_BUD_QTY_T]

  }


  measure: NATIONAL_AMOUNT_MTD {
    group_label: "Mensual"
    label: "NATIONAL AMOUNT MTD"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: periodo_mes
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ category_orden,Client,NATIONAL_AMOUNT_MTD]
    value_format: "#,##0.00"
  }

  measure: EXPORT_AMOUNT_MTD {
    group_label: "Mensual"
    label: "EXPORT AMOUNT MTD"
    type: sum
    sql: ${znetval} ;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: periodo_mes
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_AMOUNT_MTD]
    value_format: "#,##0.00"

  }


  measure: TOTAL_AMOUNT {
    group_label: "Mensual"
    label: "TOTAL AMOUNT"
    type: number
    sql: ${NATIONAL_AMOUNT_MTD} + ${EXPORT_AMOUNT_MTD} ;;
    #[#NATIONAL AMOUNT MTD]+[#EXPORT AMOUNT MTD]

    drill_fields: [ Client,NATIONAL_AMOUNT_MTD,EXPORT_AMOUNT_MTD,TOTAL_AMOUNT]
    value_format: "#,##0.00"
  }

  measure: NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR{
    group_label: "Mensual"
    label: "NATIONAL AMOUNT MTD AÑO ANT"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: periodo_mes_anterior
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ Client,NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR]
    value_format: "#,##0.00"
  }

  measure: EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR {
    group_label: "Mensual"
    label: "EXPORT AMOUNT MTD AÑO ANT"

    type: sum
    sql: ${znetval} ;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: periodo_mes_anterior
      value: "yes"
    }
    drill_fields: [ Client,EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR]
    value_format: "#,##0.00"
  }


  measure:  TOTAL_AMOUNT_YEAR_ANT {
    group_label: "Mensual"
    label: "TOTAL AMOUNT AÑO ANT"
    type: number
    sql: ${NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR} + ${EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR} ;;

    drill_fields: [ Client,NATIONAL_AMOUNT_MTD_YEAR_ANT_YEAR,EXPORT_AMOUNT_MTD_YEAR_ANT_YEAR,TOTAL_AMOUNT_YEAR_ANT]
    value_format: "#,##0.00"
  }

  measure: VS_YEAR_ANT_VAL_T {
    group_label: "Mensual"
    label: "% VS AÑO ANT VAL"
    type: number
    sql: CASE WHEN ${TOTAL_AMOUNT} > 0 AND ${TOTAL_AMOUNT_YEAR_ANT} = 0 THEN 1
              WHEN ${TOTAL_AMOUNT} = 0 AND ${TOTAL_AMOUNT_YEAR_ANT} > 0 THEN -1
              WHEN (${TOTAL_AMOUNT} /  NULLIF (${TOTAL_AMOUNT_YEAR_ANT},0))-1 = 0 THEN 0 ELSE (${TOTAL_AMOUNT} /  NULLIF (${TOTAL_AMOUNT_YEAR_ANT},0))-1
             END *100;;
    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_AMOUNT,TOTAL_AMOUNT_YEAR_ANT,VS_YEAR_ANT_VAL_T]

  }


  measure: z_BUD_NATIONAL_AMOUNT{
    group_label: "Mensual"
    label: "z BUD NATIONAL AMOUNT"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: periodo_mes
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "A00"]

    drill_fields: [ Client,z_BUD_NATIONAL_AMOUNT]
    value_format: "#,##0.00"
  }


  measure: z_BUD_EXPORT_AMOUNT {
    group_label: "Mensual"
    label: "z BUD EXPORT AMOUNT"

    type: sum
    sql: ${znetval} ;;
    filters: {
      field: periodo_mes
      value: "yes"
    }
    filters: [distr_chan: "20"]
    filters: [version: "A00"]

    drill_fields: [ Client,z_BUD_EXPORT_AMOUNT]
    value_format: "#,##0.00"
  }


  measure:  BUD_TOTAL_AMOUNT_YEAR{
    group_label: "Mensual"
    label: "BUD TOTAL AMOUNT"
    type: number
    sql: ${z_BUD_NATIONAL_AMOUNT} + ${z_BUD_EXPORT_AMOUNT} ;;

    #[#Z_BUD  NATIONAL AMOUNT]+ [#Z_BUD  EXPORT AMOUNT]

    drill_fields: [ Client,BUD_TOTAL_AMOUNT_YEAR]
    value_format: "#,##0.00"
  }


  measure: VS_BUD_T {
    group_label: "Mensual"
    label: "% VS BUD T"
    type: number
    sql: CASE WHEN ${TOTAL_AMOUNT} > 0 AND ${BUD_TOTAL_AMOUNT_YEAR} = 0 THEN 1
              WHEN ${TOTAL_AMOUNT} = 0 AND ${BUD_TOTAL_AMOUNT_YEAR} > 0 THEN -1
              WHEN (${TOTAL_AMOUNT} /  NULLIF (${BUD_TOTAL_AMOUNT_YEAR},0))-1=-1 THEN 0 ELSE (${TOTAL_AMOUNT} /  NULLIF (${BUD_TOTAL_AMOUNT_YEAR},0))-1
             END * 100;;
    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_AMOUNT,BUD_TOTAL_AMOUNT_YEAR,VS_BUD_T]

  }


#################################################################### CALCULOS MENSUALES ##################################################################










#################################################################### CALCULOS ANUALES ##################################################################




  measure: NATIONAL_QTY_YTD {
    group_label: "Anuales"
    label: "NATIONAL QTY YTD"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
      field: periodo_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]

    drill_fields: [ Client,NATIONAL_QTY_YTD]

    value_format: "#,##0"
  }

  measure: EXPORT_QTY_YTD {
    group_label: "Anuales"
    label: "EXPORT QTY YTD"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
      field: periodo_year
      value: "yes"
    }

    filters: [distr_chan: "20"]
    filters: [version: "000"]

    drill_fields: [ Client,EXPORT_QTY_YTD]
    value_format: "#,##0"
  }

  measure: TOTAL_QTY_YEAR {
    group_label: "Anuales"
    label: "TOTAL QTY YEAR"
    type: number
    sql: ${NATIONAL_QTY_YTD} + ${EXPORT_QTY_YTD} ;;
    drill_fields: [ Client,NATIONAL_QTY_YTD,EXPORT_QTY_MTD,TOTAL_QTY_YEAR]
    value_format: "#,##0"
  }



  measure: NATIONAL_QTY_YTD_LY {
    group_label: "Anuales"
    label: "NATIONAL QTY_YTD_LY"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
      field: periodo_year_anterior
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ Client,NATIONAL_QTY_YTD_LY]
    value_format: "#,##0"
  }


  measure: EXPORT_QTY_YTD_LY {
    group_label: "Anuales"
    label: "EXPORT QTY_yTD LY"
    type: sum
    sql: ${bill_qty};;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: periodo_year_anterior
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_QTY_YTD_LY]
    value_format: "#,##0.00"
  }


  measure: TOTAL_QTY_YEARL_LY {
    group_label: "Anuales"
    label: "TOTAL QTY AÑO LY"
    type: number
    sql: ${NATIONAL_QTY_YTD_LY} + ${EXPORT_QTY_YTD_LY} ;;

    drill_fields: [ Client,NATIONAL_QTY_YTD_LY,EXPORT_QTY_YTD_LY,TOTAL_QTY_YEARL_LY]
    value_format: "#,##0.00"
  }


  measure: _VS_YEAR_ANT_QTY_T_YEAR {
    group_label: "Anuales"
    label: "% VS AÑO ANT QTY T"
    type: number
    sql: CASE WHEN ${TOTAL_QTY_YEAR} > 0 AND ${TOTAL_QTY_YEARL_LY} = 0 THEN 1
              WHEN ${TOTAL_QTY_YEAR} = 0 AND ${TOTAL_QTY_YEARL_LY} > 0 THEN -1
              WHEN (${TOTAL_QTY_YEAR}/NULLIF(${TOTAL_QTY_YEARL_LY},0))-1  = 0 THEN 0 ELSE (${TOTAL_QTY_YEAR}/NULLIF(${TOTAL_QTY_YEARL_LY},0))-1   END *100;;
    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_QTY_YEAR,TOTAL_QTY_YEARL_LY,_VS_YEAR_ANT_QTY_T_YEAR]

  }

  measure: NATIONAL_BUD_QTY_YTD {
    group_label: "Anuales"
    label: "NATIONAL BUD QTY YTD"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
      field: periodo_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "A00"]
    drill_fields: [ Client,NATIONAL_BUD_QTY_YTD]
  }

  measure: EXPORT_BUD_QTY_YTD {
    group_label: "Anuales"
    label: "EXPORT BUD QTY YTD"
    type: sum
    sql: ${bill_qty} ;;
    filters: [distr_chan: "20"]
    filters: [version: "A00"]
    filters: {
      field: periodo_year
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_BUD_QTY_YTD]
    value_format: "#,##0.00"
  }



  measure: BUD_TOTAL_QTY_YEAR {
    group_label: "Anuales"
    label: "BUD TOTAL QTY YEAR"
    type: number
    sql: ${NATIONAL_BUD_QTY_YTD} + ${EXPORT_BUD_QTY_YTD} ;;
    #[#NATIONAL BUD QTY MTD]+ [#EXPORT BUD QTY MTD]

    drill_fields: [ Client,NATIONAL_BUD_QTY_YTD,EXPORT_BUD_QTY_YTD,BUD_TOTAL_QTY_YEAR]
    value_format: "#,##0"
  }


  measure: VS_BUD_QTY_T_YEAR {
    group_label: "Anuales"
    label: "% VS BUD QTY T YEAR"
    type: number
    sql: CASE WHEN ${TOTAL_QTY_YEAR} > 0 AND ${BUD_TOTAL_QTY_YEAR} = 0 THEN 1
              WHEN ${TOTAL_QTY_YEAR} = 0 AND ${BUD_TOTAL_QTY_YEAR} > 0 THEN -1
              WHEN (${TOTAL_QTY_YEAR} /  NULLIF (${BUD_TOTAL_QTY_YEAR},0))-1= 0 THEN 0 ELSE (${TOTAL_QTY_YEAR} /  NULLIF (${BUD_TOTAL_QTY_YEAR},0))-1
             END *100 ;;
    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_QTY_YEAR,BUD_TOTAL_QTY_YEAR,VS_BUD_QTY_T_YEAR]

  }


  measure: NATIONAL_AMOUNT_YTD {
    group_label: "Anuales"
    label: "NATIONAL AMOUNT YTD"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: periodo_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ category_orden,Client,NATIONAL_AMOUNT_YTD]
    value_format: "#,##0.00"
  }

  measure: EXPORT_AMOUNT_YTD {
    group_label: "Anuales"
    label: "EXPORT AMOUNT YTD"
    type: sum
    sql: ${znetval} ;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: periodo_year
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_AMOUNT_MTD]
    value_format: "#,##0.00"

  }


  measure: TOTAL_AMOUNT_YEAR {
    group_label: "Anuales"
    label: "TOTAL AMOUNT"
    type: number
    sql: ${NATIONAL_AMOUNT_YTD} + ${EXPORT_AMOUNT_YTD} ;;
    #[#NATIONAL AMOUNT MTD]+[#EXPORT AMOUNT MTD]

    drill_fields: [ Client,NATIONAL_AMOUNT_YTD,EXPORT_AMOUNT_YTD,TOTAL_AMOUNT_YEAR]
    value_format: "#,##0.00"
  }

  measure: NATIONAL_AMOUNT_YTD_YEAR_ANT_YEAR{
    label: "NATIONAL AMOUNT YTD AÑO ANT"
    group_label: "Anuales"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: periodo_year_anterior
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ Client,NATIONAL_AMOUNT_YTD_YEAR_ANT_YEAR]
    value_format: "#,##0.00"
  }

  measure: EXPORT_AMOUNT_YTD_YEAR_ANT_YEAR {
    group_label: "Anuales"
    label: "EXPORT AMOUNT YTD AÑO ANT"

    type: sum
    sql: ${znetval} ;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: periodo_year_anterior
      value: "yes"
    }
    drill_fields: [ Client,EXPORT_AMOUNT_YTD_YEAR_ANT_YEAR]
    value_format: "#,##0.00"
  }


  measure:  TOTAL_AMOUNT_YEAR_ANT_YEAR {
    group_label: "Anuales"
    label: "TOTAL AMOUNT AÑO ANT"
    type: number
    sql: ${NATIONAL_AMOUNT_YTD_YEAR_ANT_YEAR} + ${EXPORT_AMOUNT_YTD_YEAR_ANT_YEAR} ;;

    drill_fields: [ Client,NATIONAL_AMOUNT_YTD_YEAR_ANT_YEAR,EXPORT_AMOUNT_YTD_YEAR_ANT_YEAR,TOTAL_AMOUNT_YEAR_ANT_YEAR]
    value_format: "#,##0.00"
  }

  measure: VS_YEAR_ANT_VAL_T_YEAR {
    group_label: "Anuales"
    label: "% VS AÑO ANT VAL YEAR"
    type: number
    sql: CASE WHEN ${TOTAL_AMOUNT_YEAR} > 0 AND ${TOTAL_AMOUNT_YEAR_ANT_YEAR} = 0 THEN 1
              WHEN ${TOTAL_AMOUNT_YEAR} = 0 AND ${TOTAL_AMOUNT_YEAR_ANT_YEAR} > 0 THEN -1
              WHEN (${TOTAL_AMOUNT_YEAR} /  NULLIF (${TOTAL_AMOUNT_YEAR_ANT_YEAR},0))-1 = 0 THEN 0 ELSE (${TOTAL_AMOUNT_YEAR} /  NULLIF (${TOTAL_AMOUNT_YEAR_ANT_YEAR},0))-1
             END *100;;
    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_AMOUNT_YEAR,TOTAL_AMOUNT_YEAR_ANT_YEAR,VS_YEAR_ANT_VAL_T_YEAR]

  }


  measure: z_BUD_NATIONAL_AMOUNT_YEAR{
    group_label: "Anuales"
    label: "z BUD NATIONAL AMOUNT"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: periodo_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "A00"]

    drill_fields: [ Client,z_BUD_NATIONAL_AMOUNT_YEAR]
    value_format: "#,##0.00"
  }


  measure: z_BUD_EXPORT_AMOUNT_YEAR {
    group_label: "Anuales"
    label: "z BUD EXPORT AMOUNT YEAR"

    type: sum
    sql: ${znetval} ;;
    filters: {
      field: periodo_year
      value: "yes"
    }
    filters: [distr_chan: "20"]
    filters: [version: "A00"]

    drill_fields: [ Client,z_BUD_EXPORT_AMOUNT_YEAR]
    value_format: "#,##0.00"
  }


  measure:  BUD_TOTAL_AMOUNT_YEAR_YEAR{
    group_label: "Anuales"
    label: "BUD TOTAL AMOUNT"
    type: number
    sql: ${z_BUD_NATIONAL_AMOUNT_YEAR} + ${z_BUD_EXPORT_AMOUNT_YEAR} ;;

    #[#Z_BUD  NATIONAL AMOUNT]+ [#Z_BUD  EXPORT AMOUNT]

    drill_fields: [ Client,BUD_TOTAL_AMOUNT_YEAR_YEAR]
    value_format: "#,##0.00"
  }


  measure: VS_BUD_T_YEAR {
    group_label: "Anuales"
    label: "% VS BUD T"
    type: number
    sql: CASE WHEN ${TOTAL_AMOUNT_YEAR} > 0 AND ${BUD_TOTAL_AMOUNT_YEAR_YEAR} = 0 THEN 1
              WHEN ${TOTAL_AMOUNT_YEAR} = 0 AND ${BUD_TOTAL_AMOUNT_YEAR_YEAR} > 0 THEN -1
              WHEN (${TOTAL_AMOUNT_YEAR} /  NULLIF (${BUD_TOTAL_AMOUNT_YEAR_YEAR},0))-1=-1 THEN 0 ELSE (${TOTAL_AMOUNT_YEAR} /  NULLIF (${BUD_TOTAL_AMOUNT_YEAR_YEAR},0))-1
             END * 100;;
    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_AMOUNT_YEAR,BUD_TOTAL_AMOUNT_YEAR_YEAR,VS_BUD_T_YEAR]

  }





#################################################################### CALCULOS aNUALES ##################################################################

}
