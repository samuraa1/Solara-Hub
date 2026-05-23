local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/EnesXVC/librarys/main/SearchAndChangeLogLibrary/Source'))()

Library:CreateChangelogDialog({
    Title = "Solara Hub - Changelogs",
    ChangelogText = [[
        Version: 4.950
        UI Changes (So many fucking new):
+ Added AI Chat (know almost everything about solara hub, can help u, write a script etc.)
+ Added Search Bar (u now can find scripts faster + u can open with keybind , default is Ctrl + F + u can customize it in hub settings)
+ Added Language Changer (u can change language in hub settings, supported languages: English, Russian (Русский), Portuguese (Português), French (Français), Spanish (Español), German (Deutsch), Italian (Italiano), Polish (Polski), Turkish (Türkçe), Indonesian, Japanese, Korean, Chinese, Arabic, Ukrainian, Vietnamese + u can customize it in hub settings)
+ Added UI Zoom Changer (u can change ui zoom with Ctrl and + , Ctrl and - , Ctrl and 0 + u can customize it in hub settings)
+ Added Change Interface Accent In Hub Settings
+ Added Theme Gradient Changer
+ Added Hide Tabs
+ Added Open Tab on Launch
+ Added Save UI Preferences to Workspace
and many other changes for ui








Main Changes:
+ Removed 'Chat Bypass Scripts' Tab

+ Updated Supported Executors

+ Organized Scripts In 'FE Scripts' Tab
+ More Organization In 'UI Settings' Tab

New Games:
+ Added Deepwoken
+ Added KAT

Universal Scripts Tab:
+ Added Novoline

The ID's For These Games Have Been Updated:
+ Updated Spelling Bee ID's
+ Updated Pressure ID's
+ Updated 3008 ID's
+ Updated Forsaken ID's
+ Updated Piggy ID's
+ Updated MIC UP ID's

        Games That Were Removed (that has < 100 online):
+ MeepCity
+ 2 Player Steal Brainrot
+ Anime Spirits
+ Anime Shadow 2 (Game Is Deleted)
+ Anime Evolution (Game Is Deleted)
+ Devil Hunter (Game Is Deleted)
+ The Ride (Game Is Deleted)
+ Anime Kingdom Simulator
+ Building Architect
+ Cursed Arena
+ Catch and Feed a Brainrot!
+ Drill For Ores!
+ Effortless Tower
+ Find Buttons!
+ Giant Survival!
+ Grow Crystals!
+ Grow a Business
+ Gojo Vs Toji Ability Test
+ IMPOSSIBLE OBBY
+ KJ ARENA
+ Kaizen Battlegrounds
+ Lifting Legends Simulator
+ Lost Souls
+ Liar's Club
+ Meme Fruits
+ MINGLE
+ Obby But You Have Bones
+ Pizzeria Tycoon 2
+ Paper Plane Simulator
+ RORVIK
+ Red Light, Green Light
+ Rob The Place
+ Rebirth Champions X
+ RNG Odyssey
+ Save Brainrots from LAVA
+ Skinwalkers
+ Super Power League
+ Sell Water to RULE THE WORLD
+ Squid Game Season 2
+ Steal From Brainrots
+ Steal a Country
+ Sisyphus Training
+ Troll IQ Tower
+ Troll Button Tower
+ Troll Button Tower 2
+ Unnamed Shooter (use universal scripts)
+ Verse Piece
+ Wild Rails Tower Defense
**In Total 48 Games Were Removed

        Checked Scripts For This Games:
+ Checked All Scripts For Brookhaven RP - All Are Working, Removed Only Mango Hub (it just printing shit in console) + Removed Crack Key Sys From Salvatore Hub (Patched)
+ Checked All Scripts For Catalog Avatar Creator - Updated Zynlope Hub loadstring, Added Ronix Hub and Lunariel Hub
+ Checked All Scripts For Dress To Impress - Removed Only Aussie WIRE, Other Scripts Working, Added Starlight Hub and MacroWare
+ Checked All Scripts For Sol's RNG - All Scripts Are Working, Added Project Lexia, Eggs AutoFarm And More and XT-HUB + Added Descriptions
+ Checked All Scripts For Dandy's World - Removed FFJ Hub and Spooky Hub, Other Scripts Is Working, Added Deluxed Hub, Ronix Hub and Hex Hub + Added Descriptions

Misc:
+ Changed Game Name +1 Slayer Blade to Slayer-Blade
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
