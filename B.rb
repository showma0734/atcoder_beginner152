def valid?(a, b)
  return false unless [a, b].all?{|obj| obj.is_a?(Integer)}
  return false if a < 1 || a > 9
  return false if b < 1 || b > 9
  true
end

def comparing(a, b)
  return nil unless valid?(a, b)
  a_s = a.to_s*b
  b_s = b.to_s*a
  [a_s, b_s].sort.shift
end


#test
puts comparing(4, 3) == "3333"
puts comparing(7, 7) == "7777777"
puts comparing(1, 3) == "111"
puts comparing(0, 3) == nil
puts comparing(9, 3) == "333333333"
puts comparing(10, 3) == nil
puts comparing(3, 1) == "111"
puts comparing(3, 0) == nil
puts comparing(3, 9) == "333333333"
puts comparing(3, 10) == nil
puts comparing("a", 3) == nil
puts comparing(3, "a") == nil
#all true