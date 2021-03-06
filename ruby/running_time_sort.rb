# frozen_string_literal: true

def running_time(array)
  cnt = 0
  (1...(array.length)).each do |x|
    y = x
    while y.positive?
      break unless array[y - 1] > array[y]

      temp_num = array[y]
      array[y] = array[y - 1]
      array[y - 1] = temp_num
      cnt += 1
      y -= 1
    end
  end
  cnt
  # p array

end

puts running_time([10,9,8,7,6,5,4,3,2,1])
# =>
