# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Criando conta do Administrador padrão"
Admin.create!(
              name: "Weslley Valadares Milagre",
              email: "admin@admin.com",
              password: "123456",
              password_confirmation: "123456",
              role: 0
              )
puts "Conta Administrador padrão criado com sucesso"
######################################################################################
puts "Criando conta do Membro padrão"
Member.create!(
              email: "membro@membro.com",
              password: "123456",
              password_confirmation: "123456"
              )
puts "Conta Membro padrão criado com sucesso"