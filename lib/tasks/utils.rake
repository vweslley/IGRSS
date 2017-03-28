
require 'faker'
namespace :utils do
  desc "Gera administradores Fake"
  task generation_admins: :environment do
    10.times do
        Admin.create!(name: Faker::Name.name,
                      email: Faker::Internet.email,
                      password: "123456",
                      password_confirmation: "123456",
                      role: [0,1].sample
                      )
      end
    puts "ADMINISTRADOR cadastrado com sucesso."
  end
#####################################################################################
    desc "Gera membros Fake"
    task generation_members: :environment do
      10.times do
          Admin.create!(email: Faker::Internet.email,
                        password: "123456",
                        password_confirmation: "123456"
                        )
        end
      puts "MEMBROS cadastrado com sucesso."
    end
end
