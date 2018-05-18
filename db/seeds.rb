# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


puts 'Creating 30 fake users...'
30.times do |n|
  user = User.new(
    firstname: Faker::Name,
    lastname: Faker::Name,
    phone_number: Faker::PhoneNumber,
    email:     "#{n}#{Faker::Internet.email}",
    password: 'djifdjnfjdf'
  )
  user.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  user.save!
end

  user = User.new(
    firstname: "TestFirst",
    lastname: "TestLast",
    phone_number: Faker::PhoneNumber,
    email:     "test@test.com",
    password: 'test123'
  )
  user.remote_photo_url = "https://res.cloudinary.com/dbhchqzna/image/upload/v1526026709/sample.jpg"
  user.save!

puts 'Creating 20 fake places...'


1.times do
  place = Place.new(
    user: User.first,
    address:     '4, quai des Chartrons, Bordeaux',
    price: 500,
    name:       "SYMBIOSE",
    description: "La Symbiose, dans cette cambuse en deux temps amarrée quai des Chartrons, c’est le ping-pong entre la cuisine-labo de Félix Clerc et le bar du soir géré par ses trois alcoolytes",
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526651574/bar-symbiose-bordeaux.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:     '8, place du Palais, Bordeaux',
    price: 500,
    name:       "Restaurant La Cagette",
    description: "QG des Bo(bo)rdelais, cette cantine avec porche en pierre et cuisine ouverte accueille sans chaleur mais promet de parfaites assiettes saisonnières."
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526652000/04_03_02_10_file.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:     '59, rue du Palais-Gallien, Bordeaux',
    price: 500,
    name:       "Restaurant Tentazioni",
    description: "QG des Bo(bo)rdelais, cette cantine avec porche en pierre et cuisine ouverte accueille sans chaleur mais promet de parfaites assiettes saisonnières."
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526651946/tantazioni.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:     '35, rue de Cancera, Bordeaux',
    price: 500,
    name:       "Restaurant Soif",
    description: "Avis de grand’soif dans le cœur 
    hypstérique de Bordeaux, où un couple de jajaphiles 
    parigots ont mis un an pour retaper un karaoké tout pourri en 
    pimpant abreuvoir à la mise bistro. Accoudé au bar en Formica ou assis sur 
    chaises Baumann, entre cave vitrée et grandes baies sur rue, on voit fuser les gorgeons 
    nature soigneusement castés par Nicolas Lefevre : Duchêne en Collioure, Dutraive en Fleurie, Olivier Techer dans l’Entre-deux-Mers Satellite 
    (5 € le verre), ou le roi Courtois en Sologne avec son Racines Blanc 2014 (39 € la quille)"
    )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526652653/restaurant-soif-bordeaux.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:     '1, pl. du Général-Sarrail, Bordeaux',
    price: 500,
    name:       "Restaurant Hutong",
    description: "Ni chinois, ni malaisien. Singapourien ! Ex-Soléna, Jason Ang et Boris Geoffroy dépotent en mode street food dans cette micro-cantine 
    asiat’-chic, avec comptoir cuisine, murs en pierre bordelaise et parquet blond. Au programme : parfums intenses et concentrés 
    (lait de coco, citronnelle, condiments maison…)"
    )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526652732/restaurant-hutong-bordeaux.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:     '8, rue du Chai des Farines, Bordeaux',
    price: 500,
    name:       "Restaurant The Meat Pack",
    description: "Cinq ans après La Cagette, cantine fétiche du Bordeaux nouveau, Tim Remi et Théo Saint Martin enfoncent 
    le cool deux rues plus loin avec The Meat Pack, cercle viandard pour carnages du soir. Le spot ? Une ancienne forge 
    du quartier Saint-Pierre relookée en duplex chic avec aplats noir mat, alliages bois-métal, appliques laiton, 
    tomettes vintage en bas et parquet brut à l’étage. Mais la vraie reusta, c’est la parrilla !"
    )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526652964/restaurant-the-meat-pack-bordeaux.jpg"
  place.save!
end


