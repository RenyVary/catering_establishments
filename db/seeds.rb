# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: 'some@email.ru', password: '123456789', password_confirmation: '123456789', name: 'RenyVary')
cafe1 = CateringEstabilishment.create(title: 'Someome', description: 'lorem lorem lorem')
category1 = Category.create(title: 'cafe')
category2 = Category.create(title: 'restaurant')
category1 = Category.create(title: 'bar')


