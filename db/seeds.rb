# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
User.destroy_all
Meal.destroy_all
Wine.destroy_all
Suggestion.destroy_all
WineRegion.destroy_all
WineType.destroy_all
MainCategory.destroy_all
CookingMethod.destroy_all

puts "creating users"
file = URI.open("https://avatars0.githubusercontent.com/u/61019314?v=4")
U1 = User.new(email: "aida@test.org", password: "lewagon")
U1.save
file = URI.open("https://avatars2.githubusercontent.com/u/69153626?v=4")
U2 = User.new(email: "baptiste@test.org", password: "lewagon")
U2.save
file = URI.open("https://avatars3.githubusercontent.com/u/69260934?v=4")
U3 = User.new(email: "bastien@test.org", password: "lewagon")
U3.save

puts "creating wine regions"
file = URI.open("https://res.cloudinary.com/duf8mmjpl/image/upload/v1606305282/forme_bouteille_j1otrc.png")
bourgogne = WineRegion.new(name: "Bourgogne")
bourgogne.photo.attach(io: file, filename: "bouteillebourgogne")
bourgogne.save

file = URI.open("https://res.cloudinary.com/duf8mmjpl/image/upload/v1606314948/bouteillebordeaux_fo1o9p.png")
bordelais = WineRegion.new(name: "Bordelais")
bordelais.photo.attach(io: file, filename: "bouteillebordelais")
bordelais.save

file = URI.open("https://res.cloudinary.com/duf8mmjpl/image/upload/v1606314948/bouteillecdurhone_vg0epj.png")
rhone = WineRegion.new(name: "Vallée du Rhône")
rhone.photo.attach(io: file, filename: "bouteillerhone")
rhone.save

file = URI.open("https://res.cloudinary.com/duf8mmjpl/image/upload/v1606314948/bouteillecdurhone_vg0epj.png")
lanquedoc = WineRegion.new(name: "Languedoc")
lanquedoc.photo.attach(io: file, filename: "bouteillelanquedoc")
lanquedoc.save

file = URI.open("https://res.cloudinary.com/duf8mmjpl/image/upload/v1606314948/bouteille_alsace_r3rw49.png")
alsace = WineRegion.new(name: "Alsace")
alsace.photo.attach(io: file, filename: "bouteillealsace")
alsace.save

file = URI.open("https://res.cloudinary.com/duf8mmjpl/image/upload/v1606314947/bouteillevdeloire_ne0utr.png")
loire = WineRegion.new(name: "Valée de la Loire")
loire.photo.attach(io: file, filename: "bouteilleloire")
loire.save

puts "creating wine types"
rouge = WineType.create(name: "Rouge")
blanc_sec = WineType.create(name: "Blanc sec")
rose = WineType.create(name: "Rosé")
blanc_liquoreux = WineType.create(name: "Blanc moelleux ou liquoreux")
effervescent = WineType.create(name: "Effervescent")

puts "creating main categories"
viandes_rouges = MainCategory.create(name: "Viandes rouges")
viandes_blanches = MainCategory.create(name: "Viandes blanches")
poissons = MainCategory.create(name: "Poissons & Fruits de mer")
vegetarien = MainCategory.create(name: "Végétarien")
fromages = MainCategory.create(name: "Fromages")
desserts = MainCategory.create(name: "Desserts")

puts "creating cooking methods"
sauce = CookingMethod.create(name: "En sauce")
grille = CookingMethod.create(name: "Grillé/rôti")
epice = CookingMethod.create(name: "épicé/exotique")
frais = CookingMethod.create(name: "Frais")
affine = CookingMethod.create(name: "Affiné")
chocolat = CookingMethod.create(name: "Chocolat")
fruit = CookingMethod.create(name: "Fuits")
cremeux = CookingMethod.create(name: "Crémeux")

puts "creating suggestions"

