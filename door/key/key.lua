-- key program
-- send 3502, recv 3501

local w = peripheral.wrap("back")
w.open(3501)

while true do
    local e,s,f,rf,m,d = os.pullEvent("modem_message")
    w.transmit(rf,f,"pong")
end
