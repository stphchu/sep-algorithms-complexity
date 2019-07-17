def bucket_sort(array)
  if array.length <=  1
    return array
  end

  buckets = Array.new(9){Array.new}
  neg_buckets = Array.new(9){Array.new}

  array.each do |i|
    if i < 0
      neg_buckets[(i.abs)/10].push(i)
    else
      buckets[i/10.floor].push(i)
    end
  end

  neg_buckets.reject! { |x| x.empty? }
  buckets.reject! { |x| x.empty? }

   (0..neg_buckets.length-1).each do |i|
     neg_buckets[i].sort!
   end
   (0..buckets.length-1).each do |i|
     buckets[i].sort!
   end

  (neg_buckets + buckets).flatten
end
