array = [10, 8, 3, 5, 2, 4, 11, 18, 20, 33]

len = array.length
  (1..len).each do |i|
    (1..(len-i)).each do |j|
      maenokazu = j - 1
      if array[maenokazu] > array[j]
        save = array[maenokazu]
        array[maenokazu] = array[j]
        array[j] = save
        p array
      end
    end
  end
  
