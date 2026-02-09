local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/EnesXVC/librarys/main/SearchAndChangeLogLibrary/Source'))()

Library:CreateChangelogDialog({
    Title = "Solara Hub - Changelogs",
    ChangelogText = [[
        Version: 4.915
        [+] Main Changes:
+ Added CMD Admin In 'Universal Scripts' Tab
+ Removed Sigma Spy (Deleted By Script Owner)

+ Updated FE Invisible

+ Fixed FE Ragdoll Character
+ Fixed FE Super Lag

+ Updated Feedback
+ Updated Solara Hub Info

[+] New Games:
+ Added Abyss - Added All Best Scripts For This New Game!
+ Added Survive LAVA for Brainrots!
+ Added Climb For Brainrots
+ Added Escape Waves For Lucky Blocks
+ Added Escape Guards to Steal Brainrots
+ Added Escape Quicksand for Brainrots!
+ Added Steal From Brainrots
+ Added Save Brainrots from LAVA
+ Added Catch And Tame!
+ Added Knockout! (Just Added Info Label)
+ Added a true baseplate (Just Added Info Label)

- Solara Hub Now Supports 450 Games!
    ]],
    Search = false,
    NotifyLibrary = "Luna",
    Notifications = true,
    Altbutton = {
        Name = "Join Discord",
        Clipboard = "discord.gg/DPCKQRJmdF"
    },
    Notification = {
        Title = "Changelog",
        Content = "The changelog has been closed.",
        Duration = 3,
        Image = 10723346871
    },
    AltbuttonNotification = {
        Success = {
            Title = "Copied!",
            Content = "Link copied to clipboard.",
            Duration = 5,
            Image = 10709798443
        },
        Failure = {
            Title = "Error",
            Content = "Clipboard not supported.",
            Duration = 5,
            Image = 10709799124
        }
    }
})
