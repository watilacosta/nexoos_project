# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'CRIANDO USUÁRIO ADMIN'
admin = User.create!(
  email: 'admin@nexoos.com.br',
  password: '123456',
  name: 'Usuário Admin',
  role: :admin
)
puts 'Acesso de Admin: '
puts "Email: #{admin.email}"
puts 'Senha: 123456'