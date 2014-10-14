json.array!(@equipos) do |equipo|
  json.extract! equipo, :id, :nombre, :marca, :modelo, :serial, :no_bien_nac, :status, :ultima_calibracion, :uso, :responsable, :ubicacion, :fecha_adquisicion, :orden_compra, :costo, :factura
  json.url equipo_url(equipo, format: :json)
end
