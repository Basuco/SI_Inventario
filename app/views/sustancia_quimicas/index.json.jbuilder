json.array!(@sustancia_quimicas) do |sustancia_quimica|
  json.extract! sustancia_quimica, :id, :nombre, :pureza, :estado_materia, :controlado, :regimen_legal, :cantidad, :CAS, :uso, :status, :responsable, :ubicacion, :caducidad, :peligro
  json.url sustancia_quimica_url(sustancia_quimica, format: :json)
end
