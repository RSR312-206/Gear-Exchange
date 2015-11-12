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