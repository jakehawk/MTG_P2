# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deck.create(user_id: 1, name: 'Janky McJank')
Spell.create(deck_id: 1, name: 'Lightning Bolt', mana_cost: "{R}", img_url: "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=397722&type=card")
