json.array!(@consumibles) do |consumible|
  json.extract! consumible, :id, :nombre, :descripcion, :dimensiones, :material, :cantidad, :ubicacion, :uso, :responsable
  json.url consumible_url(consumible, format: :json)
end
