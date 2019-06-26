def binary_search_iterative(collection, value)
  min = 0
  max = collection.length-1

  while min <= max do
    mid = (min+max)/2
    if value < collection[mid]
      max = mid-1
    elsif value > collection[mid]
      min = mid+1
    else
      return mid
    end
  end
  return "Not found"

end
