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

term.setCursorPos(sizex - #("WolfOS v" .. cver),sizey)
term.write("WolfOS v" .. cver)

if cver < lver then
  term.setCursorPos(1,1)
  term.write("New [u]pdate available! (v".. lver ..")")
  updav = true
end

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