Suggestion.create(wine_region: bourgogne, wine_type: rouge, main_category: viandes_rouges, cooking_method: sauce)
Suggestion.create(wine_region: bourgogne, wine_type: blanc_sec, main_category: viandes_blanches, cooking_method: sauce)
Suggestion.create(wine_region: bordelais, wine_type: rouge, main_category: viandes_rouges, cooking_method: grille)
Suggestion.create(wine_region: loire, wine_type: blanc_sec, main_category: poissons, cooking_method: grille)
Suggestion.create(wine_region: loire, wine_type: blanc_sec, main_category: fromages, cooking_method: frais)
Suggestion.create(wine_region: lanquedoc, wine_type: rouge, main_category: viandes_rouges, cooking_method: epice)
Suggestion.create(wine_region: bordelais, wine_type: blanc_liquoreux , main_category: desserts, cooking_method: chocolat)


puts "creating meals"

Meal.create(name: "Boeuf Bourguignon", main_category: viandes_rouges, cooking_method: sauce)
Meal.create(name: "Blanquette de Veau", main_category: viandes_blanches, cooking_method: sauce)
Meal.create(name: "Côte de Boeuf", main_category: viandes_rouges, cooking_method: grille)
Meal.create(name: "Volaille à la crème", main_category: viandes_blanches, cooking_method: sauce)
Meal.create(name: "Plateau de fruits de mer", main_category: poissons, cooking_method: grille)
Meal.create(name: "Chèvre frais",main_category: fromages , cooking_method: frais)
Meal.create(name: "Couscous", main_category: viandes_rouges, cooking_method: epice)
Meal.create(name: "Fondant au chocolat",main_category: desserts , cooking_method: chocolat)


puts "creating wines"

Wine.create(
  name: "Gevrey-Chambertin",
  description: "Les Gevrey Chambertin sont des vins rouges très colorés, alliant puissance et finesse, et dotés d’un excellent potentiel de garde.",
<<<<<<< HEAD
  price:"> 30",
=======
  price:"30+",
>>>>>>> 506e1ba4a16dab14801a39206c404723aed86e93
  millesime: "2005, 2009, 2015",
  cepage: "pinot noir",
  wine_region: bourgogne,
  wine_type: rouge)

Wine.create(
  name: "Givry",
  description: "Les Givry sont des vins rouges très colorés, alliant puissance et finesse, et dotés d’un excellent potentiel de garde.",
<<<<<<< HEAD
  price:"> 30",
=======
  price:"30+",
>>>>>>> 506e1ba4a16dab14801a39206c404723aed86e93
  millesime: "2005, 2009, 2015",
  cepage: "pinot noir",
  wine_region: bourgogne,
  wine_type: rouge)

Wine.create(
   name: "Côte de Nuits-Villages",
   description: "Les Côte-de-Nuits Villages sont des vins plaisants et de surcroît accessibles. Le pinot noir donne de superbes reflets pourpres allant vers le grenat intense, et des arômes de cerise, de cassis et de groseille, nuancés par des notes d’épices et de sous-bois. En bouche, ces rouges sont gras et ronds, avec des tannins bien présents dans leur jeunesse.",
   price:"10 - 20",
   millesime: "2005, 2009, 2015",
   cepage: "pinot noir",
   wine_region: bourgogne,
   wine_type: rouge)

Wine.create(
  name: "Corton Charlemagne",
  description: "A Corton Charlemagne Le chardonnay tire de ces différents climats un bouquet équilibré, élégant et des plus délicats, alliant les agrumes, le beurre, la pomme au four, l’ananas, le tilleul, le genévrier, la fougère, la cannelle et le silex. Ce sont des vins amples et gras, qui pour révéler leur finesse et leur complexité, doivent vieillir longtemps.",
<<<<<<< HEAD
  price:"> 30",
=======
  price:"30+",
>>>>>>> 506e1ba4a16dab14801a39206c404723aed86e93
  millesime: "2005, 2009, 2015",
  cepage: "chardonnay",
  wine_region: bourgogne,
  wine_type: blanc_sec)

Wine.create(
  name: "Pernand-Vergelesses",
  description: "Les Pernand-Vergelesses blancs représentent plus de 40 % de cette appellation. Ils développent agréablement les caractéristiques du chardonnay à travers des arômes de fleurs blanches, et avec l’âge, d’ambre et de miel.",
  price:"20 - 30",
  millesime: "2005, 2009,2015",
  cepage: "chardonnay",
  wine_region: bourgogne,
  wine_type: blanc_sec)

