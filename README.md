# Computercraft Projects

idk its christmas break and im bored

pastebin program doesnt work in 1.75 so here's a oneliner:
```lua
f=fs.open("i","w")f.write(http.get("https://raw.githubusercontent.com/Azure-Agst/cc-lua/main/enroll.lua").readAll())f.flush()f.close()dofile("i")fs.delete("i")exit()

f=fs.open("startup","w")f.write(http.get("https://pastebin.com/raw/jtr0JG6a").readAll())f.flush()f.close()exit()
```

## projects:

- door - proximity key
- network - uh

## notes:

### Regarding importing

- CC fucking sucks
- Typically in lua, you'll import a module using the `require "fileprefix"` and it assigns whatever local object is returned from the child script into a specified variable.
- Use `local var = assert(loadfile("path"))` instead. refer to var as `var()`