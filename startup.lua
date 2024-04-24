reactor = peripheral.find("BigReactors-Reactor")
print(reactor)

function getEPercent()
    return reactor.getEnergyStored() / reactor.getEnergyCapacity() * 100
end

while true do
    repeat
        reactor.setActive(true) 
        --peripheral.call(peripheral.getName(reactor), "setActive" , true)
        sleep(1)
        print("reactor.status = ON ; reactor.storage = "..getEPercent())
    until getEPercent() > 70
    repeat
        reactor.setActive(false )
        --peripheral.call(peripheral.getName(reactor ), "setActive", false)
        sleep(1)
        print("reactor.status = OFF; reactor.storage = "..getEPercent()) 
    until getEPercent() < 10
end
