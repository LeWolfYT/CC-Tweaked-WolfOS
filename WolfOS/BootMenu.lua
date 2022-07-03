term.clear()
term.setCursorPos(8,2)
term.write("WolfOS Boot menu")

term.setCursorPos(8,4)
term.write("[S]tart WolfOS")
term.setCursorPos(8,6)
term.write("[E]xit to CraftOS")
term.setCursorPos(8,8)
term.write("[U]ninstall WolfOS")

while true do
  local e,p = os.pullEvent()
    if e == "key" then
      local key = p
      if key == keys.s then
        shell.run("/WolfOS/Menu.lua")
      elseif key == keys.u then
        shell.run("/WolfOS/Uninstall.lua")
      elseif key == keys.e then
        term.clear()
        term.setCursorPos(1,1)
        break
      else
        break
      end
   end
end
