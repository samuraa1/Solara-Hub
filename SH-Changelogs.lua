local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/EnesXVC/librarys/main/SearchAndChangeLogLibrary/Source'))()

Library:CreateChangelogDialog({
    Title = "Solara Hub - Changelogs",
    ChangelogText = [[
        Version: 4.914
        [+] Main Changes:
        + Changed Subtitle

+ Removed Xenith Hub In: All Star Tower Defense X, Build A Plane, Build A Zoo, Steal A Fish, Garden Tower Defense, My Singing Brainrot, Project Slayers, Prospecting!, Restaurant Tycoon 3 and TYPE://SOUL (Reason: Script Is Discontinued)

[+] Checked Scripts For This Games:
+ Checked All Scripts For Brainrot Evolution - Removed Xenith Hub, Other Scripts Is Working, Added DP Hub + Other Description For H4xScripts
+ Checked All Scripts For Taxi Boss - Renamed Auto Farm, Auto Customers etc. to Marco Hub + Removed Key System + Other UI, Added DP Hub
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
