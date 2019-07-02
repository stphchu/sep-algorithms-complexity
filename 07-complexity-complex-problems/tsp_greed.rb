# This is code operates under the assumption that there is a `City` class
# with `current_city` as an object.

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
