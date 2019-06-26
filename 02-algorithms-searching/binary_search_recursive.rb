def binary_search_recursive(collection, value, min=0, max=collection.length-1)

  if (min <= max)
    mid = (min+max)/2
     if value < collection[mid]
       return binary_search_recursive(collection, value, min, max-1)
     elsif value > collection[mid]
       return binary_search_recursive(collection, value, mid+1, max)
     else
       return mid
     end
   end  
  return "Not found"
end
