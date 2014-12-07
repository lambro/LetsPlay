# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Console.destroy_all
Game.destroy_all
User.destroy_all
ConsolesUsers.destroy_all

u1 = User.create(name: "Laura", dob: "24/06/83", email: "laura@email.com", password: "something", postcode: "RM79HU", profile_picture: "square.png", forem_admin: true)
u2 = User.create(name: "Sarah", dob: "24/07/83", email: "sarah@email.com", password: "something", postcode: "RM79HU", profile_picture: "sarahsq.png", forem_admin: false)

c1 = Console.create(name: "PlayStation", console_image: "psx.jpg", console_logo: "rails.png")
c2 = Console.create(name: "PlayStation2", console_image: "ps2.jpg", console_logo: "rails.png")
c3 = Console.create(name: "PlayStation3", console_image: "ps3.jpg", console_logo: "rails.png")
c4 = Console.create(name: "PlayStation4", console_image: "playstation4.jpg", console_logo: "rails.png")
c5 = Console.create(name: "Nintendo Gamecube", console_image: "gamecube.jpg", console_logo: "rails.png")
c6 = Console.create(name: "Nintendo Wii", console_image: "wii.jpg", console_logo: "rails.png")
c7 = Console.create(name: "Nintendo Wii-U", console_image: "wiiu.jpg", console_logo: "rails.png")
c8 = Console.create(name: "Nintendo 3DS", console_image: "3ds.jpg", console_logo: "rails.png")
c9 = Console.create(name: "Nintendo DS", console_image: "ds.jpg", console_logo: "rails.png")
c10 = Console.create(name: "Xbox", console_image: "xbox.png", console_logo: "rails.png")
c11 = Console.create(name: "Xbox 360", console_image: "xbox360.jpg", console_logo: "rails.png")
c12 = Console.create(name: "Xbox One", console_image: "xbone.jpg", console_logo: "rails.png")

cu1 = ConsolesUsers.create(user_id: 1, console_id: 1, gamer_tag: "LambXJapan")

g1 = Game.create(title: "Final Fantasy 10", image: "ff10.jpeg", genre: "JRPG", console_id: c2.id)
g2 = Game.create(title: "GTA V", image: "gta5.jpg", genre: "Action", console_id: c3.id)
g3 = Game.create(title: "Assassins Creed Unity", image: "assassinscreedunity.jpg", genre: "Action", console_id: c4.id)
g4 = Game.create(title: "Mass Effect 3", image: "me3.jpg", genre: "Action / Drama", console_id: c3.id)
g5 = Game.create(title: "Fifa 14", image: "fifa15.jpg", genre: "Sports", console_id: c4.id)
g6 = Game.create(title: "Batman: Arkham Origins", image: "batmanorigins.jpg", genre: "Action", console_id: c4.id)
g7 = Game.create(title: "Infamous Second Son", image: "infamoussecondson.jpg", genre: "Action", console_id: c4.id)
g8 = Game.create(title: "Alien Isolation", image: "alienisolation.jpg", genre: "Horror", console_id: c4.id)

