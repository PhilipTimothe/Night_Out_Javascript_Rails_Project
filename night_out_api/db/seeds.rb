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
      "neighborhood": "West Village",
      "image": "https://image.newyork.com.au/wp-content/uploads/2010/05/West-Village-New-York.jpeg"
    },
    {
      "id": 2,
      "neighborhood": "East Village",
      "image": "https://upload.wikimedia.org/wikipedia/commons/d/d9/East_Village_Second_Avenue.jpg"
    },
    {
      "id": 3,
      "neighborhood": "Soho",
      "image": "https://upload.wikimedia.org/wikipedia/commons/9/9e/NYC_SoHo_Green_Street.jpg"
    },
    {
      "id": 4,
      "neighborhood": "Lower East Side",
      "image": "https://media-cdn.tripadvisor.com/media/photo-s/0c/bc/16/f9/murales-al-lower-east.jpg"
    },
    {
      "id": 5,
      "neighborhood": "Lower West Side",
      "image": "https://nikkilongphotography.files.wordpress.com/2014/05/infinate-streets-ny.jpg"
    },
    {
      "id": 6,
      "neighborhood": "Chelsea",
      "image": "https://media.timeout.com/images/105160348/image.jpg"
    },
    {
      "id": 7,
      "neighborhood": "Hell's Kitchen",
      "image": "https://media.timeout.com/images/105259656/630/472/image.jpg"
    },
    {
      "id": 8,
      "neighborhood": "Tribeca",
      "image": "https://i.pinimg.com/originals/88/ae/eb/88aeebed9e2f733de2fbde7f34e3f7f4.jpg"
    },
    {
      "id": 9,
      "neighborhood": "Greenwich Village",
      "image": "https://www.tripsavvy.com/thmb/MyeXgbO5Vx60sQOqwzivFBpEM1c=/3956x2225/smart/filters:no_upscale()/greenwich-village-street-scene-537559314-5c2d29a3c9e77c0001709e1e.jpg"
    },
    {
      "id": 10,
      "neighborhood": "Park Slope",
      "image": "https://media.timeout.com/images/103429959/630/472/image.jpg"
    },
    {
      "id": 11,
      "neighborhood": "Flatiron",
      "image": "https://i1.wp.com/nypost.com/wp-content/uploads/sites/2/2017/07/macmillan-leaving-flatiron.jpg?quality=80&strip=all&ssl=1"
    },
    {
      "id": 12,
      "neighborhood": "Midtown East",
      "image": "https://images.squarespace-cdn.com/content/v1/5441c56de4b0f7692c6f6c2f/1432669250345-QGGBK39334G4MZSHJQ3J/ke17ZwdGBToddI8pDm48kAGx3IFADtt9koaOuly55F57gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0pTKqSDRwmMK43IUI3HojJX_iGOyvGz0VEAhzFdMwNTUP3iYIRpjRWHZRVGJwIQ0nA/midtown-east-9+-+Copy.jpg"
    },
    {
      "id": 13,
      "neighborhood": "Midtown West",
      "image": "https://static.travelweekly.com/i/sized/780/437/www.cfmedia.vfmleonardo.com/imageRepo/6/0/99/449/38/nycmf-exterior-1298-hor-clsc_O.jpg"
    },
    {
      "id": 14,
      "neighborhood": "Meatpacking District",
      "image": "https://newyorkyimby.com/wp-content/uploads/2020/05/View-from-9th-Avenue-and-West-14th-Street-of-proposed-restorations-and-addition.jpg"
    },
    {
      "id": 15,
      "neighborhood": "Financial District",
      "image": "https://www.duanestreethotel.com/wp-content/uploads/2017/04/GettyImages-641176590.jpg"
    },
    {
      "id": 16,
      "neighborhood": "Theater District",
      "image": "https://www.thetravelteam.com/wp-content/uploads/2018/12/nyc-theatre-district-to-do.jpg"
    },
    {
      "id": 17,
      "neighborhood": "Astoria",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Astoriaqueens33rdand31st.jpg/1200px-Astoriaqueens33rdand31st.jpg"
    },
    {
      "id": 18,
      "neighborhood": "Bushwich",
      "image": "https://www.cubesmart.com/blog/wp-content/uploads/Bushwick-Collective-Mural-Brooklyn-New-York-8.jpg"
    },
    {
      "id": 19,
      "neighborhood": "Williamsburgh",
      "image": "https://www.tripsavvy.com/thmb/uU7_xCAmrA1HXVvmOpngDjhq3jk=/3435x2576/smart/filters:no_upscale()/south-williamsburg-streetscape--brooklyn-567893317-5ad92d2aa474be0036f506a3.jpg"
    }
  ]

locations.each do |location|
    Api::V1::Location.create(neighborhood: location[:neighborhood], image: location[:image])
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

comments =  [
    {
      "id": 1,
      "title": "Amazzing !!!",
      "comments": "I was here the other day and I had such a blast!  Thank you guys for everything...",
      "rating": 5,
      "restaurant_id": 1
    },
    {
      "id": 2,
      "title": "Omg!",
      "comments": "This was the best thing since I flew to spain for two nights!  ",
      "rating": 5,
      "restaurant_id": 1
    }
  ]

comments.each do |comment|
    Api::V1::Comment.create(title: comment[:title], comments: comment[:comments], rating: comment[:rating], restaurant_id: comment[:restaurant_id])
end