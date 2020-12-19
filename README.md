# Computercraft Project

idk its christmas break and im bored

pastebin program doesnt work in 1.75 so here's a oneliner:
```lua
f=fs.open("i","w")f.write(http.get("https://raw.githubusercontent.com/Azure-Agst/cc-lua/main/enroll.lua").readAll())f.flush()f.close()dofile("i")fs.delete("i")exit()
```

## notes:

### Regarding importing

- CC fucking sucks
- Typically in lua, you'll import a module using the `require "fileprefix"` and it assigns whatever local object is returned from the child script into a specified variable.
- CC imports modules using `os.loadAPI(path)`, which runs the script and adds any global variables into a table within the global environment, which can then referenced by using the variable of the same name as the file.