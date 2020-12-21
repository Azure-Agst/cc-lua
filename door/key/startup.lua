-- i'll assume that more than one process will be running on
-- a machine at once, so this is an example startup to launch
-- a multishell with whatever apps in the background

apps = { "key" }

-- get main shell id (should be 1, but just in case)
local s_id = multishell.getCurrent()

-- launch other apps
for i,v in ipairs(apps) do
    if fs.exists(v) then
        local new_id = multishell.launch({}, v)
    end
end

-- go back to main shell
multishell.setFocus(s_id)

-- bye!
exit()