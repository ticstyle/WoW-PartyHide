local addonName, addonTable = ...

local eventFrame = CreateFrame("Frame")

eventFrame:RegisterEvent("PLAYER_LOGIN")

eventFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        if PartyFrame then
            PartyFrame:UnregisterAllEvents()
            
            PartyFrame:Hide()
            
            RegisterStateDriver(PartyFrame, "visibility", "hide")
        end
    end
end)
