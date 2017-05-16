# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin1 = User.create!(name: 'Ulan', email: 'admin@m.r', address: 'Mikrash', phone: '0555555555', password: '123456', password_confirmation: '123456')


bazar1 = Bazar.create!(name: 'Ошский рынок')
bazar1 = Bazar.create!(name: 'Дордой рынок')
bazar1 = Bazar.create!(name: 'Отро-Сай рынок')
bazar1 = Bazar.create!(name: 'Беш-Саары рынок')

podrazdel1 = Podrazdel.create!(name: 'Европейский рынок', bazar_id: 2)

container1 = Container.create!(name: '№1', number: 1, user_id: 1, podrazdel_id: 1)

product1 = Product.create!(name: 'Кепка Adidas', price: 250, desc: 'Крутая кепа', user_id: 1, container_id: 1 )
product2 = Product.create!(name: 'Кепка Puma', price: 250, desc: 'Крутая кепа', user_id: 1, container_id: 1 )
product3 = Product.create!(name: 'Кепка Nike', price: 250, desc: 'Крутая кепа', user_id: 1, container_id: 1 )