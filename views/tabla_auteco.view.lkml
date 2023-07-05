view: tabla_auteco {
  sql_table_name: `analitica-demos.auteco.tabla_auteco`
    ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.ANIO  ;;
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
  dimension: precio_ajustado {
    type: number
    sql: ${avg_trm} * ${precio_dolarizado} ;;
    value_format: "$#,##0.00"
  }
#############Dimensiones creadas############################
  dimension: fecha {
    type: date
    sql: ${TABLE}.ANIO || '-' || ${TABLE}.MES || '-01' ;;
  }
##############fecha granular#########
  dimension_group: fecha {
    type: time
    view_label: "Fecha granular"
    timeframes: [
      date,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${fecha} ;;
  }
  parameter: date_granularity {
    type: unquoted
    allowed_value: {
      label: "Year"
      value: "year"
    }
    allowed_value: {
      label: "Month"
      value: "month"
    }
    allowed_value: {
      label: "Quarter"
      value: "quarter"
    }
  }

  dimension: date {
    sql: {% if date_granularity._parameter_value == 'year' %}
          ${fecha_year}
        {% elsif date_granularity._parameter_value == 'month' %}
          ${fecha_month}
          {% elsif date_granularity._parameter_value == 'quarter' %}
          ${fecha_quarter}
        {% else %}
          ${fecha_date}
        {% endif %} ;;
  }

#######################Link
  dimension: empresa_link {
    type: string
    sql: ${TABLE}.EMPRESA ;;
    link: {
      label: "Google"
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }
  }
  dimension: linea_link {
    type: string
    sql: ${linea} ;;
    link: {
      label: "Google"
      url: "http://www.google.com/search?q={{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }
  }
  dimension: empresa_imagen {
    type: string
    sql: ${empresa} ;;
    html: |
          {% if empresa._is_filtered %}
            {% if empresa._value == "AKT" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/3/35/AKT_logo.PNG" height="160" width="240">
            {% elsif empresa._value == "AUTECO" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Auteco_logo.svg/1200px-Auteco_logo.svg.png" height="140" width="240">
            {% elsif empresa._value == "HERO" %}
              <img src="https://heromotored.com/wp-content/uploads/2020/11/Hero-logo.png" height="140" width="240">
            {% elsif empresa._value == "HONDA" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Honda.svg/2560px-Honda.svg.png" height="140" width="240">
            {% elsif empresa._value == "MOBILITY" %}
              <img src="https://auteco.vteximg.com.br/arquivos/logo-open-graph.png?v=637289648336900000" height="140" width="240">
            {% elsif empresa._value == "SUZUKI" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Suzuki_logo_2.svg/2560px-Suzuki_logo_2.svg.png" height="140" width="240">
            {% elsif empresa._value == "UMA" %}
              <img src="https://www.coopetrol.coop/wp-content/uploads/2023/03/Logo-Grupo-Uma.png" height="140" width="240">
            {% elsif empresa._value == "YAMAHA" %}
              <img src="https://1000marcas.net/wp-content/uploads/2019/12/Yamaha-Log%D0%BE.png" height="140" width="240">
            {% else %}
              <img src="https://www.auteco.com.co/wp-content/uploads/2022/11/01-4.png" height="170" width="255">
            {% endif %}
          {% else %}
            <img src="https://www.auteco.com.co/wp-content/uploads/2022/11/01-4.png" height="170" width="255">
          {% endif %}
        ;;
  }

  measure: count {
    type: count
  }

  measure: promedio_precio {
    type: number
    sql: ROUND(AVG(CASE WHEN ${TABLE}.AVG_PRECIO <> 0 THEN ${TABLE}.AVG_PRECIO END), 2) ;;
    value_format: "$#,##0"
    drill_fields: [detalles_unidades*]
  }


  measure: promedio_precio_a {
    type: number
    sql: AVG(${precio_ajustado}) ;;
    value_format: "$#,##0"
  }
###################################################################3
  measure: unidades {
    type: sum
    sql: ${cantidad} ;;
    drill_fields: [linea_link,fecha_month,cantidad]
  }
  measure: unidades_max {
    type: max
    sql: ${cantidad} ;;
  }
  measure: unidades_min {
    type: min
    sql: ${cantidad} ;;
  }
  measure: unidades_avg {
    type: average
    sql: ${cantidad} ;;
    value_format: "$#,##0"
  }
  set: detalles_unidades {
    fields: [linea_link, unidades]
  }

#######################################################################################
  parameter: filtro_medidas {
    type: unquoted
    allowed_value: {
      label: "Unidades"
      value: "unidades"
    }
    allowed_value: {
      label: "Precio"
      value: "promedio_precio"
    }
    allowed_value: {
      label: "Precio ajustado"
      value: "promedio_precio_a"
    }
  }

  measure: medidas_dinamicas {
    type: number
    sql: {% if filtro_medidas._parameter_value == 'unidades' %}
          ${unidades}
        {% elsif filtro_medidas._parameter_value == 'promedio_precio' %}
          ${promedio_precio}
          {% elsif filtro_medidas._parameter_value == 'promedio_precio_a' %}
          ${promedio_precio_a}
        {% else %}
          0
        {% endif %} ;;
  }
 parameter: measure_type {
  type: unquoted
  allowed_value: {
    label: "Promedio"
    value: "promedio"
  }
  allowed_value: {
    label: "Máximo"
    value: "maximo"
  }
  allowed_value: {
    label: "Mínimo"
    value: "minimo"
  }
  allowed_value: {
    label: "Total de unidades"
    value: "total"
  }
}


  measure: calculo_dinamico {
    type: number
    sql: {% if measure_type._parameter_value == 'promedio' %}
          ${unidades_avg}
        {% elsif measure_type._parameter_value == 'maximo' %}
          ${unidades_max}
          {% elsif measure_type._parameter_value == 'minimo' %}
          ${unidades_min}
          {% elsif measure_type._parameter_value == 'total' %}
          ${unidades}
        {% else %}
          0
        {% endif %} ;;
  }
}
