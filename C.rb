def valid?(n, p_arr)
  return false unless n.is_a?(Integer)
  return false unless p_arr.is_a?(Array)
  return false unless p_arr.all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 10**5
  return false if n != p_arr.size
  return false if p_arr.sort != (1..n).to_a
  true
end

def elements(n, p_arr)
  return nil unless valid?(n, p_arr)
  count = 0
  min = p_arr[0]
  (0..n - 1).each do |num|
    if p_arr[num] <= min
      min = p_arr[num]
      count += 1
    end
  end
  count
end

#test
puts elements(5, [4, 2, 5, 1, 3]) == 3
puts elements(4, [4, 3, 2, 1]) == 4
puts elements(6, [1, 2, 3, 4, 5, 6]) == 1
puts elements(1, [1]) == 1
puts elements(0, [nil]) == nil
puts elements(10**5, (1..10**5).to_a) == 1
puts elements(11**5, (1..11**5).to_a) == nil
puts elements(1, [1, 2] ) == nil
puts elements(3, [2, 3, 4]) == nil
puts elements("a", [1]) == nil
puts elements(1, ["a"]) == nil
#all true
