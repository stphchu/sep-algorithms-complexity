def nearest_possible_neighbor(current_city)
  neighbor_cities = current_city.neighbors
  nearest_neighbor = neighbor_cities[0]

  for current_neighbor in neighbor_cities
    if (current_neighbor.visited == false) && (current_neighbor.distance < nearest_neighbor.distance)
      current_neighbor = nearest_neighbor
    end
  end
  nearest_neighbor
end

#####

class City
  attr_accessor :name
  attr_accessor :long_lat
  attr_accessor :visited
  attr_accessor :neighbors

  def initialize(name, long, lat)
    @name = name
    @long_lat = [long,lat]
    @visited = false
  end
end

def distance (loc1, loc2)
  loc1 = loc1.long_lat
  loc2 = loc2.long_lat

  rad_per_deg = Math::PI/180  # PI / 180
  rkm = 6371
  rm = rkm * 1000

  dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg
  dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

  lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
  lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

  a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
    c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

  rm * c
end

def tsp_greed(current,cities)

end

sf = City.new("san francisco", 37.7749, 122.4194)
la = City.new("los angeles", 34.0522, 118.2437)
lv = City.new("las vegas", 36.1699, 115.1398)
pdx = City.new("portland", 45.5155, 122.6793)
oak = City.new("oakland", 37.8044, 122.2712)
sea = City.new("seattle", 47.6062, 122.3321)

cities = [sf,la,lv,pdx,oak,sea]


tsp_greed(sf, cities)
