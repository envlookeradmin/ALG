view: rpt_alg {
  derived_table: {
    sql: SELECT V.STAT_CURR,
          V.MATL_GROUP,
          V.BILL_QTY,
          V.znetval,
          V.SOLD_TO,
          V.PRODH1,
          V.SALES_GRP,
          V.SALES_OFF,
          V.ZIOSD00A,
          V.VERSION,
          V.PLANT,
          V.MATERIAL,
          V.DISTR_CHAN,
          V.SALESORG,
          V.CALDAY,
          V.BASE_UOM,
          CASE
              WHEN V.CATEGORY = 'TOTAL MONEDA ORIGEN' THEN V.CATEGORY || ' ' || V.STAT_CURR
              ELSE V.CATEGORY
          END CATEGORY,
          V.CLIENT,
          CAST(c.DATE AS TIMESTAMP) Fecha,
          c.QUARTER,
          c.YEAR,
          0 UKURS,
          '' FCURR,
          DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION,
          v.CLUSTER || ' (' || V.STAT_CURR || ')' CATEGORY2,
          CASE
              WHEN (V.CATEGORY = 'TOTAL MONEDA ORIGEN')
              OR (
                  V.SALESORG IN ('MXF1', 'MXFC')
                  and V.CATEGORY NOT IN ('Cubeta de Plastico')
              ) THEN 1
              ELSE 0
          END SUMMARY_FLAG,
          V.PLANT_COUNTRY,
          V.CLUSTER
      FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY = c.CALDAY
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.REGIONES r ON v.SALESORG = r.SALESORGANIZATION
      WHERE CATEGORY NOT IN ('TOTAL MXN')
      UNION ALL
      --CARGA TOTAL MXN DE MÉXICO
      SELECT V.STAT_CURR,
          V.MATL_GROUP,
          V.BILL_QTY,
          V.znetval,
          V.SOLD_TO,
          V.PRODH1,
          V.SALES_GRP,
          V.SALES_OFF,
          V.ZIOSD00A,
          V.VERSION,
          V.PLANT,
          V.MATERIAL,
          V.DISTR_CHAN,
          V.SALESORG,
          V.CALDAY,
          V.BASE_UOM,
          V.CATEGORY,
          V.CLIENT,
          CAST(c.DATE AS TIMESTAMP) Fecha,
          c.QUARTER,
          c.YEAR,
          0 UKURS,
          '' TCURR,
          DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION,
          'TOTAL MXN' CATEGORY2,
          1 SUMMARY_FLAG,
          V.PLANT_COUNTRY,
          V.CLUSTER
      FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY = c.CALDAY
      WHERE CATEGORY in ('TOTAL MXN')
          and SALESORG in ("MXF1", "MXFC")
      UNION ALL
      --CARGA TOTAL MXN DE TODO LO QUE NO ES MXN
      SELECT V.STAT_CURR,
          V.MATL_GROUP,
          V.BILL_QTY,
          V.znetval * UKURS znetval,
          V.SOLD_TO,
          V.PRODH1,
          V.SALES_GRP,
          V.SALES_OFF,
          V.ZIOSD00A,
          V.VERSION,
          V.PLANT,
          V.MATERIAL,
          V.DISTR_CHAN,
          V.SALESORG,
          V.CALDAY,
          V.BASE_UOM,
          'TOTAL MXN' CATEGORY,
          V.CLIENT,
          CAST(c.DATE AS TIMESTAMP) Fecha,
          c.QUARTER,
          c.YEAR,
          mo.UKURS,
          mo.FCURR,
          DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION,
          'TOTAL MXN' CATEGORY2,
          1 SUMMARY_FLAG,
          V.PLANT_COUNTRY,
          V.CLUSTER
      FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY = c.CALDAY
          LEFT JOIN (
              SELECT CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING) AS CALDAY,
                  TRIM(FCURR) FCURR,
                  TRIM(TCURR) TCURR,
                  CASE
                      WHEN UKURS < 0 then 1 / (UKURS * -1)
                      ELSE UKURS
                  END UKURS,
                  c.date
              FROM envases-analytics-eon-poc.DATASET_RAW.ECC_PROD_TCURR
                  left join envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on c.CALDAY = CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING)
              WHERE TRIM(FCURR) IN ('USD', 'EUR', 'DKK', 'GTQ', 'CAD')
                  AND TRIM(TCURR) = 'MXN'
                  AND TRIM(KURST) = 'M'
                  AND c.DATE = CAST({% date_start date_filter %} AS DATE)
          ) mo on v.STAT_CURR = mo.FCURR
      WHERE CATEGORY = 'TOTAL MONEDA ORIGEN'
      UNION ALL
      --CARGA TOTAL USD
      SELECT V.STAT_CURR,
          V.MATL_GROUP,
          V.BILL_QTY,
          CASE
              WHEN mo.UKURS IS NULL THEN V.znetval
              ELSE V.znetval * mo.UKURS
          END znetval,
          V.SOLD_TO,
          V.PRODH1,
          V.SALES_GRP,
          V.SALES_OFF,
          V.ZIOSD00A,
          V.VERSION,
          V.PLANT,
          V.MATERIAL,
          V.DISTR_CHAN,
          V.SALESORG,
          V.CALDAY,
          V.BASE_UOM,
          'TOTAL USD' CATEGORY,
          V.CLIENT,
          CAST(c.DATE AS TIMESTAMP) Fecha,
          c.QUARTER,
          c.YEAR,
          mo.UKURS,
          mo.FCURR,
          DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION,
          'TOTAL USD' CATEGORY2,
          1 SUMMARY_FLAG,
          V.PLANT_COUNTRY,
          V.CLUSTER
      FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY = c.CALDAY
          LEFT JOIN (
              SELECT CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING) AS CALDAY,
                  TRIM(FCURR) FCURR,
                  TRIM(TCURR) TCURR,
                  CASE
                      WHEN UKURS < 0 then 1 / (UKURS * -1)
                      ELSE UKURS
                  END UKURS,
                  c.date
              FROM envases-analytics-eon-poc.DATASET_RAW.ECC_PROD_TCURR
                  left join envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on c.CALDAY = CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING)
              WHERE TRIM(FCURR) IN ('MXN', 'EUR', 'DKK', 'GTQ', 'CAD')
                  AND TRIM(TCURR) = 'USD'
                  AND TRIM(KURST) = 'M'
                  AND c.DATE = CAST({% date_start date_filter %} AS DATE)
          ) mo on v.STAT_CURR = mo.FCURR
      WHERE CATEGORY = 'TOTAL MONEDA ORIGEN'
          or (
              V.SALESORG IN ('MXF1', 'MXFC')
              AND V.CATEGORY = 'TOTAL MXN'
          )
      UNION ALL
      --CARGA TOTAL EUROPA EN EUR
      SELECT V.STAT_CURR,
          V.MATL_GROUP,
          V.BILL_QTY,
          CASE
              WHEN mo.UKURS IS NULL THEN V.znetval
              ELSE V.znetval * mo.UKURS
          END znetval,
          V.SOLD_TO,
          V.PRODH1,
          V.SALES_GRP,
          V.SALES_OFF,
          V.ZIOSD00A,
          V.VERSION,
          V.PLANT,
          V.MATERIAL,
          V.DISTR_CHAN,
          V.SALESORG,
          V.CALDAY,
          V.BASE_UOM,
          'TOTAL EUR' CATEGORY,
          V.CLIENT,
          CAST(c.DATE AS TIMESTAMP) Fecha,
          c.QUARTER,
          c.YEAR,
          mo.UKURS,
          mo.FCURR,
          DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION,
          'TOTAL EUR' CATEGORY2,
          1 SUMMARY_FLAG,
          V.PLANT_COUNTRY,
          V.CLUSTER
      FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY = c.CALDAY
          LEFT JOIN (
              SELECT CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING) AS CALDAY,
                  TRIM(FCURR) FCURR,
                  TRIM(TCURR) TCURR,
                  CASE
                      WHEN UKURS < 0 then 1 / (UKURS * -1)
                      ELSE UKURS
                  END UKURS,
                  c.date
              FROM envases-analytics-eon-poc.DATASET_RAW.ECC_PROD_TCURR
                  left join envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on c.CALDAY = CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING)
              WHERE TRIM(FCURR) IN ('MXN', 'USD', 'DKK', 'GTQ', 'CAD')
                  AND TRIM(TCURR) = 'EUR'
                  AND TRIM(KURST) = 'M'
                  AND c.DATE = CAST({% date_start date_filter %} AS DATE)
          ) mo on v.STAT_CURR = mo.FCURR
      WHERE CATEGORY = 'TOTAL MONEDA ORIGEN'
          or (
              V.SALESORG IN ('MXF1', 'MXFC')
              AND V.CATEGORY = 'TOTAL MXN'
          )
      UNION ALL
      --CARGA SUBTOTAL AMERICA EN USD
      SELECT V.STAT_CURR,
          V.MATL_GROUP,
          V.BILL_QTY,
          CASE
              WHEN mo.UKURS IS NULL THEN V.znetval
              ELSE V.znetval * mo.UKURS
          END znetval,
          V.SOLD_TO,
          V.PRODH1,
          V.SALES_GRP,
          V.SALES_OFF,
          V.ZIOSD00A,
          V.VERSION,
          V.PLANT,
          V.MATERIAL,
          V.DISTR_CHAN,
          V.SALESORG,
          V.CALDAY,
          V.BASE_UOM,
          'SUB America' CATEGORY,
          V.CLIENT,
          CAST(c.DATE AS TIMESTAMP) Fecha,
          c.QUARTER,
          c.YEAR,
          mo.UKURS,
          mo.FCURR,
          DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION,
          'SUB America (USD)' CATEGORY2,
          2 SUMMARY_FLAG,
          V.PLANT_COUNTRY,
          V.CLUSTER
      FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY = c.CALDAY
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.REGIONES r ON v.SALESORG = r.SALESORGANIZATION
          LEFT JOIN (
              SELECT CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING) AS CALDAY,
                  TRIM(FCURR) FCURR,
                  TRIM(TCURR) TCURR,
                  CASE
                      WHEN UKURS < 0 then 1 / (UKURS * -1)
                      ELSE UKURS
                  END UKURS,
                  c.date
              FROM envases-analytics-eon-poc.DATASET_RAW.ECC_PROD_TCURR
                  left join envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on c.CALDAY = CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING)
              WHERE TRIM(FCURR) IN ('MXN', 'EUR', 'DKK', 'GTQ', 'CAD')
                  AND TRIM(TCURR) = 'USD'
                  AND TRIM(KURST) = 'M'
                  AND c.DATE = CAST({% date_start date_filter %} AS DATE)
          ) mo on v.STAT_CURR = mo.FCURR
      WHERE (
              CATEGORY = 'TOTAL MONEDA ORIGEN'
              or (
                  V.SALESORG IN ('MXF1', 'MXFC')
                  AND V.CATEGORY = 'TOTAL MXN'
              )
          )
          AND r.REGION = 'America'
      UNION ALL
      --CARGA SUBTOTAL EUROPA EN EUR
      SELECT V.STAT_CURR,
          V.MATL_GROUP,
          V.BILL_QTY,
          CASE
              WHEN mo.UKURS IS NULL THEN V.znetval
              ELSE V.znetval * mo.UKURS
          END znetval,
          V.SOLD_TO,
          V.PRODH1,
          V.SALES_GRP,
          V.SALES_OFF,
          V.ZIOSD00A,
          V.VERSION,
          V.PLANT,
          V.MATERIAL,
          V.DISTR_CHAN,
          V.SALESORG,
          V.CALDAY,
          V.BASE_UOM,
          'SUB Europa' CATEGORY,
          V.CLIENT,
          CAST(c.DATE AS TIMESTAMP) Fecha,
          c.QUARTER,
          c.YEAR,
          mo.UKURS,
          mo.FCURR,
          DATE_ADD(CURRENT_DATE(), INTERVAL -1 DAY) ACTUALIZACION,
          'SUB Europa (EUR)' CATEGORY2,
          2 SUMMARY_FLAG,
          V.PLANT_COUNTRY,
          V.CLUSTER
      FROM envases-analytics-eon-poc.ENVASES_REPORTING.rpt_ventas v
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on v.CALDAY = c.CALDAY
          LEFT JOIN envases-analytics-eon-poc.ENVASES_REPORTING.REGIONES r ON v.SALESORG = r.SALESORGANIZATION
          LEFT JOIN (
              SELECT CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING) AS CALDAY,
                  TRIM(FCURR) FCURR,
                  TRIM(TCURR) TCURR,
                  CASE
                      WHEN UKURS < 0 then 1 / (UKURS * -1)
                      ELSE UKURS
                  END UKURS,
                  c.date
              FROM envases-analytics-eon-poc.DATASET_RAW.ECC_PROD_TCURR
                  left join envases-analytics-eon-poc.ENVASES_REPORTING.CALENDAR c on c.CALDAY = CAST(99999999 - CAST(GDATU AS NUMERIC) AS STRING)
              WHERE TRIM(FCURR) IN ('MXN', 'USD', 'DKK', 'GTQ', 'CAD')
                  AND TRIM(TCURR) = 'EUR'
                  AND TRIM(KURST) = 'M'
                  AND c.DATE = CAST({% date_start date_filter %} AS DATE)
          ) mo on v.STAT_CURR = mo.FCURR
      WHERE CATEGORY = 'TOTAL MONEDA ORIGEN'
          AND r.REGION = 'Europa'

      ;;
  }


  dimension_group: created {
    label: "Date"
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

  dimension: vacio_1 {
    type: string
    sql: ' ' ;;
    html:  <div class="ag-header-cell ag-header-cell-wrap-text ag-focus-managed" col-id="rpt_alg.vacio_1" style="background-color:#83FF33"> </div>;;
  }

  dimension: vacio_2 {
    type: string
    sql: ' ' ;;
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
    label: "Customer"
    type: string
    sql: ${TABLE}.CLIENT ;;
  }

  dimension: stat_curr {
    label: "Currency Type"
    type: string
    sql: ${TABLE}.STAT_CURR ;;
  }

  dimension: category {
    type: string
    # sql: case when ${TABLE}.CATEGORY is null then 'Otros' else ${TABLE}.CATEGORY  end ;;
    sql:  ${TABLE}.CATEGORY ;;

    html: {% if value == 'TOTAL MONEDA ORIGEN USD' or
                value == 'TOTAL MONEDA ORIGEN DKK' or
                value == 'TOTAL MONEDA ORIGEN EUR' or
                value == 'TOTAL MONEDA ORIGEN GTQ' or
                value == 'TOTAL MONEDA ORIGEN CAD' or
                value == 'TOTAL MXN' or
                value == 'TOTAL USD' or
                value == 'TOTAL EUR'
      %}
      <p style="color: white; background-color: #5e2129; font-size:100%; text-align:left">{{ rendered_value }}</p>
      {% else %}
      <p style="">{{ rendered_value }}</p>
      {% endif %} ;;

  }

  dimension: countries {
    case: {
      when: {
        sql: ${TABLE}.SALESORG = "DE00" ;;
        label: "Germany"
      }
      when: {
        sql: ${TABLE}.SALESORG = "NLF1" ;;
        label: "Netherland"
      }
      when: {
        sql: ${TABLE}.SALESORG = "3100" ;;
        label: "Canada"
      }
      when: {
        sql: ${TABLE}.SALESORG in ( "MXF1","MXFC") ;;
        label: "Mexico"
      }
      when: {
        sql: ${TABLE}.SALESORG in ( "GTF1") ;;
        label: "Guatemala"
      }
      when: {
        sql: ${TABLE}.SALESORG in ( "DKF1","DKF3","SEF1","USF2") ;;
        label: "Denmark"
      }
      when: {
        sql: ${TABLE}.SALESORG in ( "USF1") ;;
        label: "USA"
      }

      else: "Others"
    }
  }

  dimension: sort_country {
    type: string
    sql:
    case
      when ${TABLE}.SALESORG = "DE00" then "B02"
      when ${TABLE}.SALESORG in ("NLF1", "2000") then "B04"
      when ${TABLE}.SALESORG = "3100" then "A03"
      when ${TABLE}.SALESORG in ( "MXF1","MXFC") then "A01"
      when ${TABLE}.SALESORG in ( "GTF1") then "A04"
      when ${TABLE}.SALESORG in ( "DKF1","DKF3","SEF1","USF2") then "B01"
      when ${TABLE}.SALESORG in ( "USF1") then "A02"
      when ${TABLE}.SALESORG in ( "1000") then "B03"
      else "C00" end ;;
  }

  dimension: sort_category {
    label: "sort_category_mexico"
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

  dimension: sort_category_denmark {
    type: string
    sql: case

                    when ${TABLE}.CATEGORY="Mediapack" then "a01"
                    when ${TABLE}.CATEGORY="Catering" then "a02"
                    when ${TABLE}.CATEGORY="Fish" then "a03"
                    when ${TABLE}.CATEGORY="Ham" then "a04"
                    when ${TABLE}.CATEGORY="Luncheon" then "a05"
                    when ${TABLE}.CATEGORY="Pullman" then "a06"
                    when ${TABLE}.CATEGORY="Roundfood" then "a07"
                    when ${TABLE}.CATEGORY="Beverage" then "a08"
                    when ${TABLE}.CATEGORY="Dekopak" then "a09"
                    when ${TABLE}.CATEGORY="Feta" then "a10"
                    when ${TABLE}.CATEGORY="Milkpowder" then "a11"
                    when ${TABLE}.CATEGORY="PockIt" then "a12"
                    when ${TABLE}.CATEGORY="PeelOff" then "a13"
                    when ${TABLE}.CATEGORY="Super" then "a14"
                    when ${TABLE}.CATEGORY="Other" then "a15"

      when ${TABLE}.CATEGORY="TOTAL MONEDA ORIGEN" then "Z1"
      when ${TABLE}.CATEGORY="TOTAL MXN" then "Z2" else "b"  end ;;
  }

  dimension: category2 {
    type: string
    label: "Country"
    sql: ${TABLE}.CATEGORY2 ;;
    html: {% if value == 'TOTAL MXN' or
          value == 'TOTAL USD' or
          value == 'TOTAL EUR'
          %}
        <p style="color: white; background-color: #5e2129; font-size:100%; text-align:left">{{ rendered_value }}</p>
        {% elsif value == 'SUB America (USD)' or
          value == 'SUB Europa (EUR)'
          %}
        <p style="color: white; background-color: #ab716f; font-size:100%; text-align:left">{{ rendered_value }}</p>
        {% else %}
        <p style="">{{ rendered_value }}</p>
        {% endif %} ;;
  }

  dimension: sort_category2 {
    type: string
    sql:
    case
      when ${TABLE}.CATEGORY2 = "MEXICO (MXN)" then "A01"
      when ${TABLE}.CATEGORY2 = "USA (USD)" then "A02"
      when ${TABLE}.CATEGORY2 = "CANADA (CAD)" then "A03"
      when ${TABLE}.CATEGORY2 = "GUATEMALA (GTQ)" then "A04"
      when ${TABLE}.CATEGORY2 = "SUB America (USD)" then "AZ1"
      when ${TABLE}.CATEGORY2 = "ECN - NORTH (DKK)" then "E01"
      when ${TABLE}.CATEGORY2 = "ECC - NORTH (USD)" then "E02"
      when ${TABLE}.CATEGORY2 = "ECC - CENTRAL (EUR)" then "E03"
      when ${TABLE}.CATEGORY2 = "ECW - WEST (EUR)" then "E04"
      when ${TABLE}.CATEGORY2 = "ECS - SOUTH (EUR)" then "E04"
      when ${TABLE}.CATEGORY2 = "SUB Europa (EUR)" then "EZ1"
      when ${TABLE}.CATEGORY2 = "TOTAL MXN" then "Z01"
      when ${TABLE}.CATEGORY2 = "TOTAL USD" then "Z02"
      when ${TABLE}.CATEGORY2 = "TOTAL EUR" then "Z03"
      else "ZZZ" end ;;
  }

  dimension: summary_flag {
    type: number
    sql: ${TABLE}.SUMMARY_FLAG ;;
  }

  dimension: plant_country {
    type: string
    sql: ${TABLE}.PLANT_COUNTRY ;;
  }

  dimension: cluster {
    type: string
    sql: ${TABLE}.CLUSTER ;;
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
    label: "Date filter"
    type: string
    sql: CAST({% date_start date_filter %} AS DATE) ;;
  }

  dimension: year {
    label: "Year"
    type: number
    sql: ${TABLE}.YEAR ;;
  }

  dimension: actualizacion {
    type: date
    sql: ${TABLE}.ACTUALIZACION ;;
  }



################################################################### FILTROS DE TIEMPO ######################################################

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
  dimension: is_current_period{
    hidden: yes
    type: yesno
    sql: DATE_TRUNC(CAST(${created_date} AS DATE),DAY) >=DATE_ADD(DATE_ADD(LAST_DAY(CAST({% date_start date_filter %} AS DATE)), INTERVAL 1 DAY),INTERVAL -1 MONTH) AND DATE_TRUNC(CAST(${created_date} AS DATE),DAY) <= DATE_ADD((CAST({% date_start date_filter %} AS DATE)),INTERVAL -0 day)  ;;
    #sql: DATE_TRUNC(CAST(${created_date} AS DATE),DAY)>=DATE_ADD(DATE_ADD(LAST_DAY(CAST({% date_start date_filter %} AS DATE)), INTERVAL 1 DAY),INTERVAL -1 MONTH)    ;;
    #sql:DATE_TRUNC(CAST(${created_date} AS DATE),YEAR) =  DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR)  and DATE_TRUNC(CAST(${created_date} AS DATE),MONTH) = DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH) ;;
    #LAST_DAY
  }


  dimension: is_previous_period{
    hidden: yes
    type: yesno
    sql: DATE_TRUNC(CAST(${created_date} AS DATE),DAY) >=DATE_ADD(DATE_ADD(LAST_DAY(     DATE_ADD( CAST({% date_start date_filter %} AS DATE) ,INTERVAL -1 YEAR)        ), INTERVAL 1 DAY),INTERVAL -1 MONTH) AND DATE_TRUNC(CAST(${created_date} AS DATE),DAY) <= DATE_ADD(   DATE_ADD( CAST({% date_start date_filter %} AS DATE) ,INTERVAL -1 YEAR)    ,INTERVAL -0 day)  ;;
    # sql:DATE_TRUNC(CAST(${created_date} AS DATE),YEAR) =  DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR) -1  and   DATE_TRUNC(CAST(${created_date} AS DATE),MONTH) = DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH) ;;

  }
  ##################Mes ############################


  ##################Año ############################


  dimension: is_current_year {
    hidden: yes
    type: yesno
    sql: ${created_date} >= CAST(CONCAT(CAST(EXTRACT(YEAR FROM DATE ({% date_start date_filter %})) AS STRING),"-01-01")  AS DATE) and  ${created_date} <= DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), DAY)   ;;
    #DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR);;  FECHA         DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH)
  }

  dimension: is_previous_year {
    hidden: yes
    type: yesno
    sql: ${created_date} >= CAST(CONCAT(CAST(EXTRACT(YEAR FROM DATE ({% date_start date_filter %})) -1 AS STRING),"-01-01")  AS DATE) and  ${created_date} <= DATE_ADD(DATE_ADD( DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), DAY),INTERVAL -1 year),INTERVAL -0 day)   ;;
    #DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), YEAR);;  FECHA         DATE_TRUNC(CAST({% date_start date_filter %} AS DATE), MONTH)
  }

  ##################Año ############################

