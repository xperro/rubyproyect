json.extract! registro, :id, :guia, :ref, :estado, :fecha_salida, :promesa_de_entrega, :dias_de_retraso, :intentos_de_entrega, :nombre, :direccion, :informacion_adicional, :adicional, :ind_inter, :comentarios, :created_at, :updated_at
json.url registro_url(registro, format: :json)
