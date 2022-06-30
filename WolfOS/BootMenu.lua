term.clear()
term.setCursorPos(8,2)
term.write("WolfOS Boot menu 1.0")

term.setCursorPos(8,4)
term.write("[S]tart WolfOS 1.0")
term.setCursorPos(8,6)
term.write("[E]xit to CraftOS")
term.setCursorPos(8,8)
term.write("[U]ninstall WolfOS 1.0")

while true do
  local e,p = os.pullEvent()
    if e == "key" then
      local key = p
      if key == 83 then
        shell.run("/WolfOS/Menu.lua")
      elseif key == 85 then
        shell.run("/WolfOS/Uninstall.lua")
      elseif key == 69 then
        break
      else
        break
      end
   end
end