################################################################### FILTROS DE TIEMPO ######################################################

  filter: date_filter {
    label: "Períod"
    description: "Use this date filter in combination with the timeframes dimension for dynamic date filtering"
    type: date
    # default_value: "6 weeks"

  }


################################################################### CALCULOS DIARIOS ######################################################

  measure: SALES_DAY {
    group_label: "Daily"
    label: "SALES YESTERDAY"
    type: sum
    sql: ${bill_qty} ;;

    filters: {
      field: periodo_dia_anterior
      value: "yes"
    }


    filters: [distr_chan: "10"]
    filters: [version: "000"]

    drill_fields: [ Client,SALES_DAY]

    value_format: "#,##0"
  }

  measure: ult_act {
    type: date
    label: "Update date"
    sql: MAX(${actualizacion});;
    convert_tz: no
  }



#################################################################### INICIO CALCULOS MENSUALES ##################################################################


  measure: NATIONAL_QTY_MTD {
    group_label: "Monthly"
    label: "NATIONAL QTY MTD"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;

    filters: {
      field: is_current_period
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]

    drill_fields: [ Client,NATIONAL_QTY_MTD]

    value_format: "#,##0"
  }

  measure: EXPORT_QTY_MTD {
    group_label: "Monthly"
    label: "EXPORT QTY MTD"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;

    filters: {
      field: is_current_period
      value: "yes"
    }

    filters: [distr_chan: "20"]
    filters: [version: "000"]

    drill_fields: [ Client,EXPORT_QTY_MTD]
    value_format: "#,##0"
  }

  measure: TOTAL_QTY_MTD {
    group_label: "Monthly"
    label: "TOTAL QTY MTD"
    type: number
    sql: ${NATIONAL_QTY_MTD} + ${EXPORT_QTY_MTD} ;;
    drill_fields: [ Client,NATIONAL_QTY_MTD,EXPORT_QTY_MTD,TOTAL_QTY_MTD]
    value_format: "#,##0"
  }



  measure: NATIONAL_QTY_MTD_LY {
    group_label: "Monthly"
    label: "NATIONAL QTY MTD LY"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END;;

    filters: {
      field: is_previous_period
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ Client,NATIONAL_QTY_MTD_LY]
    value_format: "#,##0"
  }


  measure: EXPORT_QTY_MTD_LY {
    group_label: "Monthly"
    label: "EXPORT QTY MTD LY"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: is_previous_period
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_QTY_MTD_LY]
    value_format: "#,##0.00"
  }


  measure: TOTAL_QTY_MTD_LY {
    group_label: "Monthly"
    label: "TOTAL QTY MTD LY"
    type: number
    sql: ${NATIONAL_QTY_MTD_LY} + ${EXPORT_QTY_MTD_LY} ;;

    drill_fields: [ Client,NATIONAL_QTY_MTD_LY,EXPORT_QTY_MTD_LY,TOTAL_QTY_MTD_LY]
    value_format: "#,##0.00"
  }


  measure: VS_T_QTY_MTD_LY {
    group_label: "Monthly"
    label: "% VS T QTY MTD LY"
    type: number
    sql: CASE WHEN ${TOTAL_QTY_MTD} > 0 AND ${TOTAL_QTY_MTD_LY} = 0 THEN 1
              WHEN ${TOTAL_QTY_MTD} = 0 AND ${TOTAL_QTY_MTD_LY} > 0 THEN -1
              WHEN (${TOTAL_QTY_MTD}/NULLIF(${TOTAL_QTY_MTD_LY},0))-1  = 0 THEN 0
              ELSE (${TOTAL_QTY_MTD}/NULLIF(${TOTAL_QTY_MTD_LY},0))-1   END *100;;

    html:
    {% if value > 0 %}
    <span style="color: green;">{{ rendered_value }}</span></p>
    {% elsif  value < 0 %}
    <span style="color: red;">{{ rendered_value }}</span></p>
    {% elsif  value == 0 %}
    {{rendered_value}}
    {% else %}
    {{rendered_value}}
    {% endif %} ;;

    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_QTY_MTD,TOTAL_QTY_MTD_LY,VS_T_QTY_MTD_LY]

  }

  measure: NATIONAL_QTY_BUD_MTD {
    group_label: "Monthly"
    label: "NATIONAL QTY BUD MTD"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;

    filters: {
      field: is_current_period
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "A00"]
    drill_fields: [ Client,NATIONAL_QTY_BUD_MTD]
  }

  measure: EXPORT_QTY_BUD_MTD {
    group_label: "Monthly"
    label: "EXPORT QTY BUD MTD"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;
    filters: [distr_chan: "20"]
    filters: [version: "A00"]
    filters: {
      field: is_current_period
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_QTY_BUD_MTD]
    value_format: "#,##0.00"
  }

  measure: T_QTY_BUD_MTD {
    group_label: "Monthly"
    label: "T QTY BUD MTD"
    type: number
    sql: ${NATIONAL_QTY_BUD_MTD} + ${EXPORT_QTY_BUD_MTD} ;;
    #[#NATIONAL BUD QTY MTD]+ [#EXPORT BUD QTY MTD]

    drill_fields: [ Client,NATIONAL_QTY_BUD_MTD,EXPORT_QTY_BUD_MTD,T_QTY_BUD_MTD]
    value_format: "#,##0"
  }


  measure: VS_T_QTY_BUD_MTD {

    group_label: "Monthly"
    label: "% VS T QTY BUD MTD"
    type: number
    sql: CASE WHEN ${TOTAL_QTY_MTD} > 0 AND ${T_QTY_BUD_MTD} = 0 THEN 1
              WHEN ${TOTAL_QTY_MTD} = 0 AND ${T_QTY_BUD_MTD} > 0 THEN -1
              WHEN (${TOTAL_QTY_MTD} /  NULLIF (${T_QTY_BUD_MTD},0))-1= 0 THEN 0
              ELSE (${TOTAL_QTY_MTD} /  NULLIF (${T_QTY_BUD_MTD},0))-1
             END *100 ;;

    html:
    {% if value > 0 %}
    <span style="color: green;">{{ rendered_value }}</span></p>
    {% elsif  value < 0 %}
    <span style="color: red;">{{ rendered_value }}</span></p>
    {% elsif  value == 0 %}
    {{rendered_value}}
    {% else %}
    {{rendered_value}}
    {% endif %} ;;

    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_QTY_MTD,T_QTY_BUD_MTD,VS_T_QTY_BUD_MTD]

  }


  measure: NATIONAL_AMOUNT_MTD {
    group_label: "Monthly"
    label: "NATIONAL AMOUNT MTD"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: is_current_period
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ sort_category,Client,NATIONAL_AMOUNT_MTD]
    value_format: "#,##0.00"
  }

  measure: EXPORT_AMOUNT_MTD {
    group_label: "Monthly"
    label: "EXPORT AMOUNT MTD"
    type: sum
    sql: ${znetval} ;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: is_current_period
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_AMOUNT_MTD]
    value_format: "#,##0.00"

  }


  measure: TOTAL_AMOUNT_MTD {
    group_label: "Monthly"
    label: "TOTAL AMOUNT MTD"
    type: number
    sql: ${NATIONAL_AMOUNT_MTD} + ${EXPORT_AMOUNT_MTD} ;;
    #[#NATIONAL AMOUNT MTD]+[#EXPORT AMOUNT MTD]

    drill_fields: [ Client,NATIONAL_AMOUNT_MTD,EXPORT_AMOUNT_MTD,TOTAL_AMOUNT_MTD]
    value_format: "#,##0.00"
  }

  measure: NATIONAL_AMOUNT_MTD_LY{
    group_label: "Monthly"
    label: "NATIONAL_AMOUNT_MTD_LY"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: is_previous_period
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ Client,NATIONAL_AMOUNT_MTD_LY]
    value_format: "#,##0.00"
  }

  measure: EXPORT_AMOUNT_MTD_LY {
    group_label: "Monthly"
    label: "EXPORT AMOUNT MTD LY"

    type: sum
    sql: ${znetval} ;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: is_previous_period
      value: "yes"
    }
    drill_fields: [ Client,EXPORT_AMOUNT_MTD_LY]
    value_format: "#,##0.00"
  }


  measure:  TOTAL_AMOUNT_MTD_LY {
    group_label: "Monthly"
    label: "TOTAL AMOUNT MTD LY"
    type: number
    sql: ${NATIONAL_AMOUNT_MTD_LY} + ${EXPORT_AMOUNT_MTD_LY} ;;

    drill_fields: [ Client,NATIONAL_AMOUNT_MTD_LY,EXPORT_AMOUNT_MTD_LY,TOTAL_AMOUNT_MTD_LY]
    value_format: "#,##0.00"
  }

  measure: VS_T_AMOUNT_MTD_LY {
    group_label: "Monthly"
    label: "% VS T AMOUNT MTD LY"
    type: number
    sql: CASE WHEN ${TOTAL_AMOUNT_MTD} > 0 AND ${TOTAL_AMOUNT_MTD_LY} = 0 THEN 1
              WHEN ${TOTAL_AMOUNT_MTD} = 0 AND ${TOTAL_AMOUNT_MTD_LY} > 0 THEN -1
              WHEN (${TOTAL_AMOUNT_MTD} /  NULLIF (${TOTAL_AMOUNT_MTD_LY},0))-1 = 0 THEN 0
              ELSE (${TOTAL_AMOUNT_MTD} /  NULLIF (${TOTAL_AMOUNT_MTD_LY},0))-1
             END *100;;

    html:
    {% if value > 0 %}
    <span style="color: green;">{{ rendered_value }}</span></p>
    {% elsif  value < 0 %}
    <span style="color: red;">{{ rendered_value }}</span></p>
    {% elsif  value == 0 %}
    {{rendered_value}}
    {% else %}
    {{rendered_value}}
    {% endif %} ;;

    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_AMOUNT_MTD,TOTAL_AMOUNT_MTD_LY,VS_T_AMOUNT_MTD_LY]

  }


  measure: Z_NATIONAL_AMOUNT_BUD_MTD{
    group_label: "Monthly"
    label: "Z NATIONAL AMOUNT BUD MTD"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: is_current_period
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "A00"]

    drill_fields: [ Client,Z_NATIONAL_AMOUNT_BUD_MTD]
    value_format: "#,##0.00"
  }


  measure: Z_EXPORT_AMOUNT_BUD_MTD {
    group_label: "Monthly"
    label: "Z EXPORT AMOUNT BUD MTD"

    type: sum
    sql: ${znetval} ;;
    filters: {
      field: is_current_period
      value: "yes"
    }
    filters: [distr_chan: "20"]
    filters: [version: "A00"]

    drill_fields: [ Client,Z_EXPORT_AMOUNT_BUD_MTD]
    value_format: "#,##0.00"
  }


  measure:  TOTAL_AMOUNT_BUD_MTD{
    group_label: "Monthly"
    label: "TOTAL AMOUNT BUD MTD"
    type: number
    sql: ${Z_NATIONAL_AMOUNT_BUD_MTD} + ${Z_EXPORT_AMOUNT_BUD_MTD} ;;

    #[#Z_BUD  NATIONAL AMOUNT]+ [#Z_BUD  EXPORT AMOUNT]

    drill_fields: [ Client,TOTAL_AMOUNT_BUD_MTD]
    value_format: "#,##0.00"
  }


  measure: VS_TOTAL_BUD_MTD {
    group_label: "Monthly"
    label: "% VS TOTAL BUD MTD"
    type: number
    sql: CASE WHEN ${TOTAL_AMOUNT_MTD} > 0 AND ${TOTAL_AMOUNT_BUD_MTD} = 0 THEN 1
              WHEN ${TOTAL_AMOUNT_MTD} = 0 AND ${TOTAL_AMOUNT_BUD_MTD} > 0 THEN -1
              WHEN (${TOTAL_AMOUNT_MTD} /  NULLIF (${TOTAL_AMOUNT_BUD_MTD},0))-1=-1 THEN 0
              ELSE (${TOTAL_AMOUNT_MTD} /  NULLIF (${TOTAL_AMOUNT_BUD_MTD},0))-1
             END * 100;;

    html:
    {% if value > 0 %}
    <span style="color: green;">{{ rendered_value }}</span></p>
    {% elsif  value < 0 %}
    <span style="color: red;">{{ rendered_value }}</span></p>
    {% elsif  value == 0 %}
    {{rendered_value}}
    {% else %}
    {{rendered_value}}
    {% endif %} ;;

    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_AMOUNT_MTD,TOTAL_AMOUNT_BUD_MTD,VS_TOTAL_BUD_MTD]

  }