1.times do
  place = Place.new(
    user: User.first,
    address:     '43, rue de Cheverus, Bordeaux',
    price: 500,
    name:       "Restaurant le Flacon",
    description: "Derrière une façade mystérieuse, cette pioche de poche aux airs vampiriques (banquettes rouge sang, sol gris souris, chaises métal)
     recèle force créatures vineuses et diableries gustatives ! Bazardés sur le vif par Valérie, en cette soirée d’élection, 
     de démoniaques rillettes de thon twistées au citron vert et ponzu, un jambon Bellota suintant, des bouchons réunionnais explosifs au porc et 
     combava, une caillette ardéchoise à se ronger les doigts, et une onctueuse crème chocolatmaison."
     )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526653095/restaurant-le-flacon-bordeaux.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:     '9, rue Ausone, Bordeaux',
    price: 500,
    name:       "Restaurant Mampuku",
    description: "Mais où étaient les clients ce samedi midi-là ?! Nous nous sentions bien seuls dans ces beaux volumes voûtés 
    en pierre bordelaise, près du comptoir verni où se boulottent en rafales les petits plats asie-mutés de Gil Elad et Arnaud Lahaut, 
    tandem de chefs au poil déjà aux manettes de Miles"
     )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526654944/mampuku-restaurant-bordeaux.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:     '62, rue Abbé-de-l’Epée, Bordeaux',
    price: 500,
    name:       "Restaurant Garopapilles",
    description: "L’ancien magasin de jouets rebrossé en cave restaurante par Tanguy Laviale (aux fourneaux) et Gaël 
    Morand (aux tonneaux) est toujours aussi frais avec sa cuisine ouverte et son patio d’herbes aromatiques. Ce jour-là, kiffomètre au 
    max avec le menu déj’ (45 €) : délicat filet de rouget sur salade d’épeautre printanière, petits pois et émulsion de têtes de langoustines ; 
    ravioles caressantes au foie gras, cubes de truite colorés par un bouillon brûlant (bonite séchée, bœuf), oignons pickles et shimeji vinaigrés ; 
    filet de bœuf aubrac laqué au soja, fondant comme du beurre ; et solide baba enrhumé, avec quenelle de glace au lait de brebis et granité citron-vert
     fouette-papilles."
     )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526653249/restaurant-garopapilles-bordeaux_Garopapilles.jpg"
  place.save!
end


1.times do
  place = Place.new(
    user: User.first,
    address:     '14, rue Crespin du Gast, Paris',
    price: 500,
    name:       "Bar Le Perchoir",
    description: "Comme pour les vols long-courriers, il faut prendre son mal en patience avant de décoller. Pour accéder au Perchoir, premier du nom (2013), comptez une heure d’attente si vous arrivez à 19 heures, un vendredi soir… Mais une fois sur le toit terrasse de cet immeuble indus’, le panorama sur Paname, la déco bédouino-scandinave (bois brut, coussins colorés, grande toile de tente), l’électro-pop et la faune hipsteri-cool font tout pardonner."
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526654728/bar-le-perchoir-paris2.jpg"
  place.save!
end


1.times do
  place = Place.new(
    user: User.first,
    address:     '28 rue Saint-Benoît, Paris',
    price: 500,
    name:       "BLACK BAR DU MONTANA",
    description: "Inutile de porter plus longtemps le deuil du Gauche caviar, éphémère restaurant de l’hôtel Montana"
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526640446/bar-black-bar-du-montana-paris.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:  'Port de la Conférence, pont de lalma, Paris',
    price: 500,
    name:       "MONSIEUR MOUCHE",
    description: "Le rooftop avec la plus belle vue de Paris culmine donc à… un étage !"
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526649014/bar-monsieur-mouche-paris-1.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:  '283, rue Saint-Jacques, Paris',
    price: 500,
    name:       "Bar Solera",
    description: "Fini les costumes prince-de-galles ! Anciens de l’hôtel homonyme, Christopher Gaglione et son équipe ont troqué leurs 
    vestes de palace pour des tee-shirts, le jazz d’ascenseur pour du hip-hop, et leur comptoir de luxe pour ce Solera."
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526650818/bar-solera-paris.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:  '34, rue Duperré, Paris',
    price: 500,
    name:       "Bar à Gin du Carmen",
    description: "Sous les moulures classées des anciens salons de l’hôtel Halévy où logea Bizet, le gin a campé son ambassade tonique. 
    Autrefois réservé aux noctambules qui réussissaient à convaincre le Cerbère de l’entrée à les laisser passer, le coin bar du Carmen s’ouvre 
    désormais largement dès l’apéro time."
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526652459/jyksc5cjzev9obrsevnf.jpg"
  place.save!
end

1.times do
  place = Place.new(
    user: User.first,
    address:  '58, rue Jean-Jacques Rousseau, Paris',
    price: 500,
    name:       "Ballroom du Beef Club",
    description: "Sous les pavés (de bœuf), le speakeasy. Caché dans la cave du Beef Club, où l’on accède par une discrète porte sur la rue, 
    le Ballroom joue à fond le QG d’Al Capone, avec atmosphère crépusculaire, plafond en tuiles étamées et gros canapés capitonnés. 
    La bande de l’Experimental Group (déjà aux manettes du Prescription Cocktail Club, de l’Experimental Cocktail Club ou du Grand Pigalle Hotel) ne
     change pas une formule qui gagne : carte resserrée (onze cocktails) avec alcools choisis, fruits frais et sirops maison."
  )
  place.remote_photo_url = "http://res.cloudinary.com/due7frfxr/image/upload/v1526651064/bar-Ballroom-paris.jpg"
  place.save!
end

puts 'Finished!'
