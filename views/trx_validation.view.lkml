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
    {% if merchant_brand._value == "SHELL" %}
    <div style="width: 170px; height: 30px; padding: 5px;">
        Gallons Purchased:  <br>
        <div style="float:left; text-align:right;  margin: 0 5px;  height: 15px; width:25px">124</div>
        <div style="float:left;  background-color: #ffd100; margin: 0 5px; height: 20px; width:80px"></div>
    </div>
    <br>
    <div style="width: 170px; height: 30px; padding: 5px;">
        Gallons Observed In Tank:  <br>
        <div style="float:left; text-align:right;  margin: 0 5px;  height: 15px; width:25px">12</div>
        <div style="float:left;  background-color: #ffd100; margin: 0 5px; height: 20px; width:30px"></div>
    </div>
    <br>
    {% elsif merchant_brand._value == "QUIKTRIP" %}
    <img src="https://images.gasbuddy.io/33xauto/b/108.png"  height="35" width="35">
     <p style="float:left;" margin-right: 10px;><img src="https://images.gasbuddy.io/33xauto/b/122.png" height="35" width="35"></p>
    <p style="float:left;" margin-left: 10px;>  {{merchant_address}}<br>  {{vehicle_display_name}}</p>
    <p style = display: block; background-color: #3d9970 width: 20% ><span class="text"> {{vehicle_display_name}} </span> </p>
    <p style = display: block; background-color: #3d9970 width: 80% ><span class="text"> {{vehicle_display_name}} </span> </p>

    {% elsif merchant_brand._value == "TEXACO" %}
    <img src="https://images.gasbuddy.io/33xauto/b/135.png" height="35" width="35">
    {% elsif merchant_brand._value == "CHEVRON"%}
    <img src="https://images.gasbuddy.io/33xauto/b/31.png"  height="35" width="35">
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
    label: "Vehicle"
    html:
    <p style="float:left; margin: 0 5px; padding: 5px;"><img src="{{veh_thumbnail}}"  height="55" width="55" ></p>
    <p style="float:left;">
     {% if vin._value != null %} {{vin}}<br>  {% endif %}
     {% if vehicle_display_name._value != null %} {{vehicle_display_name}}<br>  {% endif %}
     {% if vehicle_number._value != null %} {{vehicle_number}}<br>  {% endif %}
     {% if vehicle_description._value != null %} {{vehicle_description}}  {% endif %}
    </p>;;
    description: "Vehicle"
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
    html: <p style="font-size: 56px; text-align: left;">{{ rendered_value }} <br> Transacting Vehicles</p>;;
  }

  dimension: Fuel_Level_Status{
    type: string
    sql: ${TABLE}.Fuel_LEVEL_Category ;;
  }

  dimension: Odometer_Level_Status{
    type: string
    sql: ${TABLE}.Odometer_Category ;;
  }


  measure: Distinct_Vehicles_No_Fuel_Level {
  type: count_distinct
    label:"No Fuel Vehicles Distinct"
  sql: ${TABLE}.Fuel_LEVEL_Distinct ;;
    }

  measure: Distinct_Vehicles_No_Odometer {
    type: count_distinct
    label:"No Odometer Vehicles Distinct"
    sql: ${TABLE}.Odometer_Distinct ;;
  }


measure: Non_CAR_IQ_TRX {
  type:  sum
  label: "Non Car IQ Trx"
  sql: ${TABLE}.non_car_iq_trx ;;
}

  measure: Vehicle_Header_Descripancy {
    type: sum
    sql: ${TABLE}.disc_count ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.


  measure: Vehicles_Header{
    type: count_distinct
    label:"Vehicles Header"
    sql: ${TABLE}.VIN ;;
  html: <div>
        <p style="font-size: 16px; text-align: left;">

        {% if Distinct_Vehicles_No_Fuel_Level._value > 0 %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531977/no-petrol-icon_qhee7s.svg" title="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"> {{Distinct_Vehicles_No_Fuel_Level}}</span> Vehicles Not Providing Fuel Data <br>
        {% else %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531962/gas-station-icon_vrbcjc.svg" title="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span>All Vehicles are supplying Fuel Data <br>
        {% endif %}


        {% if Distinct_Vehicles_No_Odometer._value > 0 %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531977/high-risk-alert-icon_iducd9.svg" alt="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"> {{Distinct_Vehicles_No_Odometer}}</span>Vehicles Not Providing Odometer Data
        <br>
        {% else %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708627891/speedometer-icon_tl5yei.svg" title="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span>All Vehicles are supplying Odometer Data <br>
        {% endif %}

        {% if Non_CAR_IQ_TRX._value > 0 %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708615688/lock-open-icon_hhlpc8.svg" alt="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;">{{Non_CAR_IQ_TRX}}</span>  Vehicles Transacting Outside of Car IQ
        <br>
        {% else %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708628039/lock-icon_u1wraq.svg" alt="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span> All Transactions Protected by Car IQ
        {% endif %}
        </p>
      </div> ;;
}


  dimension: Vehicles_Level_Header{
    label:"Vehicles Level Detail Header"
    sql: ${TABLE}.VIN ;;
    html:

          {% if Vehicle_Header_Descripancy._value > 0%} {{Vehicle_Header_Descripancy}}< Unverified Transactions <br>  {% endif %}


    <div>

        <p style="font-size: 16px; text-align: left;">
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531977/no-petrol-icon_qhee7s.svg" title="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"> 7</span> Vehicles Not Providing Fuel Data <br>
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531977/high-risk-alert-icon_iducd9.svg" alt="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"> 7</span>Vehicles Not Providing Odometer Data
        <br>
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708615688/lock-open-icon_hhlpc8.svg" alt="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
        <span style = "margin-right: 5px;  margin-left: 5px;">7</span> Vehicles Transacting Outside of Car IQ
        </p>
      </div> ;;
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
