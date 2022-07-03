term.clear()
term.setCursorPos(1,1)
term.setBackgroundColor(colors.orange)
term.setTextColor(colors.orange)
sizex, sizey = term.getSize()
for i=1,sizey do
  print(string.rep("#", sizex))
end
term.setCursorPos(1,sizey+1)
term.setBackgroundColor(colors.lightGray)
term.setTextColor(colors.lightGray)
print(string.rep("#", sizex))
term.setTextColor(colors.black)
term.setCursorPos(1,sizey)
term.write("[M]enu")

cver = tonumber(fs.open("/WolfOS/ver.txt", "r").readAll())
lver = tonumber(http.get("https://github.com/LeWolfYT/CC-Tweaked-WolfOS/raw/main/WolfOS/ver.txt").readAll())

function drawtime()
  while true do
    sleep(0.1)
    local time = textutils.formatTime(os.time("local"), false)
    term.setCursorPos((sizex - #time), sizey)
    term.write(time)
  end
end

function keyloop()
  while true do
    local e,p = os.pullEvent()
      if e == "key" then
        local key = p
        if key == keys.m then
          shell.run("/WolfOS/Mainmenu.lua")
        elseif updav and key == keys.u then
          shell.run("/WolfOS/Update.lua")
        end
     end
  end
end
    
if cver < lver then
  term.setCursorPos(1,1)
  term.write("New [u]pdate available! (v".. lver ..")")
  updav = true
end

while true do
  parallel.waitForAll(keyloop, drawtime)
end
