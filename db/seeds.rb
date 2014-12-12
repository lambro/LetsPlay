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
Gamingsession.destroy_all

u1 = User.create(name: "Laura", dob: "24/06/83", email: "laura@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/square.png')), forem_admin: true)
u2 = User.create(name: "Sarah", dob: "24/07/83", email: "sarah@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/sarahsq.png')), forem_admin: false)
u3 = User.create(name: "Tobias", dob: "25/07/83", email: "tobias@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/tobias.png')), forem_admin: false)
u4 = User.create(name: "Ian", dob: "26/07/83", email: "ian@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/ian.png')), forem_admin: false)
u4 = User.create(name: "Dave W", dob: "26/07/83", email: "davew@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/davew.png')), forem_admin: false)
u4 = User.create(name: "Beth", dob: "26/07/83", email: "beth@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/beth.png')), forem_admin: false)
u4 = User.create(name: "Lulu", dob: "26/07/83", email: "lulu@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/lulu.png')), forem_admin: false)
u4 = User.create(name: "Dominic", dob: "26/07/83", email: "dom@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/dom.png')), forem_admin: false)
u4 = User.create(name: "Dave R", dob: "26/07/83", email: "daver@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/daver.png')), forem_admin: false)
u4 = User.create(name: "Jacob", dob: "26/07/83", email: "jacob@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/jacob.png')), forem_admin: false)
u4 = User.create(name: "George", dob: "26/07/83", email: "george@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/george.png')), forem_admin: false)
u4 = User.create(name: "Ben", dob: "26/07/83", email: "ben@email.com", password: "something", postcode: "EC1R 5EN", profile_picture: File.open(File.join(Rails.root, 'app/assets/images/benc.png')), forem_admin: false)

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

cu1 = ConsolesUsers.create(user_id: u1.id, console_id: c4.id, gamer_tag: "LambXJapan")
cu2 = ConsolesUsers.create(user_id: u1.id, console_id: c2.id, gamer_tag: "LambXJapan")
cu3 = ConsolesUsers.create(user_id: u1.id, console_id: c3.id, gamer_tag: "LambXJapan")
cu4 = ConsolesUsers.create(user_id: u2.id, console_id: c3.id, gamer_tag: "LambXJapan")
cu5 = ConsolesUsers.create(user_id: u3.id, console_id: c12.id, gamer_tag: "TobEssex")
cu6 = ConsolesUsers.create(user_id: u4.id, console_id: c4.id, gamer_tag: "LambXJapan")
cu7 = ConsolesUsers.create(user_id: u3.id, console_id: c11.id, gamer_tag: "LambXJapan")

g1 = Game.create(title: "Final Fantasy 10", image: "ff10.jpeg", genre: "JRPG", console_id: c2.id)
g2 = Game.create(title: "GTA V", image: "gta5.jpg", genre: "Action", console_id: c3.id)
g3 = Game.create(title: "Assassins Creed Unity", image: "assassinscreedunity.jpg", genre: "Action", console_id: c4.id)
g4 = Game.create(title: "Mass Effect 3", image: "me3.jpg", genre: "Action / Drama", console_id: c3.id)
g5 = Game.create(title: "Fifa 15", image: "fifa15.jpg", genre: "Sports", console_id: c4.id)
g6 = Game.create(title: "Batman: Arkham Origins", image: "batmanorigins.jpg", genre: "Action", console_id: c4.id)
g7 = Game.create(title: "Infamous Second Son", image: "infamoussecondson.jpg", genre: "Action", console_id: c4.id)
g8 = Game.create(title: "Alien Isolation", image: "alienisolation.jpg", genre: "Horror", console_id: c4.id)
g9 = Game.create(title: "Titan Fall", image: "titanfall.jpg", genre: "Action / FPS", console_id: c12.id)

Gamingsession.create(title: "Laura's LAN Party", online: "false", description: "LAN Party at Laura's place, We're going to play some Destiny with Dragonage Inquisition in the background. All the bandwidth you could want as well as beer and pizza!", active: true, location_name: "Laura's Haus", postcode: "EC1R 5EN", console_id1: c3.id, console_id2: c4.id, open: true)
Gamingsession.create(title: "Sarah's Friday night online sesh", online: "true", description: "Its cold outside so lets meet in cyberspace and shoot each other", active: true, console_id1: c3.id, open: true)
Gamingsession.create(title: "Because I love X-box!", online: "false", description: "All night Titanfall! Why? Because we can!", active: true, location_name: "Tobias Game Room", postcode: "EC1R 5EN", console_id1: c12.id, open: true)
Gamingsession.create(title: "Ife's Footie Night ;)", online: "false", description: "Fifa Fifa Fifa! All night.. Get in!", active: true, location_name: "Ife's Footie Palace", postcode: "EC1R 5EN", console_id1: c3.id, open: true)

u1.user_sessions.create(gamingsession_id: g1.id)
u2.user_sessions.create(gamingsession_id: g1.id)
u3.user_sessions.create(gamingsession_id: g2.id)
u4.user_sessions.create(gamingsession_id: g2.id)
u4.user_sessions.create(gamingsession_id: g3.id)
u3.user_sessions.create(gamingsession_id: g3.id)
u2.user_sessions.create(gamingsession_id: g3.id)
u1.user_sessions.create(gamingsession_id: g3.id)
u1.user_sessions.create(gamingsession_id: g4.id)
u2.user_sessions.create(gamingsession_id: g4.id)
u3.user_sessions.create(gamingsession_id: g4.id)

u1.user_games.create(game_id: g1.id)
u1.user_games.create(game_id: g2.id)
u1.user_games.create(game_id: g3.id)
u1.user_games.create(game_id: g4.id)
u1.user_games.create(game_id: g5.id)
u1.user_games.create(game_id: g6.id)
u2.user_games.create(game_id: g6.id)
u2.user_games.create(game_id: g7.id)
u2.user_games.create(game_id: g8.id)
u2.user_games.create(game_id: g9.id)
u3.user_games.create(game_id: g1.id)
u3.user_games.create(game_id: g2.id)
u3.user_games.create(game_id: g3.id)
u4.user_games.create(game_id: g4.id)
u4.user_games.create(game_id: g5.id)
u4.user_games.create(game_id: g6.id)
u4.user_games.create(game_id: g7.id)




























