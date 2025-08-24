SLASH_WB1 = "/wb"

local bosses = {
    {id = 32099, name = "Sha of Anger"},
    {id = 32098, name = "Galleon"},
    {id = 32519, name = "Oondasta"},
    {id = 32518, name = "Nalak"},
    {id = 33118, name = "Ordos"},
}

SlashCmdList["WB"] = function(msg)
    local completed = {}
    GetQuestsCompleted(completed)
    
    print("|cFFFFFF00World Boss Kill Status (This Week):|r")
    
    for i, boss in ipairs(bosses) do
        local status = completed[boss.id] and "|cFF00FF00Killed|r" or "|cFFFF0000Not Killed|r"
        print(boss.name .. ": " .. status)
    end
end
