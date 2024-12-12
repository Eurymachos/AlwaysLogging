local function on_player_loaded()
    if not IsEncounterLogEnabled() then
        SetEncounterLogEnabled(true)
        CHAT_ROUTER:AddSystemMessage('Encounter logging enabled by addon.')
    end
end

EVENT_MANAGER:RegisterForEvent('Always Logging', EVENT_PLAYER_ACTIVATED, on_player_loaded)
