def quickSort(array)
  return array if array.length <= 1

  pivot = array.delete_at(rand(array.length))
  left = []
  right = []

  array.each do |x|
    x <= pivot ? left << x : right << x
  end

  return *quickSort(left), pivot ,*quickSort(right)
end
