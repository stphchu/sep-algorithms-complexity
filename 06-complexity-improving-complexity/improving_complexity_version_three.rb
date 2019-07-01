# Improved Space Complexity

def poorly_written_ruby(*arrays)
  array_hash = {}
  array_hash[:combined_array] = arrays.concat.flatten

  array_hash[:sorted_array] = array_hash[:combined_array].sort
end
