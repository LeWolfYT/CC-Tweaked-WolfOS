term.setCursorPos(1,1)
term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.cyan)
sizex, sizey = term.getSize()
for i=1,sizey do
  print(string.rep("#", sizex))
end
term.setCursorPos(1,20)
term.setBackgroundColor(colors.lightGray)
term.setTextColor(colors.lightGray)
print(string.rep("#", sizex))
term.setCursorPos(46,18)
term.setTextColor(colors.black)
term.write(textutils.formatTime(os.time(), true))
term.setCursorPos(51,19)
term.write(" ")
term.setCursorPos(1,19)
term.write("Menu (Shift+M)")
term.setCursorPos(47,19)
while true do
  sleep(0)
  term.setCursorPos(sizex - 4,sizey)
  term.write(textutils.formatTime(os.time(),true))
end
