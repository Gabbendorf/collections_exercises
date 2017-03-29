space = "***"
# A. Given the following data structure:
a = ["Anil", "Erik", "Jonathan"]

# 1. How would you return the string "Erik"?
puts a[1]
# 2. How would you add your name to the array?
puts space
a.push("Gabriella")
puts a
puts space
# B. Given the following data structure:
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# 1. How would you return the string "One"?
puts h[1]
# 2. How would you return the string "Two"?
puts space
puts h[:two]
puts space
# 3. How would you return the number 2?
puts h["two"]

# 4. How would you add {3 => "Three"} to the hash?
h[3] = "Three"
puts h
puts space
# 5. How would you add {:four => 4} to the hash?
h[:four] = 4
puts h
puts space
# C. Given the following data structure:
is = {true => "It's true!", false => "It's false"}
yes = "That's correct!"
no = "That's wrong."
# 1. What is the return value of is[2 + 2 == 4]?
if is[2 + 2 == 4] == "It's true!"
  puts yes
else
  puts no
end
puts space
# 2. What is the return value of is["Erik" == "Jonathan"]?
if is["Erik" == "Jonathan"] == "It's false"
  puts yes
else
  puts no
end
puts space
# 3. What is the return value of is[9 > 10]?
if is[9 > 10] == "It's false"
  puts yes
else
  puts no
end
puts space
# 4. What is the return value of is[0]?
if is[0] == nil
  puts yes
else
  puts no
end
puts space
# 5. What is the return value of is["Erik"]?
if is["Erik"] == nil
  puts yes
else
  puts no
end
