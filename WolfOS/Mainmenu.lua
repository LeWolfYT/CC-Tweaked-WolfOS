term.clear()
term.setCursorPos(1,1)
term.setBackgroundColor(colors.lime)
term.setTextColor(colors.lime)
sizex, sizey = term.getSize()
for i=1,sizey do
  print(string.rep("#", sizex))
end
term.setTextColor(colors.black)
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

addtx("1. Cancel", 2)
addtx("2. Exit to CraftOS", 4)
addtx("3. Download programs", 6)

while true do
  local e,p = os.pullEvent()
    if e == "key" then
      local key = p
      if key == keys.one then
        exit()
      elseif key == keys.two then
        shell.run("/WolfOS/Uninstall.lua")
      elseif key == keys.three then
        shell.run("/WolfOS/Dprogs.lua")
        break
      else
        break
      end
   end
end
