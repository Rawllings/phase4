# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Hero.create(name: "Batman", super_name: "Bruce Wayne")
Hero.create(name: "Superman", super_name: "Clark Kent")

Power.create(name: "Super Strength", description: "Superman can lift 100 tons")
Power.create(name: "Super Speed", description: "Superman can run at 670 mph")

HeroPower.create(hero_id: 1, power_id: 1, strength: "Weak")
HeroPower.create(hero_id: 1, power_id: 2, strength: "Strong")
HeroPower.create(hero_id: 2, power_id: 1, strength: "Strong")
