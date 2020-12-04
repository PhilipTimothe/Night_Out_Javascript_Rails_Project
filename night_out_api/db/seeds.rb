# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

locations =  [
    {
      "id": 1,
      "neighborhood": "West Village"
    },
    {
      "id": 2,
      "neighborhood": "East Village"
    },
    {
      "id": 3,
      "neighborhood": "Soho"
    },
    {
      "id": 4,
      "neighborhood": "Lower East Side"
    },
    {
      "id": 5,
      "neighborhood": "Lower West Side"
    },
    {
      "id": 6,
      "neighborhood": "Chelsea"
    },
    {
      "id": 7,
      "neighborhood": "Hell's Kitchen"
    },
    {
      "id": 8,
      "neighborhood": "Tribeca"
    },
    {
      "id": 9,
      "neighborhood": "Greenwich Village"
    },
    {
      "id": 10,
      "neighborhood": "Park Slope"
    },
    {
      "id": 11,
      "neighborhood": "Flatiron"
    },
    {
      "id": 12,
      "neighborhood": "Midtown East"
    },
    {
      "id": 13,
      "neighborhood": "Midtown West"
    },
    {
      "id": 14,
      "neighborhood": "Meatpacking District"
    },
    {
      "id": 15,
      "neighborhood": "Financial District"
    },
    {
      "id": 16,
      "neighborhood": "Theater District"
    },
    {
      "id": 17,
      "neighborhood": "Astoria"
    },
    {
      "id": 18,
      "neighborhood": "Bushwich"
    },
  ]

locations.each do |location|
    Api::V1::Location.create(neighborhood: location[:neighborhood])
end

restaurants =  [
    {
      "id": 1,
      "name": "Bonnie's Grill",
      "cuisine": "American",
      "style": "Hot & Spicy Regional American Cuisine", 
      "phone_number": "(718) 369-9527",
      "menu": "https://www.eatatbonnies.com/menu",
      "address": "278 5th Ave, Brooklyn, NY 11215",
      "image": "https://s3-media0.fl.yelpcdn.com/bphoto/hJKYzCF0t95zlFMtyzneQg/l.jpg",
      "likes": 5,
      "location_id": 10
    },
    {
      "id": 2,
      "name": "Gramercy Tavern",
      "cuisine": "American(New)",
      "style": "Danny Meyer's Flatiron District tavern ", 
      "phone_number": "(212) 477-0777",
      "menu": "https://www.gramercytavern.com/gramercy-tavern-menu/",
      "address": "42 E 20th St, New York, NY 10003",
      "image": "https://s3-media0.fl.yelpcdn.com/bphoto/MgfPMoFNmjIWcrMxTZbsvw/l.jpg",
      "likes": 8,
      "location_id": 11
    },
    {
      "id": 3,
      "name": "Catch NYC",
      "cuisine": "Asian",
      "style": "Asian Fusion, Sushi Bars, Seafood", 
      "phone_number": "(212) 392-5978",
      "menu": "https://catchrestaurants.com/catchnyc/#menu",
      "address": "21 9th Ave, New York, NY 10014",
      "image": "https://s3-media0.fl.yelpcdn.com/bphoto/NBWlgWmKUEaE-k0CF9b5wg/l.jpg",
      "likes": 3,
      "location_id": 14
    },
    {
      "id": 4,
      "name": "La Loteria",
      "cuisine": "Mexican",
      "style": "Imaginative twists on Mexican dishes, plus cocktails, presented in a modern, convivial setting.", 
      "phone_number": "(212) 858-9096",
      "menu": "http://www.laloterianyc.com/menus/",
      "address": "29 7th Ave S, New York, NY 10014",
      "image": "https://images.squarespace-cdn.com/content/v1/546f8abce4b08b01e3cfaa4b/1421176275576-1I0F3UJK8CK3APXMXKMV/ke17ZwdGBToddI8pDm48kKCzQu6R4BT5zqRe40olNKZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTm8gdG5xRTtrVVyLXkddLwchyHhFWTGlN3cUNTMki5PNY1TGRehHG5SCVISp4ZVDSB/IMG_3616.jpg?format=500w",
      "likes": 4,
      "location_id": 1
    },
    {
      "id": 5,
      "name": "Hortus NYC",
      "cuisine": "Korean",
      "style": "Asian Fusion, Korean, Tapas/Small Plates", 
      "phone_number": "(646) 858-3784",
      "menu": "https://www.hortusnyc.com/menu/",
      "address": "271 5th Ave, New York, NY 10016",
      "image": "https://s3-media0.fl.yelpcdn.com/bphoto/xTBJX2kp5dr69chHlG-pnQ/l.jpg",
      "likes": 1,
      "location_id": 13
    },
    {
      "id": 6,
      "name": "Excuse My French",
      "cuisine": "French",
      "style": "Bars, Tapas Bars, French", 
      "phone_number": "(212) 780-9600",
      "menu": "https://www.excusemyfrench-nyc.com/copy-of-food-1",
      "address": "96 Orchard St, New York, NY 10002",
      "image": "https://s3-media0.fl.yelpcdn.com/bphoto/VlKFsXO_TqOorH5sMWREWQ/o.jpg",
      "likes": 2,
      "location_id": 4
    },
    {
      "id": 7,
      "name": "Blue Ribbon Brasserie",
      "cuisine": "American",
      "style": "American (Traditional), Cocktail Bars", 
      "phone_number": "(212) 274-0404",
      "menu": "https://www.blueribbonrestaurants.com/restaurants/blue-ribbon-brasserie",
      "address": "97 Sullivan St, New York, NY 10012",
      "image": "https://s3-media0.fl.yelpcdn.com/bphoto/OMYqqgQ-ioT7bCP82xvJDA/o.jpg",
      "likes": 0,
      "location_id": 3
    }
  ]

restaurants.each do |restaurant|
    Api::V1::Restaurant.create(name: restaurant[:name], cuisine: restaurant[:cuisine], style: restaurant[:style], phone_number: restaurant[:phone_number], menu: restaurant[:menu], address: restaurant[:address], image: restaurant[:image], likes: restaurant[:likes], location_id: restaurant[:location_id])
end