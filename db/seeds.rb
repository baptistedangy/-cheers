# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "create wine"
file = URI.open("https://images.unsplash.com/photo-1503427128716-12b0ed4822bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80")
V1 = Wine.new(name: "Marsannay", description: "Le vignoble s'étend sur les communes de Marsannay-la-Côte, Chenove et Couchey. Il comprend 180 hectares de vins rouges et rosés, et 28 hectares de vins blancs", price: "€€", millesime: "1990, 1996, 2005", cepage:"Pinot noir (rouge), Chardonnay(blanc)", wine_region: nil, wine_type: nil)
V1.photo.attach(io: file, filename: "wine1")
V1.save

puts "wine saved"
