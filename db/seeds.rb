# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'seeding'
projectseed = Project.new
projectseed.title = "My project"
projectseed.location = "São Paulo"
projectseed.dimensions = "4mx3mx4mx3m"
projectseed.description = "This is my description, this is a test"
projectseed.budget = "R$100,00"
projectseed.deadline = "30 dias"
projectseed.status = "Aberto"
projectseed.room = "Quarto"
projectseed.user = User.last
projectseed.save
puts 'saved'
