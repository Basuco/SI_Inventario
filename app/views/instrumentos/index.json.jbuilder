json.array!(@instrumentos) do |instrumento|
  json.extract! instrumento, :id, :nombre, :marca, :modelo, :unidad_medida, :capacidad, :material, :uso, :estado, :ubicacion, :ultima_calibracion, :responsable, :no_bien_nac
  json.url instrumento_url(instrumento, format: :json)
end
