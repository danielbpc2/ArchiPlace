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
projectseed.image = "eyjo6pxzse7ibiplnkrz"
projectseed.location = "São Paulo"
projectseed.dimensions = "4mx3mx4mx3m"
projectseed.description = "This is my description, this is a test"
projectseed.budget = 100
projectseed.deadline = "30 dias"
projectseed.room = "Bedroom"
projectseed.user = User.last
projectseed.save(validate: false)
projectseed2 = Project.new
projectseed2.title = "My project2"
projectseed2.image = "eyjo6pxzse7ibiplnkrz"
projectseed2.location = "RIO"
projectseed2.dimensions = "5mx5m"
projectseed2.description = "This is my cription, this is a test"
projectseed2.budget = 200
projectseed2.deadline = "40 dias"
projectseed2.room = "Bathroom"
projectseed2.user = User.last
projectseed2.save(validate: false)
projectseed3 = Project.new
projectseed3.title = "My project3"
projectseed3.image = "eyjo6pxzse7ibiplnkrz"
projectseed3.location = "Recife"
projectseed3.dimensions = "100mx10m"
projectseed3.description = "cription, this is a test"
projectseed3.budget = 20000
projectseed3.deadline = "409 dias"
projectseed3.room = "Kitchen"
projectseed3.user = User.last
projectseed3.save(validate: false)
puts 'saved'
