-- main enrollment script
-- have fun reading this

baseurl = "https://raw.githubusercontent.com/Azure-Agst/cc-lua/main/"
clientFiles = { "json.lua", "startup.lua" }

print("CC Enrollment Script")
print("(c) 2020 Azure-Agst")
print("")

function main()
    while true do
        print("Client/Server? [C/S]")
        res = io.read()
        if res=="C" or res=="c" then
            -- client install code
        elseif res=="S" or res=="s" then
            -- server install code
        else
            print("Not a valid response!\n")
        end
    end
end

function clientInstall()
    print("installing client code...")

    -- iterate over files in list
    for i,v in ipairs(clientFiles) do
        print(" - Installing "..v)

        --local s = string.find(v, ".lua")
        --local name = string.sub(v, 1, s)

        local req = http.get(baseurl .. "client/" .. v)
        print("    - Response Code: "..req.getResponseCode())
        local file = fs.open(v, "w")
        
        file.write(req.readAll())
        file.flush()
        file.close()
        req.close()
    end
end


