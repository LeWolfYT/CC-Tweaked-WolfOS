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

function addtx(text, ypos)
  term.setCursorPos(2, ypos)
  term.write(text)
end

addtx("Programs (<X> to exit)", 2)

for i = 1,proglen do
    addtx(i .. ". " .. progs[i], (2*i+2))
end
