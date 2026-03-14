--[[
███████╗ ██████╗ ██╗      █████╗ ██████╗  █████╗     ██╗  ██╗██╗   ██╗██████╗     ███████╗██╗  ██╗███████╗ ██████╗██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗███████╗    ████████╗██████╗  █████╗  ██████╗██╗  ██╗███████╗██████╗ 
██╔════╝██╔═══██╗██║     ██╔══██╗██╔══██╗██╔══██╗    ██║  ██║██║   ██║██╔══██╗    ██╔════╝╚██╗██╔╝██╔════╝██╔════╝██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝    ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
███████╗██║   ██║██║     ███████║██████╔╝███████║    ███████║██║   ██║██████╔╝    █████╗   ╚███╔╝ █████╗  ██║     ██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║███████╗       ██║   ██████╔╝███████║██║     █████╔╝ █████╗  ██████╔╝
╚════██║██║   ██║██║     ██╔══██║██╔══██╗██╔══██║    ██╔══██║██║   ██║██╔══██╗    ██╔══╝   ██╔██╗ ██╔══╝  ██║     ██║   ██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║       ██║   ██╔══██╗██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
███████║╚██████╔╝███████╗██║  ██║██║  ██║██║  ██║    ██║  ██║╚██████╔╝██████╔╝    ███████╗██╔╝ ██╗███████╗╚██████╗╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║███████║       ██║   ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝     ╚══════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                                                                                                                                                                                               
]]

-- Open Source
-- Who Will Delete Or Spam Webhook - Gay + Nigger









































































































































local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")

local function GetExecutor()
    return identifyexecutor and identifyexecutor() or "Unknown"
end

local function GetGameName()
    local success, result = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId).Name
    end)
    return success and result or "Unknown Game"
end

local function CreateWebhook(player)
    return HttpService:JSONEncode({
        username = "Solara Hub Executions",
        avatar_url = "",
        embeds = {{
            title = "🔔 New Execute!",
            description = string.format(
                "**Nickname:** %s\n**Game:** %s\n**Executor:** %s",
                player.Name, GetGameName(), GetExecutor()
            ),
            color = 3066993
        }}
    })
end

local function SendWebhook(url, data)
    local request = http_request or request or HttpPost or syn.request
    if request then
        request({
            Url = url,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = data
        })
    end
end

local player = Players.LocalPlayer
if player then
    SendWebhook("https://discord.com/api/webhooks/1473725588224344370/Np2luBA_oSFYy_pZk8UsMpObwS4sjBAM4QOvxsO5oW1dxu1c6m2fRrmxSffguwxqdWJy", CreateWebhook(player))
end
