# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bird.destroy_all
Tree.destroy_all

oak = Tree.create species: "oak"
maple = Tree.create species: "maple"
aspen = Tree.create species: "aspen"

blue_jay = Bird.create species: "blue jay", tree: oak
robin = Bird.create species: "robin", tree: maple
cardinal = Bird.create species: "cardinal", tree: oak
eagle = Bird.create species: "american eagle", tree: aspen
black_tail_hawk = Bird.create species: "black-tail hawk", tree: maple
