require 'faker'
cantantes = []
100.times do
  nombre = Faker::Name.name
  correo = Faker::Internet.email(name: nombre)
  domicilio = Faker::Address.full_address

  cantante = {
    nombre: nombre,
    correo: correo,
    domicilio: domicilio
  }
  cantantes << cantante
end

cantantes.each_with_index do |cantante, index|
  puts "Cantante N°: #{index + 1}:"
  puts "Nombre: #{cantante[:nombre]}"
  puts "Correo: #{cantante[:correo]}"
  puts "Domicilio: #{cantante[:domicilio]}"
  puts "/" * 70
end