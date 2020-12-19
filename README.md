# Computercraft Project

idk its christmas break and im bored

## notes:

### Regarding importing

- CC fucking sucks
- Typically in lua, you'll import a module using the `require "fileprefix"` and it assigns whatever local object is returned from the child script into a specified variable.
- CC imports modules using `os.loadAPI(path)`, which runs the script and adds any global variables into a table within the global environment, which can then referenced by using the variable of the same name as the file.