json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usbid, :nombre, :apellido, :laboratorio
  json.url usuario_url(usuario, format: :json)
end
