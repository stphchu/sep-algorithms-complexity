def poorly_written_ruby(*arrays)
  array = arrays.concat.flatten
  return array if array.length <= 1

  pivot = array.delete_at(rand(array.length))
  left = []
  right = []

  array.each do |x|
    x <= pivot ? left << x : right << x
  end

  return *poorly_written_ruby(left), pivot ,*poorly_written_ruby(right)

end
