# Improved Time Complexity

def poorly_written_ruby(*arrays)
 array = arrays.concat.flatten

 def mergeSort(array)
     if array.length <= 1
       return array
     else
       mid = (array.length/2).floor
       left = mergeSort(array[0..mid-1])
       right = mergeSort(array[mid..array.length])
       merge(left,right)
     end
 end

 def merge(left,right)
   if left.empty?
     return right
   elsif right.empty?
      return left
   elsif left.first < right.first
     [left.first] + merge(left[1..left.length], right)
   else
     [right.first] + merge(left, right[1..right.length])
   end
 end
 mergeSort(array)
end
