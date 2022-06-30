term.clear()
term.setCursorPos(1,1)
term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.cyan)
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
term.write("Menu")
function detectclick()
  repeat
    ev, mb, mx, my = os.pullEvent("mouse_click")
  until (mx == 1 or mx == 2 or mx == 3 or mx == 4) and my == 1
  term.clear()
  term.setCursorPos(1,1)
  exit()
end
function changetime()
  term.setCursorPos(sizex - 7,sizey)
  term.write(textutils.formatTime(os.time(),false))
end
while true do
  sleep(0)
  parallel.waitForAny(detectclick, changetime)
end
