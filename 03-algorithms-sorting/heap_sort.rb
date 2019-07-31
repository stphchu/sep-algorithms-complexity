def heap_sort(array)
  build_heap(array)

  for i in array.length..2
    array[1] = array[i]
    heap_size = heapsize-1
    heapify(array,1)
  end
end

def build_heap(array)
  heap_size = array.length
  for i in (array.length/2).floor..1
    heapify(array,i)
  end
end

def heapify(array,i)
  left = left(i)
  right = right(i)

  if (left <= heap_size) && array[left] > array[i]
    largest = left
  else
    largest = i
  end

  if (left <= heap_size) && (array[right] > array[largest])
    largest = right
  end

  if largest != i
    array[i] = array[largest]
    heapify(array,largest)
  end
end
