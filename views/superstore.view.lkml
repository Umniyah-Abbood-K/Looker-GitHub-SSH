view: superstore {
  sql_table_name: `looker_superstore.superstore` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_Date ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }
  dimension: person {
    type: string
    sql: ${TABLE}.Person ;;
  }
  dimension: postal_code {
    type: number
    sql: ${TABLE}.Postal_Code ;;
  }
  dimension: price_per_unit {
    type: number
    sql: ${TABLE}.price_per_unit ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.Product_ID ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }
  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: returned {
    type: yesno
    sql: ${TABLE}.Returned ;;
  }
  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }
  dimension_group: ship {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Ship_Date ;;
  }
  dimension: ship_mode {
    type: string
    sql: ${TABLE}.Ship_Mode ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }
  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }
  dimension: total_cost {
    type: number
    sql: ${TABLE}.total_cost ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
