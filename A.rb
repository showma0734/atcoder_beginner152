def valid?(n, m)
  return false unless [n, m].all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 100
  return false if m < 0 || m > n
  true
end

def ac_wa(n, m)
  return nil unless valid?(n, m)
  n == m ? "Yes" : "No"
end

#test
puts ac_wa(3, 3) == "Yes"
puts ac_wa(2, 1) == "No"
puts ac_wa(0, 0) == nil
puts ac_wa(100, 0) == "No"
puts ac_wa(101, 0) == nil 
puts ac_wa(1, -1) == nil
puts ac_wa(10, 11) == nil
puts ac_wa("a", 1) == nil
puts ac_wa(1, "a") == nil
#all true