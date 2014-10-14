json.array!(@herramienta) do |herramientum|
  json.extract! herramientum, :id, :nombre, :marca, :tipo, :no_bien_nac, :estado, :uso, :responsable, :ubicacion, :material, :factura, :de_un_juego
  json.url herramientum_url(herramientum, format: :json)
end
