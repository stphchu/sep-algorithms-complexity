# Code Optimizations

def poorly_written_ruby(*arrays)
   combined_array = arrays.concat.flatten
   sorted_array = [combined_array.delete_at(combined_array.length-1)]

   for val in combined_array
     i = 0
     while i <= sorted_array.length
       if i == sorted_array.length
         sorted_array << val
         break
       end
       if val <= sorted_array[i]
         sorted_array.insert(i, val)
         break
       end
       i+=1
     end
   end
   sorted_array
 end
