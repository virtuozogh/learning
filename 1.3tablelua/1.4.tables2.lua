-- Familiarizing the loops and list , and et cetera in Lua
print("hello to the loops")

-- Loop
letters = {
  [0] = "a",
[1] = "b",
[2] = "c",
[3] = "d",
[4] = "e"
}

index = 0

while letters[index] ~= nil do
  print(index, letters[index])
  index = index + 1
end

print("the number of letters is", #letters)

-- list on letters

NATO = {
  ["a"] = "alpha",
  ["b"] = "bravo",
  ["c"] = "charlie",
  ["d"] = nil
  }

-- response
--[[ -- remove braces when testing response
print("input your initial name: ")
response = io.read()

print("Your codename is " .. NATO[response])

NATO.d = "delta"

print(NATO.c, NATO.d)
]]-- 

-- classes project
class = {
  name = "Heavy",
  def = true,
  health = 300,
  press_e = function()
    print("MEDIC!!!!")
  end
}

print(class.name)
print(class.def)
print(class.health)
class.press_e()

-- for loops
for number = 1, 10, 2 do
  print(number)
end

squad = {"scout", "pyro", "engineer", "spy"}
index = 1

while index <= #squad do
  print(squad[index])
  index = index + 1
end

-- another way
print()
for index = 1, #squad do
  print(squad[index])
  index = index + 1
end
