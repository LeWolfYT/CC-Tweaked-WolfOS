term.clear()
term.setCursorPos(1,1)
term.setBackgroundColor(colors.red)
term.setTextColor(colors.red)
sizex, sizey = term.getSize()
for i=1,sizey do
  print(string.rep("#", sizex))
end
term.setCursorPos(1,5)
term.setTextColor(colors.black)
progs = fs.list("/WolfOS/Programs")
proglen = #progs
function centerx(text)
  local txl = #text
  local txlg = txl / 2
  local txls = math.floor(txlg)
  local xpos = (sizex / 2) - txls
  return(xpos)
end

function addtx(text, ypos)
  term.setCursorPos(centerx(text), ypos)
  term.write(text)
end

for i in 1,proglen do
  addtx(i .. ". " .. progs[i], ((2 * i) + 2) )
end
