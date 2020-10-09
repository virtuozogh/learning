letters = {
  [0] = "a",
[1] = "b",
[2] = "c",
[3] = "d",
[4] = "e",
[5] = "f",
[6] = "g",
[7] = "h",
[8] = "i",
[9] = "j",
[10] = "k",
[11] = "l",
[12] = "m",
[13] = "n",
[14] = "o",
[15] = "p",
[16] = "q",
[17] = "r",
[18] = "s",
[19] = "t",
[20] = "u",
[21] = "v",
[22] = "w",
[23] = "x",
[24] = "y",
[25] = "z"
  }

letter = {
  "a",
"b",
"c",
"d",
"e",
"f",
"g",
"h",
"i",
"j",
"k",
"l",
"m",
"n",
"o",
"p",
"q",
"r",
"s",
"t",
"u",
"v",
"w",
"x",
"y",
"z"
}

seed_number = os.time()
math.randomseed(seed_number)
print(math.random(26))

-- Randomizer // you can also input your own letters here
a = letter[math.random(26)]
b = letter[math.random(26)]
c = letter[math.random(26)]

print(a .. b .. c)

input = nil
input1 = nil
input2 = nil
acheck = " _ "
bcheck = " _ "
ccheck = " _ "

done = false
done1 = false
done2 = false

while (not done) or (not done1) or (not done2) do
  if (not done) or (not done1) or (not done2) then
    print("Input your letters:" .. acheck .. bcheck .. ccheck)
    input = io.read()
    -- possible to add char and chop down letters into multiple characters
    if input == tostring(a) or (done) then
      acheck = a
      done = true
    end
    if input == tostring(b) or (done1) then
      bcheck = b
      done1 = true
    end
    if input == tostring(c) or (done2) then
      ccheck = c
      done2 = true
    end 
  end
end 

print("The letters are " .. a .. b .. c)
print("Congrats!")