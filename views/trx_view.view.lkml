# The name of this view in Looker is "Trx View"
view: trx_view {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `cariq-data-analytics-dev.Report_Views_Looker.TRX_View` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Currency" in Explore.

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: dow_name {
    type: string
    sql: ${TABLE}.DOW_name ;;
  }

  dimension: entity_id {
    type: string
    sql: ${TABLE}.entity_id ;;
  }

  dimension: env {
    type: string
    sql: ${TABLE}.env ;;
  }

  dimension: est_gallons2 {
    type: number
    value_format: "#,##0.0"
    sql: ${TABLE}.est_gallons ;;
  }

  dimension: veh_group_name {
    type: string
    sql: ${TABLE}.veh_group_name ;;
  }




  dimension: fleet_name {
    type: string
    sql: ${TABLE}.fleet_name ;;
  }

  dimension: fuel_price {
    type: number
    sql: ${TABLE}.fuel_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fuel_price {
    type: sum
    sql: ${fuel_price} ;;  }
  measure: average_fuel_price {
    type: average
    sql: ${fuel_price} ;;  }

  dimension: fuel_pump_number {
    type: string
    sql: ${TABLE}.fuel_pump_number ;;
  }

  dimension: gallons {
    type: number
    sql: ${TABLE}.Gallons ;;
  }

  dimension: group_id {
    type: string
    sql: ${TABLE}.group_id ;;
  }

  dimension: is_complete {
    type: yesno
    sql: ${TABLE}.is_complete ;;
  }

  dimension: is_ttp {
    type: yesno
    sql: ${TABLE}.is_ttp ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }


  dimension: merchant_brand_word_only {
    type: string
    sql: ${TABLE}.merchant_brand ;;

  }

  dimension: merchant_brand{
    type: string
    sql: ${TABLE}.merchant_brand ;;
    html:
    {% if merchant_brand._value == "SHELL" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973378/Shell_sotp3u.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "SUNOCO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Sunoco_dr5zzj.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "SINCLAIR" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Sinclair_srrcns.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "QUIKTRIP" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972986/QuikTrip_z3pzak.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "KUM&GO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/KumGO_ncryhd.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "CIRCLE K" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/CircleK_apkmg3.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "CHEVRON" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972995/Chevron_zqttin.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "SPEEDWAY" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Speedway_yg7tic.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "ARCO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973624/20_xl7yrr.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "BP" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972986/QT_vlwob6.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "MAVERIK" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973757/Maverik_z2kn9r.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "76" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/76_vydmwt.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "VALERO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973858/Valero_skbwgt.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "MARATHON" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972995/marathon_cno3rs.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "MURPHY USA" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1709127589/murphy_gxv5u3.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "MURPHY EXPRESS" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1709127589/murphy_gxv5u3.png" height=35" width="35"></p>

      {% elsif merchant_brand._value == "TEXACO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972995/Texaco_xdjoxn.png" height=35" width="35"></p>



      {% else %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972985/OtherFuel_i6osax.png" height=35" width="35"></p>
      {% endif %};;
  }



  dimension: merchant_brand_image_address {
    type: string
    sql: ${TABLE}.merchant_brand ;;
    html:
    {% if merchant_brand._value == "SHELL" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973378/Shell_sotp3u.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "SUNOCO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Sunoco_dr5zzj.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "SINCLAIR" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Sinclair_srrcns.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "QUIKTRIP" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972986/QuikTrip_z3pzak.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "KUM&GO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/KumGO_ncryhd.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "CIRCLE K" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/CircleK_apkmg3.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "CHEVRON" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972995/Chevron_zqttin.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "SPEEDWAY" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/Speedway_yg7tic.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "ARCO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973624/20_xl7yrr.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "BP" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972986/QT_vlwob6.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "MAVERIK" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973757/Maverik_z2kn9r.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "76" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972967/76_vydmwt.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "VALERO" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708973858/Valero_skbwgt.png" height=35" width="35"></p>
    {% elsif merchant_brand._value == "MARATHON" %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972995/marathon_cno3rs.png" height=35" width="35"></p>
    {% else %}<p style="float:left; margin-right: 10px;"><img src="https://res.cloudinary.com/dwogets4p/image/upload/v1708972985/OtherFuel_i6osax.png" height=35" width="35"></p>
    {% endif %}
    <p style="float:left; margin-left: 10px;"> {{merchant_brand}}<br> {{merchant_street}}<br>  {{merchant_city}}, {{merchant_state}}</p> ;;
  }

  dimension: merchant_city {
    type: string
    sql: ${TABLE}.merchant_city ;;
  }

  dimension: merchant_id {
    type: string
    sql: ${TABLE}.merchant_id ;;
  }

  dimension: merchant_integration {
    type: string
    sql: ${TABLE}.Merchant_Integration ;;
  }

  dimension: merchant_integration_type {
    type: string
    sql: ${TABLE}.merchant_integration_type ;;
  }

  dimension: merchant_name {
    type: string
    sql: ${TABLE}.merchant_name ;;
  }

  dimension: merchant_state {
    type: string
    sql: ${TABLE}.merchant_state ;;
  }

  dimension: merchant_street {
    type: string
    sql: ${TABLE}.merchant_street ;;
  }

  dimension: merchant_zip {
    type: string
    sql: ${TABLE}.merchant_zip ;;
  }

  dimension: merchant_zip_5 {
    type: string
    sql: ${TABLE}.merchant_zip_5 ;;
  }

  dimension: org_name {
    type: string
    sql: ${TABLE}.org_name ;;
  }

  dimension: organization_id {
    type: string
    sql: ${TABLE}.organization_id ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension: ttp_type {
    type: string
    sql: ${TABLE}.TTP_TYPE ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_Name ;;
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

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.vehicle_id ;;
  }

  dimension: vehicle_number {
    type: string
    sql: ${TABLE}.vehicle_number ;;
  }

  dimension: vehicle_vin {
    type: string
    sql: ${TABLE}.vehicle_vin ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.VIN ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }


  dimension: vehicle_desc2 {
    type: string
    sql: ${TABLE}.VIN ;;
    label: "Vehicle Description "
    html:

      <p style="float:left;">
      {% if vin._value != null %} {{vin}}<br>  {% endif %}
      {% if vehicle_display_name._value != null %} {{vehicle_display_name}}<br>  {% endif %}

      {% if vehicle_description._value != null %} {{vehicle_description}}  {% endif %}
      </p>;;
    description: "Vehicle"
  }



  measure: Spend {
    type: sum
    value_format: "$#,##0.00"
    label: "Total Spend"
    sql:  ${TABLE}.total_amount ;;  }

  measure: Spend_w_gallons_for_Trends {
    type: sum
    value_format: "$#,##0.00"
    label: "Total Spend w Gallons"
    sql:  ${TABLE}.total_amount ;;
    html:
    <p style = "text-align:  centert;"> <div style="font-size: .9em;"> ${{Spend |  round: 2}} Spend </div>
    <div style="font-size: .55em;"> <br>
    {{Gallons |  round: 1 }} Gallons
    <br> $3.47 per Gal </div>
    </p>;;
  }

  measure: est_gallons {
    type: sum
    value_format: "#,##0.0"
    sql: ${TABLE}.est_gallons ;;
  }

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
    html: <p style="font-size: .8em; text-align:  centert;">{{ rendered_value }} <br> Transacting <br> Vehicles</p>;;
  }

  dimension: map_local {
    type: location
    sql_latitude:${TABLE}.latitude ;;
    sql_longitude:${TABLE}.longitude ;;
    label: "location"
    html:

      <br>{{merchant_brand}}<br> {{merchant_street}}<br>  {{merchant_city}}, {{merchant_state}}<br><br>

                        Vehicle:
                                    <br>
                                    {% if vin._value != null %} {{vin}}<br>  {% endif %}
                                    {% if vehicle_display_name._value != null %} {{vehicle_display_name}}<br>  {% endif %}

      {% if vehicle_description._value != null %} {{vehicle_description}}  {% endif %}
      <br>
      <br>;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      vehicle_display_name,
      org_name,
      merchant_name,
      fleet_name,
      user_name,
      dow_name
    ]
  }

}
