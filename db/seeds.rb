# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


large_item1 = Item.create({brand: 'Rossignol', model: 'ALLTRACK PRO 130 SKI BOOTS 2015',
  image: 'http://images.evo.com/imgp/700/69059/333282/rossignol-alltrack-pro-130-ski-boots-2014.jpg',
  price: 380})

mid_item1 = Item.create({brand: 'Black Diamond', model: 'Camalot C4s',
  image: "http://content.backcountry.com/images/items/900/BLD/BLD0839/S60.jpg",
  price: 124})

small_item1 = Item.create({brand: "Six Six One", model: "Rage Knee Guards",
  image: "http://content.backcountry.com/images/items/900/SSO/SSO008I/BK.jpg",
  price: 70})

large_item2 = Item.create({brand: "Shimano", model: "Dura-Ace FC-9000 11-Speed Crankset",
  image: "http://content.backcountry.com/images/items/900/SHI/SHI0597/ONECOL.jpg",
  price: 390})

mid_item2 = Item.create({brand: "Nike", model: "Air Zoom Terra Kiger 3 Trail Running Shoe",
  image: "http://content.backcountry.com/images/items/900/NKE/NKE00F3/HYORORLA.jpg",
  price: 130})

small_item2 = Item.create({brand: "Mammut", model: "El Cap Climbing Helmet",
  image: "http://content.backcountry.com/images/items/900/MAM/MAM0730/WHI.jpg",
  price: 70})

large_item3 = Item.create({ brand: "Big Agnes", model: "Copper Spur UL3 Tent 3-Person 3-Season",
  image: "http://content.backcountry.com/images/items/large/BAG/BAG001H/TERCOT.jpg",
  price: 450 })

mid_item3 = Item.create({brand: "Norrøna", model: "Narvik Dri1 Insulated Short Glove",
  image: "http://content.backcountry.com/images/items/large/NRA/NRA0342/CAV.jpg",
  price: 90})

small_item3 = Item.create({brand: "SmartWool", model: "Basic Footless II Tights",
  image: "http://content.backcountry.com/images/items/large/SWL/SWL00C1/BK.jpg",
  price: 40})

large_item4 = Item.create({brand: "Bogner Fire + Ice", model: "Yvett-D Down Jacket - 600 Fill Power ",
  image: "http://i.stpost.com/bogner-fire--plus--ice-yvett-d-down-jacket-600-fill-power-for-women-in-green~p~7028g_02~1500.2.jpg",
  price: 320})
large_item5 = Item.create({brand: "YES. Tadashi", model: "Fuse Pro-Model Snowboard",
  image: "http://i.stpost.com/yes-tadashi-fuse-pro-model-snowboard-in-157-graphic~p~7503c_03~460.2.jpg",
  price: 350})
large_item6 = Item.create({brand: "Alico", model: "New Guide Mountaineering Hiking Boots - Leather",
  image: "http://i.stpost.com/alico-new-guide-mountaineering-hiking-boots-leather-for-men-in-brown~p~64724_05~460.3.jpg",
  price: 419})

med_item4 = Item.create({brand: "Pearl Izumi ", model: "ELITE In-R-Cool® Short Cut Cycling Shorts ",
  image: "http://i.stpost.com/pearl-izumi-elite-in-r-cool-short-cut-cycling-shorts-for-women-in-black-deep-lake~p~7996p_06~460.2.jpg",
  price: 70})
med_item5 = Item.create({brand: "Barbour", model: "Bonded Cotton Camera Bag",
  image: "http://i.stpost.com/barbour-bonded-cotton-camera-bag-in-olive~p~8565x_01~460.2.jpg",
  price: 199})
med_item5 = Item.create({brand: "Marmot", model: "Boulder 35 Backpack",
  image: "http://i.stpost.com/marmot-boulder-35-backpack-in-cinder~p~6333x_01~460.3.jpg",
  price: 50})

small_item4 = Item.create({brand: "Daniel Green", model: "Salena Knit Slippers",
  image: "http://i.stpost.com/daniel-green-salena-knit-slippers-for-women-in-blue~p~8015d_01~460.2.jpg",
  price: 2015})
small_item5 = Item.create({brand: "Volkl", model: "Team Speed Tennis Racquet - Unstrung",
  image: "http://i.stpost.com/volkl-team-speed-tennis-racquet-unstrung-for-men-and-women-in-black-green~p~8169v_01~460.3.jpg",
  price: 30 })
small_item6 = Item.create({brand: "Merrell", model: "Jungle Moc Shoes - Nubuck, Slip-Ons",
  image: "http://i.stpost.com/merrell-jungle-moc-shoes-nubuck-slip-ons-for-infants-and-toddlers-in-gunsmoke~p~6780v_01~460.2.jpg",
  price: 25})

