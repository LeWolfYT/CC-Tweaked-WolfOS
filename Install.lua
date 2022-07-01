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

if fs.exists("/WolfOS") then
  print("WolfOS is already installed.")
  print("Reinstall WolfOS? (Y/N)")
  while instdt == 0 do
    k = io.read()
    if k ~= "Y" and k ~= "y" then
      break
    else
      instdt = 1
      fs.delete("/WolfOS")
      fs.makeDir("/WolfOS")
      shell.run("wget https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/WolfOS/Menu.lua")
      shell.run("wget https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/WolfOS/BootMenu.lua")
      shell.run("wget https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/WolfOS/Mainmenu.lua")
    end
  end
else
  fs.makeDir("/WolfOS")
  shell.run("cd /WolfOS")
  shell.run("wget https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/WolfOS/Menu.lua")
  shell.run("wget https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/WolfOS/BootMenu.lua")
  shell.run("wget https://raw.githubusercontent.com/LeWolfYT/CC-Tweaked-WolfOS/main/WolfOS/Mainmenu.lua")
end
