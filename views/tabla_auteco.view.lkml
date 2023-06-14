view: tabla_auteco {
  sql_table_name: `analitica-demos.auteco.tabla_auteco`
    ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.ANIO ;;
  }

  dimension: avg_precio {
    type: number
    sql: ${TABLE}.AVG_PRECIO ;;
  }

  dimension: avg_trm {
    type: number
    sql: ${TABLE}.AVG_TRM ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.CANTIDAD ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.EMPRESA ;;
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.linea ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.MARCA ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.MES ;;
  }

  dimension: precio_dolarizado {
    type: number
    sql: ${TABLE}.precio_dolarizado ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.SEGMENTO ;;
  }

  dimension: subcategoria {
    type: string
    sql: ${TABLE}.SUBCATEGORIA ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.SUBSEGMENTO ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
