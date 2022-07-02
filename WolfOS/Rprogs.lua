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

function has_value(tab, val, prognum)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

numkeys = {keys.one, keys.two, keys.three, keys.four, keys.five, keys.six, keys.seven, keys.eight, keys.nine}

while true do 
  local e,p = os.pullEvent()
    if e == "key" then
      local key = p
      if key == keys.x then
        shell.run("/WolfOS/Menu.lua")
      elseif has_value(numkeys, p, proglen) and not has_value(numkeys, (p - (9 - proglen)), proglen) then
        shell.run("/WolfOS/Programs/" .. progs[p - 48])
      else
        break
      end
   end
end