Wine.create(
  name: "Rully", description: "Les Rully blancs sont, dans leur jeunesse, parés d’une robe dorée à reflets verts et offrent d’excellents arômes de fleurs de haies (acacia, chèvrefeuille, aubépine, etc.), de citron, de pêche blanche, ainsi que la minéralité du silex. En vieillissant, leur robe évolue vers le bouton d’or et ils acquièrent des notes de miel, de coing et de fruits secs.",
  price:"10 - 20",
  millesime: "2005, 2009,2015",
  cepage: "chardonnay",
  wine_region: bourgogne,
  wine_type: blanc_sec)

Wine.create(
  name: "Médoc", description: "La bouche des Médoc est bien structurée, pleine sur une trame de tannins savoureux. Les vins issus de graves sont puissants et corsés. Ils peuvent être tanniques dans leur jeunesse et gagnent à être attendus 5 à 10 ans.",
<<<<<<< HEAD
  price:"> 30",
=======
  price:"30+",
>>>>>>> 506e1ba4a16dab14801a39206c404723aed86e93
  millesime: "2016, 2010,2009",
  cepage: "cabernet-sauvignon. merlot. cabernet franc. petit verdot",
  wine_region: bordelais,
  wine_type: rouge)

Wine.create(
  name: "Saint-Estèphe",
  description: "Les Saint-Estèphe sont caractérisés par leurs côtés charpentés, robustes et solides. La bouche est harmonieuse, puissante et fine, pour donner une finale pleine de distinction et de fraîcheur. En vieillissant, la bouche des Saint-Estèphe s'arrondit.",
<<<<<<< HEAD
  price:"> 30",
=======
  price:"30+",
>>>>>>> 506e1ba4a16dab14801a39206c404723aed86e93
  millesime: "2016, 2010,2009",
  cepage: "cabernet-sauvignon, merlot, cabernet franc et petit verdot",
  wine_region: bordelais,
  wine_type: rouge)

Wine.create(
  name: "Pauillac",
  description: "La bouche des Pauillac est ample, riche, onctueuse, soulignée par une fine trame de tannins serrés et corsés. Le vieillissement de ces vins est exceptionnel : ils ont un grand potentiel de garde, de 15 à 25 ans voir plus pour certains grands crus. Avec les années, les tannins s’arrondissent et les arômes s’ouvrent. Ils perdent ainsi leur agressivité pour devenir fins et délicats, tout en conservant leur puissance.",
  price:"20 - 30",
  millesime: "2016, 2010,2009",
  cepage: "cabernet-sauvignon. merlot. cabernet franc. petit verdot",
  wine_region: bordelais,
  wine_type: rouge)

Wine.create(
  name: "Muscadet",
  description: "Muscadet un vin complexe, gras et avec un beau volume en bouche. Les arômes d’agrumes (citron) frais et nerveux en bouche et savent s’accorder parfaitement avec les crustacés et fruits de mer locaux.",
  price:"10 - 20",
  millesime: "2016, 2010,2009",
  cepage: "melon de Bourgogne",
  wine_region: loire,
  wine_type: blanc_sec)

Wine.create(
  name: "Sancerre",
  description: "Les vins de l’AOC Sancerre présentent une diversité importante reflétant la grande variété des types de sols accueillant les vignes. Les vins des terres blanches se développent avec l’âge mais offrent dès leur jeunesse des arômes opulents.",
  price:"20 - 30",
  millesime: "2016, 2010,2009",
  cepage: "sauvignon",
  wine_region: loire,
  wine_type: blanc_sec)

Wine.create(
  name: "Menetou-Salon",
  description: "L’AOC Menetou-Salon est située sur les vignobles de la sous-région Centre-Loire. Moins connues que les AOC Sancerre ou Blanc fumé de Pouilly, l’AOC Menetou-Salon est de produire une meilleure qualité.",
  price:"20 - 30",
  millesime: "2016, 2010,2009",
  cepage: "sauvigon",
  wine_region: loire,
  wine_type: blanc_sec)
<<<<<<< HEAD
=======





>>>>>>> 506e1ba4a16dab14801a39206c404723aed86e93
