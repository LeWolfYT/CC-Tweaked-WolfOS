term.setCursorPos(1,1)
term.setBackgroundColor(colors.cyan)
term.setTextColor(colors.cyan)
for i == 1, 17 do
  print("###################################################")
end
term.setCursorPos(1,19)
term.setBackgroundColor(colors.lightBlue)
term.setTextColor(colors.lightBlue)
print("###################################################")
term.setCursorPos(46,18)
term.setTextColor(colors.black)
term.write(textutils.formatTime(os.time(), true))
