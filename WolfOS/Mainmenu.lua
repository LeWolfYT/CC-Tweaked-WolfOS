term.clear()
term.setCursorPos(1,1)
term.setBackgroundColor(colors.lime)
term.setTextColor(colors.lime)
sizex, sizey = term.getSize()
for i=1,sizey do
  print(string.rep("#", sizex))
end
term.setTextColor(colors.black)
function centerx(text, size)
  local txl = #text
  local txlg = txl / 2
  local txls = math.floor(txlg)
  local center = math.floor(sizex / 2)
  local xpos = txls - center
  return(xpos)
end
