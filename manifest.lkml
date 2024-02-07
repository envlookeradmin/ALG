constant: CONNECTION_NAME {
  value: "envases_analytics_qa"
  export: override_required
}

constant: GCP_PROJECT {
  value: "envases-analytics-qa"
  export: override_required
}

constant: REPORTING_DATASET {
  value: "ENVASES_REPORTING"
  export: override_required
}

#`@{GCP_PROJECT}.@{REPORTING_DATASET}.tabla
#envases-analytics-qa.ENVASES_REPORTING.bitacora_074`
