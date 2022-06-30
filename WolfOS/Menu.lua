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
term.write("Menu (Shift+M)")
while true do
  sleep(0)
  term.setCursorPos(sizex - 7,sizey)
  term.write(textutils.formatTime(os.time(),false))
end
