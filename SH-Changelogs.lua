local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/EnesXVC/librarys/main/SearchAndChangeLogLibrary/Source'))()

Library:CreateChangelogDialog({
    Title = "Solara Hub - Changelogs",
    ChangelogText = [[
        Version: 4.912
        [+] Main Changes:
+ Renamed Anime Arise Evolution to Anime Evolution
+ Renamed Be NPC or DIE! to NPC or DIE!

[+] Hub Settings And More Tab:
+ Some Changes On Auto Execute

+ Added Change Interface Bind
+ Added Apply Interface Bind
+ Added Save Bind In Workspace Of Your Executor

+ Updated Feedback

+ Added Boost FPS + Description

+ Updated Solara Hub Info

+ Updated Section 'Changelogs' - New Name 'Changelogs & Supported Games'
+ Added 'View Changelogs' Button. You Can Now See Changelogs In Solara Hub!
+ Added 'View Supported Games' Button

+ Updated Credits

[+] New Games:
+ Added Baseplate & Just a baseplate. (Just Added Info Labels)

[+] The ID's For These Games Have Been Updated:
+ Updated Anime Evolution ID's

[+] Games That Were Removed:
+ Removed Anime Saga. Reason: Game Is Died (Online Is 28)
+ Removed Anime Simulator. Reason: Game Is Died (Online Is 64)
+ Removed Anime Power. Reason: Game Is Died (Online Is 71)
+ Removed Anime Training RNG. Reason: Game Is Died (Online Is 27)
+ Removed Anime Card Battle. Reason: Game Is Died (Online Is 35)
+ Removed Animal Attack. Reason: Game Is Fully Died (Online Is 0)
+ Removed Blades & Buffoonery. Reason: Game Is Died (Online Is 109)
+ Removed Better Song? Reason: Game Is Died (Online Is 20)
+ Removed Brainrot.io. Reason: Game Is Died (Online Is 132)
+ Removed City Defense Tycoon. Reason: Game Is Died (Online Is 13)
+ Removed CraftBlocks. Reason: Game Is Deleted
+ Removed Character RNG. Reason: Game Is Died (Online Is 52)
+ Removed Casual Stock. Reason: Game Is Died (Online Is 11)
+ Removed Devas Of Creation. Reason: Game Is Died (Online Is 53)
+ Removed Duck Army! Reason: Game Is Died (Online Is 95)
+ Removed Domino Playground. Reason: Game Is Died (Online Is 63)
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