#################################################################### FIN CALCULOS MENSUALES ##################################################################










#################################################################### INICIO CALCULOS ANUALES ##################################################################




  measure: NATIONAL_QTY_YTD {
    group_label: "Annual"
    label: "NATIONAL QTY YTD"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;

    filters: {
      field: is_current_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]

    drill_fields: [ Client,NATIONAL_QTY_YTD]

    value_format: "#,##0"
  }

  measure: EXPORT_QTY_YTD {
    group_label: "Annual"
    label: "EXPORT QTY YTD"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;

    filters: {
      field: is_current_year
      value: "yes"
    }

    filters: [distr_chan: "20"]
    filters: [version: "000"]

    drill_fields: [ Client,EXPORT_QTY_YTD]
    value_format: "#,##0"
  }

  measure: TOTAL_QTY_YTD {
    group_label: "Annual"
    label: "TOTAL QTY YTD"
    type: number
    sql: ${NATIONAL_QTY_YTD} + ${EXPORT_QTY_YTD} ;;
    drill_fields: [ Client,NATIONAL_QTY_YTD,EXPORT_QTY_YTD,TOTAL_QTY_YTD]
    value_format: "#,##0"
  }



  measure: NATIONAL_QTY_YTD_LY {
    group_label: "Annual"
    label: "NATIONAL QTY YTD LY"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;

    filters: {
      field: is_previous_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ Client,NATIONAL_QTY_YTD_LY]
    value_format: "#,##0"
  }


  measure: EXPORT_QTY_YTD_LY {
    group_label: "Annual"
    label: "EXPORT QTY YTD LY"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: is_previous_year
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_QTY_YTD_LY]
    value_format: "#,##0.00"
  }


  measure: TOTAL_QTY_YTD_LY {
    group_label: "Annual"
    label: "TOTAL QTY YTD LY"
    type: number
    sql: ${NATIONAL_QTY_YTD_LY} + ${EXPORT_QTY_YTD_LY} ;;

    drill_fields: [ Client,NATIONAL_QTY_YTD_LY,EXPORT_QTY_YTD_LY,TOTAL_QTY_YTD_LY]
    value_format: "#,##0.00"
  }


  measure: VS_T_QTY_YTD_LY {
    group_label: "Annual"
    label: "% VS T QTY YTD LY"
    type: number
    sql: CASE WHEN ${TOTAL_QTY_YTD} > 0 AND ${TOTAL_QTY_YTD_LY} = 0 THEN 1
              WHEN ${TOTAL_QTY_YTD} = 0 AND ${TOTAL_QTY_YTD_LY} > 0 THEN -1
              WHEN (${TOTAL_QTY_YTD}/NULLIF(${TOTAL_QTY_YTD_LY},0))-1  = 0 THEN 0
              ELSE (${TOTAL_QTY_YTD}/NULLIF(${TOTAL_QTY_YTD_LY},0))-1   END *100;;

    html:
    {% if value > 0 %}
    <span style="color: green;">{{ rendered_value }}</span></p>
    {% elsif  value < 0 %}
    <span style="color: red;">{{ rendered_value }}</span></p>
    {% elsif  value == 0 %}
    {{rendered_value}}
    {% else %}
    {{rendered_value}}
    {% endif %} ;;

    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_QTY_YTD,TOTAL_QTY_YTD_LY,VS_T_QTY_YTD_LY]

  }

  measure: NATIONAL_QTY_BUD_YTD {
    group_label: "Annual"
    label: "NATIONAL QTY BUD YTD"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;

    filters: {
      field: is_current_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "A00"]
    drill_fields: [ Client,NATIONAL_QTY_BUD_YTD]
  }

  measure: EXPORT_QTY_BUD_YTD {
    group_label: "Annual"
    label: "EXPORT QTY BUD YTD"
    type: sum
    sql: CASE WHEN (${TABLE}.CATEGORY LIKE 'TOTAL%') THEN NULL ELSE
      ${bill_qty} END ;;
    filters: [distr_chan: "20"]
    filters: [version: "A00"]
    filters: {
      field: is_current_year
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_QTY_BUD_YTD]
    value_format: "#,##0.00"
  }



  measure: T_QTY_BUD_YTD {
    group_label: "Annual"
    label: "T QTY BUD YTD"
    type: number
    sql: ${NATIONAL_QTY_BUD_YTD} + ${EXPORT_QTY_BUD_YTD} ;;
    #[#NATIONAL BUD QTY MTD]+ [#EXPORT BUD QTY MTD]

    drill_fields: [ Client,NATIONAL_QTY_BUD_YTD,EXPORT_QTY_BUD_YTD,T_QTY_BUD_YTD]
    value_format: "#,##0"
  }


  measure: VS_T_QTY_BUD_YTD {
    group_label: "Annual"
    label: "% VS T QTY BUD YTD"
    type: number
    sql: CASE WHEN ${TOTAL_QTY_YTD} > 0 AND ${T_QTY_BUD_YTD} = 0 THEN 1
              WHEN ${TOTAL_QTY_YTD} = 0 AND ${T_QTY_BUD_YTD} > 0 THEN -1
              WHEN (${TOTAL_QTY_YTD} /  NULLIF (${T_QTY_BUD_YTD},0))-1= 0 THEN 0
              ELSE (${TOTAL_QTY_YTD} /  NULLIF (${T_QTY_BUD_YTD},0))-1
             END *100 ;;

    html:
    {% if value > 0 %}
    <span style="color: green;">{{ rendered_value }}</span></p>
    {% elsif  value < 0 %}
    <span style="color: red;">{{ rendered_value }}</span></p>
    {% elsif  value == 0 %}
    {{rendered_value}}
    {% else %}
    {{rendered_value}}
    {% endif %} ;;

    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_QTY_YTD,T_QTY_BUD_YTD,VS_T_QTY_BUD_YTD]

  }


  measure: NATIONAL_AMOUNT_YTD {
    group_label: "Annual"
    label: "NATIONAL AMOUNT YTD"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: is_current_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ sort_category,Client,NATIONAL_AMOUNT_YTD]
    value_format: "#,##0.00"
  }

  measure: EXPORT_AMOUNT_YTD {
    group_label: "Annual"
    label: "EXPORT AMOUNT YTD"
    type: sum
    sql: ${znetval} ;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: is_current_year
      value: "yes"
    }

    drill_fields: [ Client,EXPORT_AMOUNT_MTD]
    value_format: "#,##0.00"

  }


  measure: TOTAL_AMOUNT_YTD {
    group_label: "Annual"
    label: "TOTAL AMOUNT YTD"
    type: number
    sql: ${NATIONAL_AMOUNT_YTD} + ${EXPORT_AMOUNT_YTD} ;;
    #[#NATIONAL AMOUNT MTD]+[#EXPORT AMOUNT MTD]

    drill_fields: [ Client,NATIONAL_AMOUNT_YTD,EXPORT_AMOUNT_YTD,TOTAL_AMOUNT_YTD]
    value_format: "#,##0.00"
  }

  measure: NATIONAL_AMOUNT_YTD_LY{
    label: "NATIONAL AMOUNT YTD LY"
    group_label: "Annual"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: is_previous_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "000"]
    drill_fields: [ Client,NATIONAL_AMOUNT_YTD_LY]
    value_format: "#,##0.00"
  }

  measure: EXPORT_AMOUNT_YTD_LY {
    group_label: "Annual"
    label: "EXPORT AMOUNT YTD LY"

    type: sum
    sql: ${znetval} ;;
    filters: [distr_chan: "20"]
    filters: [version: "000"]
    filters: {
      field: is_previous_year
      value: "yes"
    }
    drill_fields: [ Client,EXPORT_AMOUNT_YTD_LY]
    value_format: "#,##0.00"
  }


  measure:  TOTAL_AMOUNT_YTD_LY {
    group_label: "Annual"
    label: "TOTAL AMOUNT YTD LY"
    type: number
    sql: ${NATIONAL_AMOUNT_YTD_LY} + ${EXPORT_AMOUNT_YTD_LY} ;;

    drill_fields: [ Client,NATIONAL_AMOUNT_YTD_LY,EXPORT_AMOUNT_YTD_LY,TOTAL_AMOUNT_YTD_LY]
    value_format: "#,##0.00"
  }

  measure: VS_T_AMOUNT_YTD_LY {
    group_label: "Annual"
    label: "% VS T AMOUNT YTD LY"
    type: number
    sql: CASE WHEN ${TOTAL_AMOUNT_YTD} > 0 AND ${TOTAL_AMOUNT_YTD_LY} = 0 THEN 1
              WHEN ${TOTAL_AMOUNT_YTD} = 0 AND ${TOTAL_AMOUNT_YTD_LY} > 0 THEN -1
              WHEN (${TOTAL_AMOUNT_YTD} /  NULLIF (${TOTAL_AMOUNT_YTD_LY},0))-1 = 0 THEN 0
              ELSE (${TOTAL_AMOUNT_YTD} /  NULLIF (${TOTAL_AMOUNT_YTD_LY},0))-1
             END *100;;

    html:
    {% if value > 0 %}
    <span style="color: green;">{{ rendered_value }}</span></p>
    {% elsif  value < 0 %}
    <span style="color: red;">{{ rendered_value }}</span></p>
    {% elsif  value == 0 %}
    {{rendered_value}}
    {% else %}
    {{rendered_value}}
    {% endif %} ;;

    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_AMOUNT_YTD,TOTAL_AMOUNT_YTD_LY,VS_T_AMOUNT_YTD_LY]

  }


  measure: Z_NATIONAL_AMOUNT_BUD_YTD{
    group_label: "Annual"
    label: "Z NATIONAL AMOUNT BUD YTD"
    type: sum
    sql: ${znetval} ;;

    filters: {
      field: is_current_year
      value: "yes"
    }

    filters: [distr_chan: "10"]
    filters: [version: "A00"]

    drill_fields: [ Client,Z_NATIONAL_AMOUNT_BUD_YTD]
    value_format: "#,##0.00"
  }


  measure: Z_EXPORT_AMOUNT_BUD_YTD {
    group_label: "Annual"
    label: "Z EXPORT AMOUNT BUD YTD"

    type: sum
    sql: ${znetval} ;;
    filters: {
      field: is_current_year
      value: "yes"
    }
    filters: [distr_chan: "20"]
    filters: [version: "A00"]

    drill_fields: [ Client,Z_EXPORT_AMOUNT_BUD_YTD]
    value_format: "#,##0.00"
  }


  measure:  TOTAL_AMOUNT_BUD_YTD{
    group_label: "Annual"
    label: "TOTAL AMOUNT BUD YTD"
    type: number
    sql: ${Z_NATIONAL_AMOUNT_BUD_YTD} + ${Z_EXPORT_AMOUNT_BUD_YTD} ;;

    #[#Z_BUD  NATIONAL AMOUNT]+ [#Z_BUD  EXPORT AMOUNT]

    drill_fields: [ Client,TOTAL_AMOUNT_BUD_YTD]
    value_format: "#,##0.00"
  }


  measure: VS_TOTAL_BUD_YTD {
    group_label: "Annual"
    label: "% VS TOTAL BUD YTD"
    type: number
    sql: CASE WHEN ${TOTAL_AMOUNT_YTD} > 0 AND ${TOTAL_AMOUNT_BUD_YTD} = 0 THEN 1
              WHEN ${TOTAL_AMOUNT_YTD} = 0 AND ${TOTAL_AMOUNT_BUD_YTD} > 0 THEN -1
              WHEN (${TOTAL_AMOUNT_YTD} /  NULLIF (${TOTAL_AMOUNT_BUD_YTD},0))-1=-1 THEN 0
              ELSE (${TOTAL_AMOUNT_YTD} /  NULLIF (${TOTAL_AMOUNT_BUD_YTD},0))-1
             END * 100;;

    html:
    {% if value > 0 %}
    <span style="color: green;">{{ rendered_value }}</span></p>
    {% elsif  value < 0 %}
    <span style="color: red;">{{ rendered_value }}</span></p>
    {% elsif  value == 0 %}
    {{rendered_value}}
    {% else %}
    {{rendered_value}}
    {% endif %} ;;

    value_format: "0.00\%"

    drill_fields: [ Client,TOTAL_AMOUNT_YTD,TOTAL_AMOUNT_BUD_YTD,VS_TOTAL_BUD_YTD]

  }





#################################################################### FIN CALCULOS ANUALES ##################################################################

}
