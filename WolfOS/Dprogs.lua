term.clear()
term.setCursorPos(1,1)
term.setBackgroundColor(colors.blue)
term.setTextColor(colors.blue)
sizex, sizey = term.getSize()
for i=1,sizey do
  print(string.rep("#", sizex))
end
term.setCursorPos(1,5)
term.setTextColor(colors.black)
term.write("Enter the github username")
term.setCursorPos(1,6)
username = io.stdin._handle.readLine()
term.setCursorPos(1,7)
term.write("Enter the repository")
term.setCursorPos(1,8)
repo = io.stdin._handle.readLine()
term.setCursorPos(1,9)
term.write("Enter the file name")
term.setCursorPos(1,10)
file = io.stdin._handle.readLine()

if not fs.exists("/WolfOS/Programs") then
  fs.makeDir("/WolfOS/Programs")
end

shell.run("cd /WolfOS/Programs")
shell.run("wget https://raw.githubusercontent.com/" .. user .. "/" .. repo .. "/main/" .. file)
