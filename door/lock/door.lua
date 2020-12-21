-- door program
-- send 3501, recv 3502

local w = peripheral.wrap("right")
w.open(3502)

function sensor()
  while true do
    local e,s,f,rf,m,d = os.pullEvent("modem_message")
    if d < 3 then
      redstone.setOutput("top", true)
    elseif d >= 3 then
      redstone.setOutput("top", false)
    end
    os.sleep(1)
  end
end

function ping()
  while true do
    w.transmit(3501,3502,"ping")
    os.sleep(1)
  end
end

parallel.waitForAny(sensor(), ping())
