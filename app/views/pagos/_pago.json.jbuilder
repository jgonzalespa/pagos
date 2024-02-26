json.extract! pago, :id, :fechapago, :anio, :mes, :monto, :created_at, :updated_at
json.url pago_url(pago, format: :json)
