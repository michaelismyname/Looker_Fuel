# The name of this view in Looker is "Trx Validation"
view: trx_validation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Report_Views_Looker.TRX_VALIDATION` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Decision Status" in Explore.

  dimension: decision_status {
    type: string
    sql: ${TABLE}.decision_status ;;
  }

  dimension: disc_count {
    type: number
    sql: ${TABLE}.disc_count ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: exclude {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.exclude_date ;;
  }

  dimension: fleet_name {
    type: string
    sql: ${TABLE}.fleet_name ;;
  }

  dimension: fuel_pump_number {
    type: string
    sql: ${TABLE}.fuel_pump_number ;;
  }

  dimension: fuel_validation_est_event_time_error {
    type: string
    sql: ${TABLE}.fuel_validation_est_event_time_error ;;
  }

  dimension: fuel_validation_est_fuel_after {
    type: number
    sql: ${TABLE}.fuel_validation_est_fuel_after ;;
  }

  dimension: fuel_validation_est_fuel_before {
    type: number
    sql: ${TABLE}.fuel_validation_est_fuel_before ;;
  }

  dimension: fuel_validation_est_fuel_volume {
    type: number
    sql: ${TABLE}.fuel_validation_est_fuel_volume ;;
  }

  dimension: fuel_validation_est_fuel_volume_error {
    type: number
    sql: ${TABLE}.fuel_validation_est_fuel_volume_error ;;
  }

  dimension: fuel_validation_message {
    type: string
    sql: ${TABLE}.fuel_validation_message ;;
  }

  dimension: gallons_no {
    type: number
    sql: ${TABLE}.Gallons ;;
  }

  dimension: is_complete {
    type: yesno
    sql: ${TABLE}.is_complete ;;
  }

  dimension: is_customer {
    type: string
    sql: ${TABLE}.Is_Customer ;;
  }

  dimension: is_offline_mode {
    type: yesno
    sql: ${TABLE}.is_offline_mode ;;
  }

  dimension: is_ttp {
    type: yesno
    sql: ${TABLE}.is_ttp ;;
  }

  dimension: latlon {
    type: string
    sql: ${TABLE}.latlon ;;
  }

  dimension: location_validation_distance_to_target_meters {
    type: number
    sql: ${TABLE}.location_validation_distance_to_target_meters ;;
  }

  dimension: man_review_notes {
    type: string
    sql: ${TABLE}.man_review_notes ;;
  }

  dimension_group: man_review_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.man_review_timestamp ;;
  }

  dimension: merchant_address {
    type: string
    sql: ${TABLE}.merchant_address ;;
  }

  dimension: merchant_brand {
    type: string
    sql: ${TABLE}.merchant_brand ;;
    html:
    {% if merchant_brand_img._value == "SHELL" %}
    <img src="https://images.gasbuddy.io/33xauto/b/122.png" height="35" width="35" float: left>
    {{merchant_address}}
    {% elsif merchant_brand_img._value == "QUIKTRIP" %}
    <img src="https://images.gasbuddy.io/33xauto/b/108.png"  height="35" width="35">
    {% elsif merchant_brand_img._value == "TEXACO" %}
    <img src="https://images.gasbuddy.io/33xauto/b/135.png" height="35" width="35">
    {% elsif merchant_brand_img._value == "CHEVRON"%}
    <img src="https://images.gasbuddy.io/33xauto/b/31.png"  height="35" width="35">
    {% else %}
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="25" width="25">
    {% endif %} ;;
  }

  dimension: merchant_brand_img {
    type: string
    label: "Brand"
    sql: ${TABLE}.merchant_brand ;;
    html:

              {% if merchant_brand_img._value == "SHELL" %}
              <img src="https://images.gasbuddy.io/33xauto/b/122.png" height="25" width="25">
              {% elsif merchant_brand_img._value == "QUIKTRIP" %}
              <img src="https://images.gasbuddy.io/33xauto/b/108.png" height="25" width="25">
              {% elsif merchant_brand_img._value == "TEXACO" %}
              <img src="https://images.gasbuddy.io/33xauto/b/135.png" height="25" width="25">
              {% elsif merchant_brand_img._value == "CHEVRON"%}
              <img src="https://images.gasbuddy.io/33xauto/b/31.png" height="25" width="25">
              {% else %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="25" width="25">
              {% endif %} ;;
  }



  dimension: merchant_city {
    type: string
    sql: ${TABLE}.merchant_city ;;
  }

  dimension: merchant_name {
    type: string
    sql: ${TABLE}.merchant_name ;;
  }

  dimension: merchant_state {
    type: string
    sql: ${TABLE}.merchant_state ;;
  }

  dimension: merchant_zip {
    type: string
    sql: ${TABLE}.merchant_zip ;;
  }

  dimension: merchant_zip_5 {
    type: string
    sql: ${TABLE}.merchant_zip_5 ;;
  }

  dimension: nearest_odometer_units {
    type: string
    sql: ${TABLE}.nearest_odometer_units ;;
  }

  dimension: nearest_odometer_value {
    type: number
    sql: ${TABLE}.nearest_odometer_value ;;
  }

  dimension: org_name {
    type: string
    sql: ${TABLE}.org_name ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: reviewer {
    type: string
    sql: ${TABLE}.reviewer ;;
  }

  dimension: site_thumbnail {
    type: string
    sql: ${TABLE}.site_thumbnail ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_total_amount {
    type: sum
    sql: ${total_amount} ;;  }

  measure: average_total_amount {
    type: average
    sql: ${total_amount} ;;  }

  dimension: transaction {
    type: number
    sql: ${TABLE}.transaction ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension_group: transaction_inserted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.transaction_inserted_at ;;
  }

  dimension_group: transaction_local_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.transaction_local_timestamp ;;
  }

  dimension: transaction_local_timezone {
    type: string
    sql: ${TABLE}.transaction_local_timezone ;;
  }

  dimension_group: trx_day {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TRX_Day ;;
  }

  dimension: trx_group {
    type: string
    sql: ${TABLE}.trx_group ;;
  }

  dimension: unverify_count {
    type: number
    sql: ${TABLE}.unverify_count ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_Name ;;
  }

  dimension: validation_category {
    type: string
    sql: ${TABLE}.validation_category ;;
  }

  dimension: validation_type {
    type: string
    sql: ${TABLE}.validation_type ;;
  }

  dimension_group: veh_first_transaction_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Veh_First_Transaction_Month ;;
  }

  dimension: veh_thumbnail {
    type: string
    sql: ${TABLE}.veh_thumbnail ;;
    html: <img src={{veh_thumbnail}}/> ;;
    description: "Vehicle"
  }

  dimension: vehicle_desc {
    type: string
    sql: ${TABLE}.vehicle_desc ;;
    html: <html>{{ value }}</html>;;
  }


  dimension: vehicle_description {
    type: string
    sql: ${TABLE}.vehicle_description ;;
  }

  dimension: vehicle_description_2 {
    type: string
    sql: ${TABLE}.vehicle_description_2 ;;
  }

  dimension: vehicle_display_name {
    type: string
    sql: ${TABLE}.vehicle_display_name ;;
  }

  dimension: vehicle_number {
    type: string
    sql: ${TABLE}.vehicle_number ;;
  }

  dimension: vehicle_odometer_miles {
    type: number
    sql: ${TABLE}.vehicle_odometer_miles ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.VIN ;;
  }
  measure: count {
    type: count
    drill_fields: [vehicle_display_name, merchant_name, user_name, org_name, fleet_name]
  }

  measure: Spend {
    type: sum
    value_format: "$#,##0.00"
    label: "Vehicle Spend"
    sql:  ${TABLE}.total_amount ;;  }

  measure: Gallons {
    type: sum
    sql: ${TABLE}.gallons ;;
    value_format: "#,##0.00"
    html: {{ rendered_value }} ;;
  }

  measure: Distinct_Vehicles {
    type: count_distinct
    label:"Vehicles"
    sql: ${TABLE}.VIN ;;
    html:  {{ rendered_value }} Vehicles <br> {{Spend}} Spend <br> {{Gallons}} Gallons ;;
  }

  dimension: vehicle_desc2 {
    type: string
    sql: ${TABLE}.vehicle_desc ;;
    label: "Description"
    html:
    {% assign split_values = value | split: "<br>" %}
    {% for val in split_values %}
    {{ val }}
    {% if forloop.index != split_values.size %}
    <br>
    {% endif %}
    {% endfor %};;
  }







}
