# I'm going to create a nested data structure,
# it will be a set of connected data like a hash
# within a hash or an array inside of an array.
 highway = {
  right_lane: {
    nickname: 'Inbound',
    car_color: {
      skirt:'red',
      foil:'black',
      rims:'white'},
    road_condition: {
      wet_or_dry: 'dry',
      traffic: 'light',
      accidents: '6'
    }
  },
  left_lane: {
    nickname: 'Outbound',
    car_color: {
      skirt:'blue',
      foil:'yellow',
      rim:'green'},
    road_condition: {
      wet_or_dry: 'wet',
      traffic: 'heavy',
      accidents: '3'
    }
  }
}

x = ['red', 'black', 'white']

x[0]

puts highway[:right_lane][:car_color]
