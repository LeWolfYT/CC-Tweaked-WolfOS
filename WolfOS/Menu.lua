term.setCursorPos(1,1)
term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.cyan)
for i=1,19 do
  print("###################################################")
end
term.setCursorPos(1,20)
term.setBackgroundColor(colors.lightGray)
term.setTextColor(colors.lightGray)
print("###################################################")
term.setCursorPos(46,18)
term.setTextColor(colors.black)
term.write(textutils.formatTime(os.time(), true))
term.setCursorPos(51,19)
term.write(" ")
term.setCursorPos(1,19)
term.write("Menu (Shift+M)")
while true do
  sleep(0)
  term.setCursorPos(47,19)
  term.write(textutils.formatTime(os.time(),true))
end
