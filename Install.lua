print("Welcome to the WolfOS 1.0 installer!")
print("Would you like to start installation? Y/N")
instd = 0
sleep(0.1)
while instd == 0 do
  d = io.read()
  if d ~= "Y" and d ~= "y" then
    break
  else
    instd = 1
    print("Installing..")
  end
end

fs.makeDir("/WolfOS")
io.open("/WolfOS/Menu.lua", "w")
io.write(http.request("https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/WolfOS/Menu.lua"))
io.close()
io.open("/WolfOS/BootMenu.lua", "w")
io.write(http.request("https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/WolfOS/BootMenu.lua"))
io.close()
