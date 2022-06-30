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
term.setCursorPos(sizex - 7,sizey)
term.setTextColor(colors.black)
term.write(textutils.formatTime(os.time(), false))
term.setCursorPos(sizex,sizey)
term.write(" ")
term.setCursorPos(1,sizey)
term.write("<M>enu")
function detectmenu()
  repeat
        local _, key = os.pullEvent("key")
  until key == keys.m
  shell.run("fg /WolfOS/mainmenu.lua")
end
function changetime()
  term.setCursorPos(sizex - 7,sizey)
  term.write(textutils.formatTime(os.time(),false))
end
while true do
  sleep(0)
  parallel.waitForAny(detectmenu, changetime)
end
