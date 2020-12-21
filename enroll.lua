-- main enrollment script
-- have fun reading this

baseurl = "https://raw.githubusercontent.com/Azure-Agst/cc-lua/main/"
clientFiles = { "json.lua" }
version = ""

-- every version has a startup.lua that gets handled seperately

print("CC Enrollment Script")
print("(c) 2020 Azure-Agst")
print("")


function log(str)
    print(str)

end

function checkInstall()

end

function main()
    while not installed do
        print("Client/Server? [C/S]")
        res = io.read()
        if res=="C" or res=="c" then
            -- client install code
            clientInstall()
            installed = true
            return
        elseif res=="S" or res=="s" then
            -- server install code
            installed = true
            return
        else
            print("Not a valid response!\n")
        end
    end
end

function clientInstall()
    version = "client"
    print("\nInstall Client...")

    -- check if client folder exists
    --local clientExists = false
    --if fs.exists("client") then clientExists = true end

    -- iterate over files in folder
    for i,v in ipairs(clientFiles) do
        print(" - Get "..v)
        getFile(v, "client/"..v)
    end

    -- startup
    print(" - Get startup")
    getFile("startup.lua", "startup")

    -- should be done!
end

function getFile(name, loc)
    local req = http.get(baseurl..version.."/"..name)
    local file = fs.open(loc, "w")
    file.write(req.readAll())
    file.flush()
    file.close()
    req.close()
end

main()
exit()