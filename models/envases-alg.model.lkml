# Define the database connection to be used for this model.
#connection: "envases_analytics_qa"
connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"

#include: "/**/*.dashboard"
#include : "/**/**/*.dashboard"

include: "/LookML_Dashboard/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/01_ALG_Global/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/05_Mex_y_GT/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/10_Canada/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/15_USA/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/20_Guatemala/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/25_Europe_Global/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/30_ECN/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/35_ECN_Media/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/40_ECC/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/50_ECW/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/55_ECS/*.dashboard.lookml"
include: "/LookML_Dashboard/Reporte_ALG_BIS/*.dashboard.lookml"
include: "/LookML_Dashboard/ALG_Sales/15_USA/*.dashboard.lookml"
include: "/LookML_Dashboard/Reporte_ALG/*.dashboard.lookml"
include: "/LookML_Dashboard/Reporte_ALG/PDF/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: envases_eon_alg_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: envases_eon_alg_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Envases-eon-alg"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: rpt_ventas {

#access_filter: {
  #    field: rpt_ventas.category
  #  user_attribute: categoria
  #}


}
explore: rpt_ventasytd {}
explore: calendar {}
explore: rpt_alg {}
explore: rpt_alg_category{}
explore: bitacora_074{}
explore: ventas {}


explore: envases_2023 {}
