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

  dimension: entity_id {
    type: string
    sql: ${TABLE}.entity_id ;;
  }
  dimension: org_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }


  dimension: fuel_pump_number {
    type: string
    sql: ${TABLE}.fuel_pump_number ;;
  }

  dimension: fuel_validation_est_event_time_error {
    type: string
    sql: ${TABLE}.fuel_validation_est_event_time_error ;;
  }

  measure: fuel_validation_est_fuel_after {
    type: sum
    sql: ${TABLE}.fuel_validation_est_fuel_after ;;
  }

  measure: fuel_validation_est_fuel_before {
    type: sum
    sql: ${TABLE}.fuel_validation_est_fuel_before ;;
  }

  measure: fuel_validation_est_fuel_volume {
    type: sum
    sql: ${TABLE}.fuel_validation_est_fuel_volume ;;
  }

  measure: fuel_validation_est_fuel_volume_error {
    type: sum
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
    {% if merchant_brand._value == "SHELL" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973378/Shell_sotp3u.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "SUNOCO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Sunoco_dr5zzj.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "SINCLAIR" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Sinclair_srrcns.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "QUIKTRIP" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972986/QuikTrip_z3pzak.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "KUM&GO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/KumGO_ncryhd.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "CIRCLE K" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/CircleK_apkmg3.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "CHEVRON" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972995/Chevron_zqttin.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "SPEEDWAY" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Speedway_yg7tic.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "ARCO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973624/20_xl7yrr.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "BP" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972986/QT_vlwob6.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "MAVERIK" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973757/Maverik_z2kn9r.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "76" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/76_vydmwt.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "VALERO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973858/Valero_skbwgt.png" height=24" width="24"></p>
    {% elsif merchant_brand._value == "MARATHON" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972995/marathon_cno3rs.png" height=24" width="24"></p>
    {% else %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972985/OtherFuel_i6osax.png" height=24" width="24"></p>
    {% endif %}
    <p style="float:left; margin-left: 10px;"> {{merchant_brand}}<br> {{merchant_address}}<br>  {{merchant_city}}, {{merchant_state}}</p> ;;
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
    label: "Driver"
    description: "Driver Name"
    sql: ${TABLE}.user_Name ;;
  }

  dimension: validation_category {
    type: string
    sql: ${TABLE}.validation_category ;;
  }

  dimension: fuel_code {
    type: string
    sql: ${TABLE}.fuel_code ;;
  }


  dimension: validation_type {
    type: string
    sql: ${TABLE}.validation_type ;;
    label: "Issue"
    html:

      {% if validation_type._value == 'Validated Transaction' %}
      <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708634594/green-checkmark-line-icon_eplap3.svg" style="height: 15px; width: 15px;">
      {{validation_type}}
      {% else %}
      <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708634718/exclamation-warning-round-red-icon_wvr7cf.svg" style="height: 15px; width: 15px;">
      {{validation_type}}
      {% endif %}
      {% if fuel_code._value == 'F-NV3' %}
      <ul><li> Ensure fuel tank capacity is correct</li></ul>
      {% elsif fuel_code._value == 'F-NV2' %}
      <ul><li>Is Driver filling up other equipment/tank?</li></ul>
      {% elsif fuel_code._value == 'F-NV1' %}
      <ul><li>Did Driver choose wrong vehicle?</li></ul>
      {% endif %}  ;;
  }


  dimension: Discrepancy_Type {
    type: string
    sql: ${TABLE}.Discrepancy_Type ;;
    label: "Discrepancy Type "
  }



  dimension_group: veh_first_transaction_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Veh_First_Transaction_Month ;;
  }

  dimension: fuel_tank_capacity_gal {
    type: number
    sql: ${TABLE}.fuel_tank_capacity_gal ;;
  }

    #{% if veh_thumbnail._value != null %}
    #<p style="float:left; margin: 0 5px; padding: 5px;"><img src="{{veh_thumbnail}}"  height="30" width="30" ></p>
    #{% else %}
    #<p style="float:left; margin: 0 5px; padding: 5px;">
    #<img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708978808/truck-icon_p16vds.svg"  height="30" width="30" >
    #</p>
    #{% endif %}

  dimension: veh_thumbnail {
    type: string
    sql: ${TABLE}.veh_thumbnail ;;
    label: "Vehicle"
    html:



    <p style="float:left;">
     {% if vin._value != null %} {{vin}}<br>  {% endif %}
     {% if vehicle_display_name._value != null %} {{vehicle_display_name}}<br>  {% endif %}

     {% if vehicle_description._value != null %} {{vehicle_description}}<br>  {% endif %}
     {% if fuel_tank_capacity_gal._value != null %}  Fuel Tank Capacity: {{fuel_tank_capacity_gal}}  {% endif %}
    </p>;;
    description: "Vehicle"
  }
 ## {% if vehicle_number._value != null %} {{vehicle_number}}<br>  {% endif %}

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

  measure: DISCR_TOTAL {
    type: sum
    sql: ${TABLE}.DISCR_TOTAL ;;
    value_format: "#,##0.0"
    html: {{ rendered_value }} ;;
  }

  measure: DISCR_Spend_TOTAL {
    type: sum
    value_format: "$#,##0.00"
    sql:  ${TABLE}.DISCR_Spend_TOTAL ;;  }



  measure: Distinct_Vehicles {
    type: count_distinct
    label:"Vehicles"
    sql: ${TABLE}.VIN ;;
    html: <p style="font-size: .8em; text-align:  centert;">{{ rendered_value }} <br> Transacting <br> Vehicles</p>;;
  }

  measure: Distinct_Vehicles_No_HTML {
    type: count_distinct
    label:"Vehicles No HTML"
    sql: ${TABLE}.VIN ;;
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

  measure: Vehicle_Header_NonCarIQ {
    type: sum
    sql: ${TABLE}.Non_CAR_IQ_TRX ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.


  measure: Estimated_Gallons_In_Tank{
    type: max
    sql: ${TABLE}.fuel_validation_est_fuel_volume ;;
  }


  measure: Vehicles_Header{
    type: count_distinct
    label:"Vehicles Header"
    sql: ${TABLE}.VIN ;;
  html:
        <br>

        <div>
        {% if Distinct_Vehicles_No_Fuel_Level._value > 0 %}

        <p style="font-size: 12px; float:left;">
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531977/no-petrol-icon_qhee7s.svg" title="Telematics provider is not providing fuel data for this vehicle" style="float:left; height: 35px; width: 35px; margin-right: 15px">
        </p>
        <p style="font-size: 12px; text-align: left; float:left;">
        <span style = "margin-left: 1px; font-weight: bold;"> {{Distinct_Vehicles_No_Fuel_Level}}</span> Vehicles Not <br> Providing Fuel Data <br>
        </p>
        {% else %}
        <p style="font-size: 12px; float:left;">
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531962/gas-station-icon_vrbcjc.svg" title="Telematics provider is not providing fuel data for this vehicle" style="float:left; height: 35px; width: 35px; margin-right: 15px">
        </p>
        <p style="font-size: 12px; text-align: left; float:left;">
        <span style = "margin-left: 1px; font-weight: bold;"></span>All Vehicles are <br> supplying Fuel Data
         </p>
        {% endif %}

        </div>
        <br><br><br>

        <div>
        {% if Distinct_Vehicles_No_Odometer._value > 0 %}
        <p style="font-size: 12px; float:left;">
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531977/high-risk-alert-icon_iducd9.svg" alt="Telematics provider is not providing fuel data for this vehicle" style="float:left; height: 35px; width: 35px; margin-right: 15px">
        </p>
        <p style="font-size: 12px; text-align: left; float:left;">
        <span style = "margin-left: 1px; font-weight: bold;">  {{Distinct_Vehicles_No_Odometer}}</span> Vehicles Not <br>Providing Odometer Data
        </p>
        <br>
        {% else %}
        <p style="font-size: 12px; float:left;">
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708627891/speedometer-icon_tl5yei.svg" title="Telematics provider is not providing fuel data for this vehicle" style="float:left; height: 35px; width: 35px; margin-right: 15px">
        </p>
        <p style="font-size: 12px; text-align: left; float:left;">
        <span style = "margin-left: 1px; font-weight: bold;"> </span>All Vehicles are <br>supplying Odometer Data <br>
        </p>
        {% endif %}
        </div>
        <br>

;;
}


       ## {% if Non_CAR_IQ_TRX._value > 0 %}
       ##  <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708615688/lock-open-icon_hhlpc8.svg" alt="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
       ##  <span style = "margin-right: 5px;  margin-left: 5px;">{{Non_CAR_IQ_TRX}}</span>  Vehicles Transacting Outside of Car IQ
      ##  <br>
      ##  {% else %}
      ##  <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708628039/lock-icon_u1wraq.svg" alt="Telematics provider is not providing fuel data for this vehicle" style="height: 25px; width: 25px;">
      ##  <span style = "margin-right: 5px;  margin-left: 5px;"></span> All Transactions On Car IQ Platform
      ##  {% endif %}
      ##  </p></div>


  dimension: Vehicles_Level_Header{
    label:"Vehicles Level Detail Header"
    sql: ${TABLE}.VIN ;;
    html:
        {% if Vehicle_Header_Descripancy._value > 0 %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708634718/exclamation-warning-round-red-icon_wvr7cf.svg" style="height: 15px; width: 15px;">
        <span style = "margin-right: 5px;  margin-left: 5px;">{{Vehicle_Header_Descripancy}}</span>  Fuel Volume Issues Detected
        <br><br>
        {% else %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708634594/green-checkmark-line-icon_eplap3.svg" style="height: 15px; width: 15px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span> No Fuel Volume Issues Detected  <br><br>
        {% endif %}
           ;;
  }

       ## {% if Vehicle_Header_NonCarIQ._value > 0 %}
       ## <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708615688/lock-open-icon_hhlpc8.svg" style="height: 15px; width: 15px;">
       ##  <span style = "margin-right: 5px;  margin-left: 5px;">{{Vehicle_Header_NonCarIQ}}</span>  Transacting Outside of Car IQ
       ##  {% else %}
       ##  <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708628039/lock-icon_u1wraq.svg" style="height: 15px; width: 15px;">
       ## <span style = "margin-right: 5px;  margin-left: 5px;"></span> Transactions All with Car IQ
       ##  {% endif %}






  dimension: Vehicles_Level_Fuel_ODOMETER{
    label:"Vehicles Level Detail Fuel & Odometer"
    sql: ${TABLE}.VIN ;;
    html:
        {% if Fuel_Level_Status._value == "Providing" %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531962/gas-station-icon_vrbcjc.svg"  style="height: 15px; width: 15px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span> Vehicle Reporting Fuel Data <br><br>
        {% else %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708531977/no-petrol-icon_qhee7s.svg"  style="height: 15px; width: 15px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span>Vehicle Not Reporting Fuel Data <br><br>
        {% endif %}

        {% if Odometer_Level_Status._value == "Providing" %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708627891/speedometer-icon_tl5yei.svg"  style="height: 15px; width: 15px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span>Vehicles Reporting Odometer
        <br>
        {% else %}
        <img src= "https://res.cloudinary.com/dwogets4p/image/upload/v1708531977/high-risk-alert-icon_iducd9.svg" style="height: 15px; width: 15px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span>Vehicle Not Reporting Odometer
        {% endif %}
           ;;
  }


  measure: Purchased_Gallons_Bar{
    type: max
    sql: ${TABLE}.Gallons_Bar ;;
  }


  measure: No_of_Desc{
    type: sum
    sql: ${TABLE}.disc_count ;;
  }


  measure: Observed_Gallons_Bar{
    type: max
    sql: ${TABLE}.Est_Gallons_Bar ;;
  }


  measure: Spend_Bar{
    type: max
    sql: ${TABLE}.spend_bar ;;
  }


  dimension: Fuel_Error_Size {
    type: string
    sql: ${TABLE}.merchant_brand ;;
    html:

        <div style="width: 210px; height: 30px; padding: 5px;">
            Gallons Purchased:  <br>
            <div style="float:left; text-align:right;  margin: 0 5px;  height: 15px; width:35px">{{Gallons | round: 1 }}</div>
            <div style="float:left;  background-color:  #B3BAC5; margin: 0 5px; height: 20px; width:{{Purchased_Gallons_Bar}}px"></div>
        </div>
        <br>
        <div style="width: 170px; height: 30px; padding: 5px;">
            Gallons Observed In Tank:  <br>
            <div style="float:left; text-align:right;  margin: 0 5px;  height: 15px; width:35px">{{Estimated_Gallons_In_Tank | round: 1 }}</div>
            <div style="float:left;  background-color:  #B3BAC5; margin: 0 5px; height: 20px; width:{{Observed_Gallons_Bar}}px"></div>
        </div>

        ;;

  }


  dimension: latlon {
    type: location
    sql_latitude:${TABLE}.latitude ;;
    sql_longitude:${TABLE}.longitude ;;
    label: "location"
    html:

      {{merchant_brand}}<br> {{merchant_address}},  {{merchant_city}}, {{merchant_state}}<br><br>

      Driver:
         {% if user_name._value != null %} {{user_name}}  {% endif %}
      <br><br>

      Vehicle:
      <br>
      {% if vin._value != null %} {{vin}}<br>  {% endif %}
      {% if vehicle_display_name._value != null %} {{vehicle_display_name}}<br>  {% endif %}

      {% if vehicle_description._value != null %} {{vehicle_description}}  {% endif %}
      <br><br>


        <div style="width: 250px;  padding: 5px;">
            Gallons Purchased:  {{Gallons | round: 1 }}<br>

        {% if Vehicle_Header_Descripancy._value > 0 %}

            Gallons Observed In Tank: {{Estimated_Gallons_In_Tank | round: 1 }}
            <br>
         {% endif %}
        Spend:  ${{Spend | number_format:"$#,##0.00"}}
        </div>

        <br>
        {% if Vehicle_Header_Descripancy._value > 0 %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708634718/exclamation-warning-round-red-icon_wvr7cf.svg" style="height: 15px; width: 15px;">
        <span style = "margin-right: 5px;  margin-left: 5px;">{{Vehicle_Header_Descripancy}}</span> Issues Detected
        <br>
        {% else %}
        <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708634594/green-checkmark-line-icon_eplap3.svg" style="height: 15px; width: 15px;">
        <span style = "margin-right: 5px;  margin-left: 5px;"></span> No Issues Detected  <br>
        {% endif %}
        ;;
  }
    #{% if veh_thumbnail._value != null %}
    #<p style="float:left; margin: 0 5px; padding: 5px;"><img src="{{veh_thumbnail}}"  height="30" width="30" ></p>
    #{% else %}
    #<p style="float:left; margin: 0 5px; padding: 5px;">
    #<img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708978808/truck-icon_p16vds.svg"  height="30" width="30" >
    #</p>
    #{% endif %}



  dimension: vehicle_desc2 {
    type: string
    sql: ${TABLE}.VIN ;;
    label: "Vehicle Description with Thumbnail"
    html:

    {% if veh_thumbnail._value != null %}
    <p style="float:left; margin: 0 5px; padding: 5px;"><img src="{{veh_thumbnail}}"  height="30" width="30" ></p>
    {% else %}
    <p style="float:left; margin: 0 5px; padding: 5px;">
    <img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708978808/truck-icon_p16vds.svg"  height="30" width="30" >
    </p>
    {% endif %}

    <p style="float:left;">
     {% if vin._value != null %} {{vin}}<br>  {% endif %}
     {% if vehicle_display_name._value != null %} {{vehicle_display_name}}<br>  {% endif %}

      {% if vehicle_description._value != null %} {{vehicle_description}} <br> {% endif %}
      {% if fuel_tank_capacity_gal._value != null %}  Fuel Tank: {{fuel_tank_capacity_gal}} gal {% endif %}
      </p>;;
    description: "Vehicle"
  }






}
