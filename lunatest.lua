--[[


██╗     ██╗   ██╗███╗   ██╗ █████╗     ██╗███╗   ██╗████████╗███████╗██████╗ ███████╗ █████╗  ██████╗███████╗    ███████╗██╗   ██╗██╗████████╗███████╗
██║     ██║   ██║████╗  ██║██╔══██╗    ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗██╔════╝██╔══██╗██╔════╝██╔════╝    ██╔════╝██║   ██║██║╚══██╔══╝██╔════╝
██║     ██║   ██║██╔██╗ ██║███████║    ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝█████╗  ███████║██║     █████╗      ███████╗██║   ██║██║   ██║   █████╗  
██║     ██║   ██║██║╚██╗██║██╔══██║    ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗██╔══╝  ██╔══██║██║     ██╔══╝      ╚════██║██║   ██║██║   ██║   ██╔══╝  
███████╗╚██████╔╝██║ ╚████║██║  ██║    ██║██║ ╚████║   ██║   ███████╗██║  ██║██║     ██║  ██║╚██████╗███████╗    ███████║╚██████╔╝██║   ██║   ███████╗
╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝    ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝    ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   ╚══════╝
by    d8b   db d88888b d8888b. db    db db       .d8b.       .d8888.  .d88b.  d88888b d888888b db   d8b   db  .d88b.  d8888b. db   dD .d8888. 
      888o  88 88'     88  `8D 88    88 88      d8' `8b      88'  YP .8P  Y8. 88'     `~~88~~' 88   I8I   88 .8P  Y8. 88  `8D 88 ,8P' 88'  YP 
      88V8o 88 88ooooo 88oooY' 88    88 88      88ooo88      `8bo.   88    88 88ooo      88    88   I8I   88 88    88 88oobY' 88,8P   `8bo.   
      88 V8o88 88~~~~~ 88~~~b. 88    88 88      88~~~88        `Y8b. 88    88 88~~~      88    Y8   I8I   88 88    88 88`8b   88`8b     `Y8b. 
      88  V888 88.     88   8D 88b  d88 88booo. 88   88      db   8D `8b  d8' 88         88    `8b d8'8b d8' `8b  d8' 88 `88. 88 `88. db   8D 
      VP   V8P Y88888P Y8888P' ~Y8888P' Y88888P YP   YP      `8888Y'  `Y88P'  YP         YP     `8b8' `8d8'   `Y88P'  88   YD YP   YD `8888Y' 


Main Credits

Hunter (Nebula Softworks) | Designing And Programming | Main Developer
JustHey (Nebula Softworks) | Configurations, Bug Fixing And More! | Co Developer
Throit | Color Picker
Wally | Dragging And Certain Functions
Samuraa1 | Fixed Some Bugs + Some Optimization
Sirius | PCall Parsing, Notifications, Slider And Home Tab
Luna Executor | Original UI

Extra Credits / Provided Certain Elements

Pookie Pepelss | Bug Tester
Inori | Configuration Concept
Latte Softworks and qweery | Lucide Icons And Material Icons
kirill9655 | Loading Circle
Deity/dp4pv/x64x70 | Certain Scripting and Testing ig

Contributors
iPigTw | Typo Fixer, Fixed Key System!!
pushByAccident | Fixing Executor Lists
ImFloriz | Method Fixing

Luna Interface Suite
by Nebula Softworks

]]

local Release = "Prerelease Beta 6.1"

local Luna = { 
	Folder = "Luna", 
	Options = {}, 
	ThemeGradient = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(117, 164, 206)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(123, 201, 201)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(224, 138, 175))} 
}

local function getService(serviceName)
	local svc = game:GetService(serviceName)
	if cloneref then
		return cloneref(svc)
	end
	return svc
end

local UserInputService = getService("UserInputService")
local TweenService = getService("TweenService")
local HttpService = getService("HttpService")
local RunService = getService("RunService")
local Localization = getService("LocalizationService")
local Players = getService("Players")
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local CoreGui = getService("CoreGui")
local GuiService = getService("GuiService")
local MarketplaceService = getService("MarketplaceService")
local Stats = getService("Stats")

local isStudio
local website = "github.com/Nebula-Softworks"

if RunService:IsStudio() then
	isStudio = true
end

-- Credits To Latte Softworks And qweery for Lucide And Material Icons Respectively
local IconModule = {
	Lucide = nil,
	Material = {
		["perm_media"] = "http://www.roblox.com/asset/?id=6031215982";
		["sticky_note_2"] = "http://www.roblox.com/asset/?id=6031265972";
		["gavel"] = "http://www.roblox.com/asset/?id=6023565902";
		["table_view"] = "http://www.roblox.com/asset/?id=6031233835";
		["home"] = "http://www.roblox.com/asset/?id=6026568195";
		["list"] = "http://www.roblox.com/asset/?id=6026568229";
		["alarm_add"] = "http://www.roblox.com/asset/?id=6023426898";
		["speaker_notes"] = "http://www.roblox.com/asset/?id=6031266001";
		["check_circle_outline"] = "http://www.roblox.com/asset/?id=6023426909";
		["extension"] = "http://www.roblox.com/asset/?id=6023565892";
		["pending"] = "http://www.roblox.com/asset/?id=6031084745";
		["pageview"] = "http://www.roblox.com/asset/?id=6031216007";
		["group_work"] = "http://www.roblox.com/asset/?id=6023565910";
		["zoom_in"] = "http://www.roblox.com/asset/?id=6031075573";
		["aspect_ratio"] = "http://www.roblox.com/asset/?id=6022668895";
		["code"] = "http://www.roblox.com/asset/?id=6022668955";
		["3d_rotation"] = "http://www.roblox.com/asset/?id=6022668893";
		["translate"] = "http://www.roblox.com/asset/?id=6031225812";
		["star_rate"] = "http://www.roblox.com/asset/?id=6031265978";
		["system_update_alt"] = "http://www.roblox.com/asset/?id=6031251515";
		["open_with"] = "http://www.roblox.com/asset/?id=6026568265";
		["build_circle"] = "http://www.roblox.com/asset/?id=6023426952";
		["toc"] = "http://www.roblox.com/asset/?id=6031229341";
		["settings_phone"] = "http://www.roblox.com/asset/?id=6031289445";
		["open_in_full"] = "http://www.roblox.com/asset/?id=6026568245";
		["history"] = "http://www.roblox.com/asset/?id=6026568197";
		["accessibility_new"] = "http://www.roblox.com/asset/?id=6022668945";
		["hourglass_disabled"] = "http://www.roblox.com/asset/?id=6026568193";
		["line_style"] = "http://www.roblox.com/asset/?id=6026568276";
		["account_circle"] = "http://www.roblox.com/asset/?id=6022668898";
		["settings_cell"] = "http://www.roblox.com/asset/?id=6031280890";
		["search_off"] = "http://www.roblox.com/asset/?id=6031260783";
		["shop"] = "http://www.roblox.com/asset/?id=6031265983";
		["anchor"] = "http://www.roblox.com/asset/?id=6023426906";
		["language"] = "http://www.roblox.com/asset/?id=6026568213";
		["settings_brightness"] = "http://www.roblox.com/asset/?id=6031280902";
		["restore_page"] = "http://www.roblox.com/asset/?id=6031154877";
		["chrome_reader_mode"] = "http://www.roblox.com/asset/?id=6023426912";
		["sync_alt"] = "http://www.roblox.com/asset/?id=6031233840";
		["book"] = "http://www.roblox.com/asset/?id=6022860343";
		["smart_button"] = "http://www.roblox.com/asset/?id=6031265962";
		["request_page"] = "http://www.roblox.com/asset/?id=6031154873";
		["lock_clock"] = "http://www.roblox.com/asset/?id=6026568260";
		["android"] = "http://www.roblox.com/asset/?id=6022668966";
		["outgoing_mail"] = "http://www.roblox.com/asset/?id=6026568242";
		["dynamic_form"] = "http://www.roblox.com/asset/?id=6023426970";
		["track_changes"] = "http://www.roblox.com/asset/?id=6031225814";
		["source"] = "http://www.roblox.com/asset/?id=6031289451";
		["thumb_down"] = "http://www.roblox.com/asset/?id=6031229336";
		["integration_instructions"] = "http://www.roblox.com/asset/?id=6026568214";
		["opacity"] = "http://www.roblox.com/asset/?id=6026568295";
		["perm_identity"] = "http://www.roblox.com/asset/?id=6031215978";
		["view_module"] = "http://www.roblox.com/asset/?id=6031079152";
		["perm_data_setting"] = "http://www.roblox.com/asset/?id=6031215991";
		["assignment_turned_in"] = "http://www.roblox.com/asset/?id=6023426904";
		["change_history"] = "http://www.roblox.com/asset/?id=6023426914";
		["thumb_down_off_alt"] = "http://www.roblox.com/asset/?id=6031229354";
		["text_rotation_angledown"] = "http://www.roblox.com/asset/?id=6031251513";
		["bookmark"] = "http://www.roblox.com/asset/?id=6022852108";
		["view_stream"] = "http://www.roblox.com/asset/?id=6031079164";
		["remove_done"] = "http://www.roblox.com/asset/?id=6031086169";
		["markunread_mailbox"] = "http://www.roblox.com/asset/?id=6031082531";
		["store"] = "http://www.roblox.com/asset/?id=6031265968";
		["text_rotation_angleup"] = "http://www.roblox.com/asset/?id=6031229337";
		["eco"] = "http://www.roblox.com/asset/?id=6023426988";
		["find_in_page"] = "http://www.roblox.com/asset/?id=6023426986";
		["api"] = "http://www.roblox.com/asset/?id=6022668911";
		["launch"] = "http://www.roblox.com/asset/?id=6026568211";
		["text_rotation_down"] = "http://www.roblox.com/asset/?id=6031229334";
		["flip_to_back"] = "http://www.roblox.com/asset/?id=6023565896";
		["contact_page"] = "http://www.roblox.com/asset/?id=6022668881";
		["preview"] = "http://www.roblox.com/asset/?id=6031260793";
		["restore"] = "http://www.roblox.com/asset/?id=6031260800";
		["favorite_border"] = "http://www.roblox.com/asset/?id=6023565882";
		["assignment_late"] = "http://www.roblox.com/asset/?id=6022668880";
		["youtube_searched_for"] = "http://www.roblox.com/asset/?id=6031075934";
		["hourglass_full"] = "http://www.roblox.com/asset/?id=6026568190";
		["timeline"] = "http://www.roblox.com/asset/?id=6031229350";
		["turned_in"] = "http://www.roblox.com/asset/?id=6031225808";
		["info"] = "http://www.roblox.com/asset/?id=6026568227";
		["restore_from_trash"] = "http://www.roblox.com/asset/?id=6031154869";
		["arrow_circle_down"] = "http://www.roblox.com/asset/?id=6022668877";
		["flaky"] = "http://www.roblox.com/asset/?id=6031082523";
		["alarm_on"] = "http://www.roblox.com/asset/?id=6023426920";
		["swap_vertical_circle"] = "http://www.roblox.com/asset/?id=6031233839";
		["open_in_new"] = "http://www.roblox.com/asset/?id=6026568256";
		["watch_later"] = "http://www.roblox.com/asset/?id=6031075924";
		["alarm_off"] = "http://www.roblox.com/asset/?id=6023426901";
		["maximize"] = "http://www.roblox.com/asset/?id=6026568267";
		["lock_outline"] = "http://www.roblox.com/asset/?id=6031082533";
		["outbond"] = "http://www.roblox.com/asset/?id=6026568244";
		["view_carousel"] = "http://www.roblox.com/asset/?id=6031251507";
		["published_with_changes"] = "http://www.roblox.com/asset/?id=6031243328";
		["verified_user"] = "http://www.roblox.com/asset/?id=6031225819";
		["drag_indicator"] = "http://www.roblox.com/asset/?id=6023426962";
		["lightbulb_outline"] = "http://www.roblox.com/asset/?id=6026568254";
		["segment"] = "http://www.roblox.com/asset/?id=6031260773";
		["assignment"] = "http://www.roblox.com/asset/?id=6022668882";
		["work_outline"] = "http://www.roblox.com/asset/?id=6031075930";
		["line_weight"] = "http://www.roblox.com/asset/?id=6026568226";
		["dangerous"] = "http://www.roblox.com/asset/?id=6022668916";
		["assessment"] = "http://www.roblox.com/asset/?id=6022668897";
		["view_day"] = "http://www.roblox.com/asset/?id=6031079153";
		["help_center"] = "http://www.roblox.com/asset/?id=6026568192";
		["logout"] = "http://www.roblox.com/asset/?id=6031082522";
		["event"] = "http://www.roblox.com/asset/?id=6023426959";
		["get_app"] = "http://www.roblox.com/asset/?id=6023565889";
		["tab"] = "http://www.roblox.com/asset/?id=6031233851";
		["label"] = "http://www.roblox.com/asset/?id=6031082525";
		["g_translate"] = "http://www.roblox.com/asset/?id=6031082526";
		["view_week"] = "http://www.roblox.com/asset/?id=6031079154";
		["view_in_ar"] = "http://www.roblox.com/asset/?id=6031079158";
		["card_travel"] = "http://www.roblox.com/asset/?id=6023426925";
		["lock_open"] = "http://www.roblox.com/asset/?id=6026568220";
		["voice_over_off"] = "http://www.roblox.com/asset/?id=6031075927";
		["app_blocking"] = "http://www.roblox.com/asset/?id=6022668952";
		["settings_ethernet"] = "http://www.roblox.com/asset/?id=6031280883";
		["supervised_user_circle"] = "http://www.roblox.com/asset/?id=6031289449";
		["done_all"] = "http://www.roblox.com/asset/?id=6023426929";
		["lightbulb"] = "http://www.roblox.com/asset/?id=6026568247";
		["find_replace"] = "http://www.roblox.com/asset/?id=6023426979";
		["bookmarks"] = "http://www.roblox.com/asset/?id=6023426924";
		["today"] = "http://www.roblox.com/asset/?id=6031229352";
		["class"] = "http://www.roblox.com/asset/?id=6022668949";
		["supervisor_account"] = "http://www.roblox.com/asset/?id=6031251516";
		["support"] = "http://www.roblox.com/asset/?id=6031251532";
		["done_outline"] = "http://www.roblox.com/asset/?id=6023426936";
		["reorder"] = "http://www.roblox.com/asset/?id=6031154868";
		["fact_check"] = "http://www.roblox.com/asset/?id=6023426951";
		["thumb_up"] = "http://www.roblox.com/asset/?id=6031229347";
		["assignment_returned"] = "http://www.roblox.com/asset/?id=6023426899";
		["card_giftcard"] = "http://www.roblox.com/asset/?id=6023426978";
		["trending_down"] = "http://www.roblox.com/asset/?id=6031225811";
		["settings_backup_restore"] = "http://www.roblox.com/asset/?id=6031280886";
		["settings_voice"] = "http://www.roblox.com/asset/?id=6031265966";
		["dns"] = "http://www.roblox.com/asset/?id=6023426958";
		["perm_scan_wifi"] = "http://www.roblox.com/asset/?id=6031215985";
		["plagiarism"] = "http://www.roblox.com/asset/?id=6031243320";
		["commute"] = "http://www.roblox.com/asset/?id=6022668901";
		["gif"] = "http://www.roblox.com/asset/?id=6031082540";
		["work"] = "http://www.roblox.com/asset/?id=6031075939";
		["picture_in_picture_alt"] = "http://www.roblox.com/asset/?id=6031215979";
		["query_builder"] = "http://www.roblox.com/asset/?id=6031086183";
		["label_off"] = "http://www.roblox.com/asset/?id=6026568209";
		["all_out"] = "http://www.roblox.com/asset/?id=6022668876";
		["article"] = "http://www.roblox.com/asset/?id=6022668907";
		["shopping_basket"] = "http://www.roblox.com/asset/?id=6031265997";
		["mark_as_unread"] = "http://www.roblox.com/asset/?id=6026568223";
		["work_off"] = "http://www.roblox.com/asset/?id=6031075937";
		["delete_outline"] = "http://www.roblox.com/asset/?id=6022668962";
		["account_box"] = "http://www.roblox.com/asset/?id=6023426915";
		["home_filled"] = "rbxassetid://9080449299";
		["lock"] = "http://www.roblox.com/asset/?id=6026568224";
		["perm_device_information"] = "http://www.roblox.com/asset/?id=6031215996";
		["add_task"] = "http://www.roblox.com/asset/?id=6022668912";
		["text_rotate_up"] = "http://www.roblox.com/asset/?id=6031251526";
		["swipe"] = "http://www.roblox.com/asset/?id=6031233863";
		["eject"] = "http://www.roblox.com/asset/?id=6023426930";
		["mediation"] = "http://www.roblox.com/asset/?id=6026568249";
		["label_important_outline"] = "http://www.roblox.com/asset/?id=6026568199";
		["settings_remote"] = "http://www.roblox.com/asset/?id=6031289442";
		["history_toggle_off"] = "http://www.roblox.com/asset/?id=6026568196";
		["invert_colors"] = "http://www.roblox.com/asset/?id=6026568253";
		["visibility_off"] = "http://www.roblox.com/asset/?id=6031075929";
		["addchart"] = "http://www.roblox.com/asset/?id=6023426905";
		["cancel_schedule_send"] = "http://www.roblox.com/asset/?id=6022668963";
		["loyalty"] = "http://www.roblox.com/asset/?id=6026568237";
		["speaker_notes_off"] = "http://www.roblox.com/asset/?id=6031265965";
		["online_prediction"] = "http://www.roblox.com/asset/?id=6026568239";
		["remove_shopping_cart"] = "http://www.roblox.com/asset/?id=6031260778";
		["text_rotate_vertical"] = "http://www.roblox.com/asset/?id=6031251518";
		["visibility"] = "http://www.roblox.com/asset/?id=6031075931";
		["add_to_drive"] = "http://www.roblox.com/asset/?id=6022860335";
		["accessible"] = "http://www.roblox.com/asset/?id=6022668902";
		["bookmark_border"] = "http://www.roblox.com/asset/?id=6022860339";
		["tour"] = "http://www.roblox.com/asset/?id=6031229362";
		["compare_arrows"] = "http://www.roblox.com/asset/?id=6022668951";
		["view_sidebar"] = "http://www.roblox.com/asset/?id=6031079160";
		["face"] = "http://www.roblox.com/asset/?id=6023426944";
		["wysiwyg"] = "http://www.roblox.com/asset/?id=6031075938";
		["camera_enhance"] = "http://www.roblox.com/asset/?id=6023426935";
		["perm_camera_mic"] = "http://www.roblox.com/asset/?id=6031215983";
		["model_training"] = "http://www.roblox.com/asset/?id=6026568222";
		["arrow_circle_up"] = "http://www.roblox.com/asset/?id=6022668934";
		["euro_symbol"] = "http://www.roblox.com/asset/?id=6023426954";
		["pending_actions"] = "http://www.roblox.com/asset/?id=6031260777";
		["not_accessible"] = "http://www.roblox.com/asset/?id=6026568269";
		["explore_off"] = "http://www.roblox.com/asset/?id=6023426953";
		["build"] = "http://www.roblox.com/asset/?id=6023426938";
		["backup"] = "http://www.roblox.com/asset/?id=6023426911";
		["settings_input_antenna"] = "http://www.roblox.com/asset/?id=6031280891";
		["disabled_by_default"] = "http://www.roblox.com/asset/?id=6023426939";
		["upgrade"] = "http://www.roblox.com/asset/?id=6031225815";
		["contactless"] = "http://www.roblox.com/asset/?id=6022668886";
		["trending_flat"] = "http://www.roblox.com/asset/?id=6031225818";
		["schedule"] = "http://www.roblox.com/asset/?id=6031260808";
		["offline_pin"] = "http://www.roblox.com/asset/?id=6031084770";
		["date_range"] = "http://www.roblox.com/asset/?id=6022668894";
		["flight_land"] = "http://www.roblox.com/asset/?id=6023565897";
		["view_headline"] = "http://www.roblox.com/asset/?id=6031079151";
		["cached"] = "http://www.roblox.com/asset/?id=6023426921";
		["unpublished"] = "http://www.roblox.com/asset/?id=6031225817";
		["outlet"] = "http://www.roblox.com/asset/?id=6031084748";
		["favorite"] = "http://www.roblox.com/asset/?id=6023426974";
		["vertical_split"] = "http://www.roblox.com/asset/?id=6031225820";
		["report_problem"] = "http://www.roblox.com/asset/?id=6031086176";
		["fingerprint"] = "http://www.roblox.com/asset/?id=6023565895";
		["important_devices"] = "http://www.roblox.com/asset/?id=6026568202";
		["outbox"] = "http://www.roblox.com/asset/?id=6026568263";
		["all_inbox"] = "http://www.roblox.com/asset/?id=6022668909";
		["label_important"] = "http://www.roblox.com/asset/?id=6026568215";
		["print"] = "http://www.roblox.com/asset/?id=6031243324";
		["settings_bluetooth"] = "http://www.roblox.com/asset/?id=6031280905";
		["power_settings_new"] = "http://www.roblox.com/asset/?id=6031260781";
		["zoom_out"] = "http://www.roblox.com/asset/?id=6031075577";
		["stars"] = "http://www.roblox.com/asset/?id=6031265971";
		["offline_bolt"] = "http://www.roblox.com/asset/?id=6031084742";
		["feedback"] = "http://www.roblox.com/asset/?id=6023426957";
		["accessibility"] = "http://www.roblox.com/asset/?id=6022668887";
		["announcement"] = "http://www.roblox.com/asset/?id=6022668946";
		["settings_input_hdmi"] = "http://www.roblox.com/asset/?id=6031280970";
		["leaderboard"] = "http://www.roblox.com/asset/?id=6026568216";
		["view_quilt"] = "http://www.roblox.com/asset/?id=6031079155";
		["note_add"] = "http://www.roblox.com/asset/?id=6031084749";
		["theaters"] = "http://www.roblox.com/asset/?id=6031229335";
		["alarm"] = "http://www.roblox.com/asset/?id=6023426910";
		["settings_input_composite"] = "http://www.roblox.com/asset/?id=6031280896";
		["grade"] = "http://www.roblox.com/asset/?id=6026568189";
		["tab_unselected"] = "http://www.roblox.com/asset/?id=6031251505";
		["swap_vert"] = "http://www.roblox.com/asset/?id=6031233847";
		["assignment_return"] = "http://www.roblox.com/asset/?id=6023426931";
		["highlight_alt"] = "http://www.roblox.com/asset/?id=6023565913";
		["shopping_bag"] = "http://www.roblox.com/asset/?id=6031265970";
		["contact_support"] = "http://www.roblox.com/asset/?id=6022668879";
		["flip_to_front"] = "http://www.roblox.com/asset/?id=6023565894";
		["touch_app"] = "http://www.roblox.com/asset/?id=6031229361";
		["room"] = "http://www.roblox.com/asset/?id=6031154875";
		["send_and_archive"] = "http://www.roblox.com/asset/?id=6031280889";
		["view_array"] = "http://www.roblox.com/asset/?id=6031225842";
		["settings_power"] = "http://www.roblox.com/asset/?id=6031289446";
		["admin_panel_settings"] = "http://www.roblox.com/asset/?id=6022668961";
		["open_in_browser"] = "http://www.roblox.com/asset/?id=6026568266";
		["card_membership"] = "http://www.roblox.com/asset/?id=6023426942";
		["rule"] = "http://www.roblox.com/asset/?id=6031154859";
		["schedule_send"] = "http://www.roblox.com/asset/?id=6031154866";
		["calendar_today"] = "http://www.roblox.com/asset/?id=6022668917";
		["info_outline"] = "http://www.roblox.com/asset/?id=6026568210";
		["description"] = "http://www.roblox.com/asset/?id=6022668888";
		["dashboard_customize"] = "http://www.roblox.com/asset/?id=6022668899";
		["rowing"] = "http://www.roblox.com/asset/?id=6031154857";
		["swap_horizontal_circle"] = "http://www.roblox.com/asset/?id=6031233833";
		["account_balance_wallet"] = "http://www.roblox.com/asset/?id=6022668892";
		["view_agenda"] = "http://www.roblox.com/asset/?id=6031225831";
		["shop_two"] = "http://www.roblox.com/asset/?id=6031289461";
		["done"] = "http://www.roblox.com/asset/?id=6023426926";
		["circle_notifications"] = "http://www.roblox.com/asset/?id=6023426923";
		["compress"] = "http://www.roblox.com/asset/?id=6022668878";
		["calendar_view_day"] = "http://www.roblox.com/asset/?id=6023426946";
		["thumbs_up_down"] = "http://www.roblox.com/asset/?id=6031229373";
		["account_balance"] = "http://www.roblox.com/asset/?id=6022668900";
		["play_for_work"] = "http://www.roblox.com/asset/?id=6031260776";
		["pets"] = "http://www.roblox.com/asset/?id=6031260782";
		["view_column"] = "http://www.roblox.com/asset/?id=6031079172";
		["search"] = "http://www.roblox.com/asset/?id=6031154871";
		["autorenew"] = "http://www.roblox.com/asset/?id=6023565901";
		["copyright"] = "http://www.roblox.com/asset/?id=6023565898";
		["privacy_tip"] = "http://www.roblox.com/asset/?id=6031260784";
		["arrow_right_alt"] = "http://www.roblox.com/asset/?id=6022668890";
		["delete"] = "http://www.roblox.com/asset/?id=6022668885";
		["nightlight_round"] = "http://www.roblox.com/asset/?id=6031084743";
		["batch_prediction"] = "http://www.roblox.com/asset/?id=6022860334";
		["shopping_cart"] = "http://www.roblox.com/asset/?id=6031265976";
		["login"] = "http://www.roblox.com/asset/?id=6031082527";
		["settings_input_svideo"] = "http://www.roblox.com/asset/?id=6031289444";
		["payment"] = "http://www.roblox.com/asset/?id=6031084751";
		["update"] = "http://www.roblox.com/asset/?id=6031225810";
		["text_rotation_none"] = "http://www.roblox.com/asset/?id=6031229344";
		["perm_contact_calendar"] = "http://www.roblox.com/asset/?id=6031215990";
		["explore"] = "http://www.roblox.com/asset/?id=6023426941";
		["delete_forever"] = "http://www.roblox.com/asset/?id=6022668939";
		["rounded_corner"] = "http://www.roblox.com/asset/?id=6031154861";
		["book_online"] = "http://www.roblox.com/asset/?id=6022860332";
		["quickreply"] = "http://www.roblox.com/asset/?id=6031243319";
		["bug_report"] = "http://www.roblox.com/asset/?id=6022852107";
		["subtitles_off"] = "http://www.roblox.com/asset/?id=6031289466";
		["close_fullscreen"] = "http://www.roblox.com/asset/?id=6023426928";
		["horizontal_split"] = "http://www.roblox.com/asset/?id=6026568194";
		["minimize"] = "http://www.roblox.com/asset/?id=6026568240";
		["filter_list_alt"] = "http://www.roblox.com/asset/?id=6023426955";
		["add_shopping_cart"] = "http://www.roblox.com/asset/?id=6022668875";
		["next_plan"] = "http://www.roblox.com/asset/?id=6026568231";
		["view_list"] = "http://www.roblox.com/asset/?id=6031079156";
		["receipt"] = "http://www.roblox.com/asset/?id=6031086173";
		["polymer"] = "http://www.roblox.com/asset/?id=6031260785";
		["spellcheck"] = "http://www.roblox.com/asset/?id=6031289450";
		["wifi_protected_setup"] = "http://www.roblox.com/asset/?id=6031075926";
		["label_outline"] = "http://www.roblox.com/asset/?id=6026568207";
		["highlight_off"] = "http://www.roblox.com/asset/?id=6023565916";
		["turned_in_not"] = "http://www.roblox.com/asset/?id=6031225806";
		["edit_off"] = "http://www.roblox.com/asset/?id=6023426983";
		["question_answer"] = "http://www.roblox.com/asset/?id=6031086172";
		["settings_overscan"] = "http://www.roblox.com/asset/?id=6031289459";
		["trending_up"] = "http://www.roblox.com/asset/?id=6031225816";
		["verified"] = "http://www.roblox.com/asset/?id=6031225809";
		["flight_takeoff"] = "http://www.roblox.com/asset/?id=6023565891";
		["grading"] = "http://www.roblox.com/asset/?id=6026568191";
		["dashboard"] = "http://www.roblox.com/asset/?id=6022668883";
		["expand"] = "http://www.roblox.com/asset/?id=6022668891";
		["backup_table"] = "http://www.roblox.com/asset/?id=6022860338";
		["analytics"] = "http://www.roblox.com/asset/?id=6022668884";
		["picture_in_picture"] = "http://www.roblox.com/asset/?id=6031215994";
		["settings"] = "http://www.roblox.com/asset/?id=6031280882";
		["accessible_forward"] = "http://www.roblox.com/asset/?id=6022668906";
		["pan_tool"] = "http://www.roblox.com/asset/?id=6031084771";
		["https"] = "http://www.roblox.com/asset/?id=6026568200";
		["filter_alt"] = "http://www.roblox.com/asset/?id=6023426984";
		["thumb_up_off_alt"] = "http://www.roblox.com/asset/?id=6031229342";
		["record_voice_over"] = "http://www.roblox.com/asset/?id=6031243318";
		["help_outline"] = "http://www.roblox.com/asset/?id=6026568201";
		["check_circle"] = "http://www.roblox.com/asset/?id=6023426945";
		["comment_bank"] = "http://www.roblox.com/asset/?id=6023426937";
		["perm_phone_msg"] = "http://www.roblox.com/asset/?id=6031215986";
		["settings_applications"] = "http://www.roblox.com/asset/?id=6031280894";
		["exit_to_app"] = "http://www.roblox.com/asset/?id=6023426922";
		["saved_search"] = "http://www.roblox.com/asset/?id=6031154867";
		["toll"] = "http://www.roblox.com/asset/?id=6031229343";
		["not_started"] = "http://www.roblox.com/asset/?id=6026568232";
		["subject"] = "http://www.roblox.com/asset/?id=6031289452";
		["redeem"] = "http://www.roblox.com/asset/?id=6031086170";
		["input"] = "http://www.roblox.com/asset/?id=6026568225";
		["settings_input_component"] = "http://www.roblox.com/asset/?id=6031280884";
		["assignment_ind"] = "http://www.roblox.com/asset/?id=6022668935";
		["swap_horiz"] = "http://www.roblox.com/asset/?id=6031233841";
		["fullscreen"] = "http://www.roblox.com/asset/?id=6031094681";
		["cancel"] = "http://www.roblox.com/asset/?id=6031094677";
		["subdirectory_arrow_left"] = "http://www.roblox.com/asset/?id=6031104654";
		["close"] = "http://www.roblox.com/asset/?id=6031094678";
		["arrow_back_ios"] = "http://www.roblox.com/asset/?id=6031091003";
		["east"] = "http://www.roblox.com/asset/?id=6031094675";
		["unfold_more"] = "http://www.roblox.com/asset/?id=6031104644";
		["south"] = "http://www.roblox.com/asset/?id=6031104646";
		["arrow_drop_up"] = "http://www.roblox.com/asset/?id=6031090990";
		["arrow_back"] = "http://www.roblox.com/asset/?id=6031091000";
		["arrow_downward"] = "http://www.roblox.com/asset/?id=6031090991";
		["west"] = "http://www.roblox.com/asset/?id=6031104677";
		["legend_toggle"] = "http://www.roblox.com/asset/?id=6031097233";
		["fullscreen_exit"] = "http://www.roblox.com/asset/?id=6031094691";
		["last_page"] = "http://www.roblox.com/asset/?id=6031094686";
		["switch_right"] = "http://www.roblox.com/asset/?id=6031104649";
		["check"] = "http://www.roblox.com/asset/?id=6031094667";
		["home_work"] = "http://www.roblox.com/asset/?id=6031094683";
		["north_east"] = "http://www.roblox.com/asset/?id=6031097228";
		["double_arrow"] = "http://www.roblox.com/asset/?id=6031094674";
		["more_vert"] = "http://www.roblox.com/asset/?id=6031104648";
		["chevron_left"] = "http://www.roblox.com/asset/?id=6031094670";
		["more_horiz"] = "http://www.roblox.com/asset/?id=6031104650";
		["unfold_less"] = "http://www.roblox.com/asset/?id=6031104681";
		["first_page"] = "http://www.roblox.com/asset/?id=6031094682";
		["payments"] = "http://www.roblox.com/asset/?id=6031097227";
		["arrow_right"] = "http://www.roblox.com/asset/?id=6031090994";
		["offline_share"] = "http://www.roblox.com/asset/?id=6031097267";
		["south_west"] = "http://www.roblox.com/asset/?id=6031104652";
		["expand_less"] = "http://www.roblox.com/asset/?id=6031094679";
		["south_east"] = "http://www.roblox.com/asset/?id=6031104642";
		["assistant_navigation"] = "http://www.roblox.com/asset/?id=6031091006";
		["apps"] = "http://www.roblox.com/asset/?id=6031090999";
		["arrow_upward"] = "http://www.roblox.com/asset/?id=6031090997";
		["app_settings_alt"] = "http://www.roblox.com/asset/?id=6031090998";
		["subdirectory_arrow_right"] = "http://www.roblox.com/asset/?id=6031104647";
		["north_west"] = "http://www.roblox.com/asset/?id=6031104630";
		["switch_left"] = "http://www.roblox.com/asset/?id=6031104651";
		["chevron_right"] = "http://www.roblox.com/asset/?id=6031094680";
		["arrow_forward"] = "http://www.roblox.com/asset/?id=6031090995";
		["arrow_forward_ios"] = "http://www.roblox.com/asset/?id=6031091008";
		["arrow_drop_down"] = "http://www.roblox.com/asset/?id=6031091004";
		["refresh"] = "http://www.roblox.com/asset/?id=6031097226";
		["pivot_table_chart"] = "http://www.roblox.com/asset/?id=6031097234";
		["expand_more"] = "http://www.roblox.com/asset/?id=6031094687";
		["campaign"] = "http://www.roblox.com/asset/?id=6031094666";
		["arrow_left"] = "http://www.roblox.com/asset/?id=6031091002";
		["arrow_drop_down_circle"] = "http://www.roblox.com/asset/?id=6031091001";
		["menu_open"] = "http://www.roblox.com/asset/?id=6031097229";
		["waterfall_chart"] = "http://www.roblox.com/asset/?id=6031104632";
		["assistant_direction"] = "http://www.roblox.com/asset/?id=6031091005";
		["menu"] = "http://www.roblox.com/asset/?id=6031097225";
		["personal_video"] = "http://www.roblox.com/asset/?id=6034457070";
		["power_off"] = "http://www.roblox.com/asset/?id=6034457087";
		["wifi_off"] = "http://www.roblox.com/asset/?id=6034461625";
		["adb"] = "http://www.roblox.com/asset/?id=6034418515";
		["airline_seat_recline_normal"] = "http://www.roblox.com/asset/?id=6034418512";
		["sync_problem"] = "http://www.roblox.com/asset/?id=6034452653";
		["network_check"] = "http://www.roblox.com/asset/?id=6034461631";
		["event_busy"] = "http://www.roblox.com/asset/?id=6034439634";
		["airline_seat_flat"] = "http://www.roblox.com/asset/?id=6034418511";
		["disc_full"] = "http://www.roblox.com/asset/?id=6034418518";
		["sd_card"] = "http://www.roblox.com/asset/?id=6034457089";
		["time_to_leave"] = "http://www.roblox.com/asset/?id=6034452660";
		["phone_bluetooth_speaker"] = "http://www.roblox.com/asset/?id=6034457057";
		["phone_paused"] = "http://www.roblox.com/asset/?id=6034457066";
		["phone_locked"] = "http://www.roblox.com/asset/?id=6034457058";
		["more"] = "http://www.roblox.com/asset/?id=6034461627";
		["add_call"] = "http://www.roblox.com/asset/?id=6034418524";
		["account_tree"] = "http://www.roblox.com/asset/?id=6034418507";
		["do_not_disturb_on"] = "http://www.roblox.com/asset/?id=6034439649";
		["event_note"] = "http://www.roblox.com/asset/?id=6034439637";
		["sync_disabled"] = "http://www.roblox.com/asset/?id=6034452649";
		["mms"] = "http://www.roblox.com/asset/?id=6034461621";
		["airline_seat_flat_angled"] = "http://www.roblox.com/asset/?id=6034418513";
		["bluetooth_audio"] = "http://www.roblox.com/asset/?id=6034418522";
		["vibration"] = "http://www.roblox.com/asset/?id=6034452651";
		["system_update"] = "http://www.roblox.com/asset/?id=6034452663";
		["enhanced_encryption"] = "http://www.roblox.com/asset/?id=6034439652";
		["wc"] = "http://www.roblox.com/asset/?id=6034452643";
		["live_tv"] = "http://www.roblox.com/asset/?id=6034439648";
		["folder_special"] = "http://www.roblox.com/asset/?id=6034439639";
		["phone_missed"] = "http://www.roblox.com/asset/?id=6034457056";
		["airline_seat_recline_extra"] = "http://www.roblox.com/asset/?id=6034418528";
		["sms"] = "http://www.roblox.com/asset/?id=6034452645";
		["tap_and_play"] = "http://www.roblox.com/asset/?id=6034452650";
		["confirmation_number"] = "http://www.roblox.com/asset/?id=6034418519";
		["event_available"] = "http://www.roblox.com/asset/?id=6034439643";
		["sms_failed"] = "http://www.roblox.com/asset/?id=6034452676";
		["do_not_disturb_alt"] = "http://www.roblox.com/asset/?id=6034461619";
		["do_not_disturb"] = "http://www.roblox.com/asset/?id=6034439645";
		["ondemand_video"] = "http://www.roblox.com/asset/?id=6034457065";
		["no_encryption"] = "http://www.roblox.com/asset/?id=6034457059";
		["airline_seat_legroom_extra"] = "http://www.roblox.com/asset/?id=6034418508";
		["tv_off"] = "http://www.roblox.com/asset/?id=6034452646";
		["sim_card_alert"] = "http://www.roblox.com/asset/?id=6034452641";
		["airline_seat_legroom_normal"] = "http://www.roblox.com/asset/?id=6034418532";
		["wifi"] = "http://www.roblox.com/asset/?id=6034461626";
		["do_not_disturb_off"] = "http://www.roblox.com/asset/?id=6034439642";
		["imagesearch_roller"] = "http://www.roblox.com/asset/?id=6034439635";
		["power"] = "http://www.roblox.com/asset/?id=6034457105";
		["airline_seat_legroom_reduced"] = "http://www.roblox.com/asset/?id=6034418520";
		["phone_in_talk"] = "http://www.roblox.com/asset/?id=6034457067";
		["airline_seat_individual_suite"] = "http://www.roblox.com/asset/?id=6034418514";
		["priority_high"] = "http://www.roblox.com/asset/?id=6034457092";
		["phone_callback"] = "http://www.roblox.com/asset/?id=6034457104";
		["phone_forwarded"] = "http://www.roblox.com/asset/?id=6034457106";
		["sync"] = "http://www.roblox.com/asset/?id=6034452662";
		["vpn_lock"] = "http://www.roblox.com/asset/?id=6034452648";
		["support_agent"] = "http://www.roblox.com/asset/?id=6034452656";
		["network_locked"] = "http://www.roblox.com/asset/?id=6034457064";
		["directions_off"] = "http://www.roblox.com/asset/?id=6034418517";
		["drive_eta"] = "http://www.roblox.com/asset/?id=6034464371";
		["sensor_window"] = "http://www.roblox.com/asset/?id=6031067242";
		["sensor_door"] = "http://www.roblox.com/asset/?id=6031067241";
		["keyboard_return"] = "http://www.roblox.com/asset/?id=6034818370";
		["monitor"] = "http://www.roblox.com/asset/?id=6034837803";
		["device_hub"] = "http://www.roblox.com/asset/?id=6034789877";
		["keyboard"] = "http://www.roblox.com/asset/?id=6034818398";
		["keyboard_voice"] = "http://www.roblox.com/asset/?id=6034818360";
		["cast"] = "http://www.roblox.com/asset/?id=6034789876";
		["developer_board"] = "http://www.roblox.com/asset/?id=6034789883";
		["tablet"] = "http://www.roblox.com/asset/?id=6034848733";
		["keyboard_hide"] = "http://www.roblox.com/asset/?id=6034818386";
		["dock"] = "http://www.roblox.com/asset/?id=6034789888";
		["phonelink"] = "http://www.roblox.com/asset/?id=6034837801";
		["device_unknown"] = "http://www.roblox.com/asset/?id=6034789884";
		["speaker_group"] = "http://www.roblox.com/asset/?id=6034848732";
		["desktop_mac"] = "http://www.roblox.com/asset/?id=6034789898";
		["point_of_sale"] = "http://www.roblox.com/asset/?id=6034837798";
		["memory"] = "http://www.roblox.com/asset/?id=6034837807";
		["keyboard_tab"] = "http://www.roblox.com/asset/?id=6034818363";
		["router"] = "http://www.roblox.com/asset/?id=6034837806";
		["sim_card"] = "http://www.roblox.com/asset/?id=6034837800";
		["headset"] = "http://www.roblox.com/asset/?id=6034789880";
		["gamepad"] = "http://www.roblox.com/asset/?id=6034789879";
		["speaker"] = "http://www.roblox.com/asset/?id=6034848746";
		["devices_other"] = "http://www.roblox.com/asset/?id=6034789873";
		["laptop"] = "http://www.roblox.com/asset/?id=6034818367";
		["scanner"] = "http://www.roblox.com/asset/?id=6034837799";
		["tv"] = "http://www.roblox.com/asset/?id=6034848740";
		["headset_mic"] = "http://www.roblox.com/asset/?id=6034818383";
		["browser_not_supported"] = "http://www.roblox.com/asset/?id=6034789875";
		["computer"] = "http://www.roblox.com/asset/?id=6034789874";
		["connected_tv"] = "http://www.roblox.com/asset/?id=6034789870";
		["phonelink_off"] = "http://www.roblox.com/asset/?id=6034837804";
		["headset_off"] = "http://www.roblox.com/asset/?id=6034818402";
		["cast_connected"] = "http://www.roblox.com/asset/?id=6034789895";
		["watch"] = "http://www.roblox.com/asset/?id=6034848747";
		["keyboard_arrow_up"] = "http://www.roblox.com/asset/?id=6034818379";
		["keyboard_backspace"] = "http://www.roblox.com/asset/?id=6034818381";
		["laptop_chromebook"] = "http://www.roblox.com/asset/?id=6034818364";
		["phone_iphone"] = "http://www.roblox.com/asset/?id=6034837811";
		["smartphone"] = "http://www.roblox.com/asset/?id=6034848731";
		["power_input"] = "http://www.roblox.com/asset/?id=6034837794";
		["videogame_asset"] = "http://www.roblox.com/asset/?id=6034848748";
		["desktop_windows"] = "http://www.roblox.com/asset/?id=6034789893";
		["keyboard_arrow_down"] = "http://www.roblox.com/asset/?id=6034818372";
		["laptop_mac"] = "http://www.roblox.com/asset/?id=6034837808";
		["laptop_windows"] = "http://www.roblox.com/asset/?id=6034837796";
		["keyboard_arrow_right"] = "http://www.roblox.com/asset/?id=6034818365";
		["cast_for_education"] = "http://www.roblox.com/asset/?id=6034789872";
		["keyboard_capslock"] = "http://www.roblox.com/asset/?id=6034818403";
		["toys"] = "http://www.roblox.com/asset/?id=6034848752";
		["tablet_android"] = "http://www.roblox.com/asset/?id=6034848734";
		["mouse"] = "http://www.roblox.com/asset/?id=6034837797";
		["phone_android"] = "http://www.roblox.com/asset/?id=6034837793";
		["keyboard_arrow_left"] = "http://www.roblox.com/asset/?id=6034818375";
		["security"] = "http://www.roblox.com/asset/?id=6034837802";
		["dry_cleaning"] = "http://www.roblox.com/asset/?id=6034754456";
		["bakery_dining"] = "http://www.roblox.com/asset/?id=6034767610";
		["place"] = "http://www.roblox.com/asset/?id=6034503372";
		["run_circle"] = "http://www.roblox.com/asset/?id=6034503367";
		["local_post_office"] = "http://www.roblox.com/asset/?id=6034513883";
		["takeout_dining"] = "http://www.roblox.com/asset/?id=6034467808";
		["nightlife"] = "http://www.roblox.com/asset/?id=6034510003";
		["design_services"] = "http://www.roblox.com/asset/?id=6034754453";
		["celebration"] = "http://www.roblox.com/asset/?id=6034767613";
		["near_me_disabled"] = "http://www.roblox.com/asset/?id=6034509988";
		["add_location_alt"] = "http://www.roblox.com/asset/?id=6034483678";
		["directions_run"] = "http://www.roblox.com/asset/?id=6034754445";
		["local_fire_department"] = "http://www.roblox.com/asset/?id=6034684949";
		["add_road"] = "http://www.roblox.com/asset/?id=6034483677";
		["my_location"] = "http://www.roblox.com/asset/?id=6034509987";
		["dinner_dining"] = "http://www.roblox.com/asset/?id=6034754457";
		["local_airport"] = "http://www.roblox.com/asset/?id=6034687951";
		["zoom_out_map"] = "http://www.roblox.com/asset/?id=6035229856";
		["pin_drop"] = "http://www.roblox.com/asset/?id=6034470807";
		["subway"] = "http://www.roblox.com/asset/?id=6034467790";
		["electric_moped"] = "http://www.roblox.com/asset/?id=6034744027";
		["restaurant_menu"] = "http://www.roblox.com/asset/?id=6034503378";
		["local_gas_station"] = "http://www.roblox.com/asset/?id=6034684935";
		["local_cafe"] = "http://www.roblox.com/asset/?id=6034687954";
		["theater_comedy"] = "http://www.roblox.com/asset/?id=6034467796";
		["directions_bus"] = "http://www.roblox.com/asset/?id=6034754434";
		["hail"] = "http://www.roblox.com/asset/?id=6034744033";
		["satellite"] = "http://www.roblox.com/asset/?id=6034503370";
		["local_phone"] = "http://www.roblox.com/asset/?id=6034513884";
		["electric_bike"] = "http://www.roblox.com/asset/?id=6034744032";
		["local_see"] = "http://www.roblox.com/asset/?id=6034513887";
		["transit_enterexit"] = "http://www.roblox.com/asset/?id=6034467805";
		["local_convenience_store"] = "http://www.roblox.com/asset/?id=6034687956";
		["local_offer"] = "http://www.roblox.com/asset/?id=6034513891";
		["electric_car"] = "http://www.roblox.com/asset/?id=6034744029";
		["beenhere"] = "http://www.roblox.com/asset/?id=6034483675";
		["miscellaneous_services"] = "http://www.roblox.com/asset/?id=6034509993";
		["maps_ugc"] = "http://www.roblox.com/asset/?id=6034509992";
		["moped"] = "http://www.roblox.com/asset/?id=6034509999";
		["medical_services"] = "http://www.roblox.com/asset/?id=6034510001";
		["money"] = "http://www.roblox.com/asset/?id=6034509997";
		["transfer_within_a_station"] = "http://www.roblox.com/asset/?id=6034467809";
		["electrical_services"] = "http://www.roblox.com/asset/?id=6034744038";
		["museum"] = "http://www.roblox.com/asset/?id=6034510005";
		["add_location"] = "http://www.roblox.com/asset/?id=6034483672";
		["layers"] = "http://www.roblox.com/asset/?id=6034687957";
		["handyman"] = "http://www.roblox.com/asset/?id=6034744057";
		["local_pharmacy"] = "http://www.roblox.com/asset/?id=6034513903";
		["electric_rickshaw"] = "http://www.roblox.com/asset/?id=6034744043";
		["alt_route"] = "http://www.roblox.com/asset/?id=6034483670";
		["no_transfer"] = "http://www.roblox.com/asset/?id=6034503363";
		["pedal_bike"] = "http://www.roblox.com/asset/?id=6034503374";
		["directions_transit"] = "http://www.roblox.com/asset/?id=6034754436";
		["railway_alert"] = "http://www.roblox.com/asset/?id=6034470823";
		["local_police"] = "http://www.roblox.com/asset/?id=6034513895";
		["directions_car"] = "http://www.roblox.com/asset/?id=6034754441";
		["category"] = "http://www.roblox.com/asset/?id=6034767621";
		["attractions"] = "http://www.roblox.com/asset/?id=6034767620";
		["person_pin_circle"] = "http://www.roblox.com/asset/?id=6034503375";
		["cleaning_services"] = "http://www.roblox.com/asset/?id=6034767619";
		["terrain"] = "http://www.roblox.com/asset/?id=6034467794";
		["no_meals"] = "http://www.roblox.com/asset/?id=6034510024";
		["train"] = "http://www.roblox.com/asset/?id=6034467803";
		["delivery_dining"] = "http://www.roblox.com/asset/?id=6034767644";
		["pest_control"] = "http://www.roblox.com/asset/?id=6034470809";
		["directions"] = "http://www.roblox.com/asset/?id=6034754449";
		["atm"] = "http://www.roblox.com/asset/?id=6034767614";
		["rate_review"] = "http://www.roblox.com/asset/?id=6034503385";
		["local_bar"] = "http://www.roblox.com/asset/?id=6034687950";
		["local_drink"] = "http://www.roblox.com/asset/?id=6034687965";
		["directions_railway"] = "http://www.roblox.com/asset/?id=6034754433";
		["person_pin"] = "http://www.roblox.com/asset/?id=6034503364";
		["ev_station"] = "http://www.roblox.com/asset/?id=6034744037";
		["home_repair_service"] = "http://www.roblox.com/asset/?id=6034744064";
		["bus_alert"] = "http://www.roblox.com/asset/?id=6034767618";
		["agriculture"] = "http://www.roblox.com/asset/?id=6034483674";
		["volunteer_activism"] = "http://www.roblox.com/asset/?id=6034467799";
		["breakfast_dining"] = "http://www.roblox.com/asset/?id=6034483671";
		["layers_clear"] = "http://www.roblox.com/asset/?id=6034687975";
		["plumbing"] = "http://www.roblox.com/asset/?id=6034470800";
		["taxi_alert"] = "http://www.roblox.com/asset/?id=6034467792";
		["add_business"] = "http://www.roblox.com/asset/?id=6034483666";
		["badge"] = "http://www.roblox.com/asset/?id=6034767607";
		["edit_attributes"] = "http://www.roblox.com/asset/?id=6034754443";
		["directions_walk"] = "http://www.roblox.com/asset/?id=6034754448";
		["local_play"] = "http://www.roblox.com/asset/?id=6034513889";
		["bike_scooter"] = "http://www.roblox.com/asset/?id=6034483669";
		["two_wheeler"] = "http://www.roblox.com/asset/?id=6034467795";
		["local_florist"] = "http://www.roblox.com/asset/?id=6034684940";
		["local_hotel"] = "http://www.roblox.com/asset/?id=6034684939";
		["no_meals_ouline"] = "http://www.roblox.com/asset/?id=6034510025";
		["festival"] = "http://www.roblox.com/asset/?id=6034744031";
		["local_shipping"] = "http://www.roblox.com/asset/?id=6034684926";
		["directions_boat"] = "http://www.roblox.com/asset/?id=6034754442";
		["wrong_location"] = "http://www.roblox.com/asset/?id=6034467801";
		["restaurant"] = "http://www.roblox.com/asset/?id=6034503366";
		["directions_subway"] = "http://www.roblox.com/asset/?id=6034754440";
		["not_listed_location"] = "http://www.roblox.com/asset/?id=6034503380";
		["electric_scooter"] = "http://www.roblox.com/asset/?id=6034744041";
		["ramen_dining"] = "http://www.roblox.com/asset/?id=6034503377";
		["edit_road"] = "http://www.roblox.com/asset/?id=6034744035";
		["local_printshop"] = "http://www.roblox.com/asset/?id=6034513897";
		["map"] = "http://www.roblox.com/asset/?id=6034684930";
		["car_rental"] = "http://www.roblox.com/asset/?id=6034767641";
		["multiple_stop"] = "http://www.roblox.com/asset/?id=6034510026";
		["brunch_dining"] = "http://www.roblox.com/asset/?id=6034767611";
		["local_laundry_service"] = "http://www.roblox.com/asset/?id=6034684943";
		["set_meal"] = "http://www.roblox.com/asset/?id=6034503368";
		["local_car_wash"] = "http://www.roblox.com/asset/?id=6034687976";
		["pest_control_rodent"] = "http://www.roblox.com/asset/?id=6034470803";
		["local_pizza"] = "http://www.roblox.com/asset/?id=6034513885";
		["local_grocery_store"] = "http://www.roblox.com/asset/?id=6034684933";
		["traffic"] = "http://www.roblox.com/asset/?id=6034467797";
		["departure_board"] = "http://www.roblox.com/asset/?id=6034767615";
		["icecream"] = "http://www.roblox.com/asset/?id=6034687967";
		["navigation"] = "http://www.roblox.com/asset/?id=6034509984";
		["near_me"] = "http://www.roblox.com/asset/?id=6034509996";
		["fastfood"] = "http://www.roblox.com/asset/?id=6034744034";
		["local_library"] = "http://www.roblox.com/asset/?id=6034684931";
		["local_activity"] = "http://www.roblox.com/asset/?id=6034687955";
		["local_hospital"] = "http://www.roblox.com/asset/?id=6034684956";
		["menu_book"] = "http://www.roblox.com/asset/?id=6034509994";
		["directions_bike"] = "http://www.roblox.com/asset/?id=6034754459";
		["store_mall_directory"] = "http://www.roblox.com/asset/?id=6034470811";
		["trip_origin"] = "http://www.roblox.com/asset/?id=6034467804";
		["tram"] = "http://www.roblox.com/asset/?id=6034467806";
		["edit_location"] = "http://www.roblox.com/asset/?id=6034754439";
		["streetview"] = "http://www.roblox.com/asset/?id=6034470805";
		["hvac"] = "http://www.roblox.com/asset/?id=6034687960";
		["lunch_dining"] = "http://www.roblox.com/asset/?id=6034684928";
		["car_repair"] = "http://www.roblox.com/asset/?id=6034767617";
		["compass_calibration"] = "http://www.roblox.com/asset/?id=6034767623";
		["360"] = "http://www.roblox.com/asset/?id=6034767608";
		["flight"] = "http://www.roblox.com/asset/?id=6034744030";
		["local_mall"] = "http://www.roblox.com/asset/?id=6034684934";
		["hotel"] = "http://www.roblox.com/asset/?id=6034687977";
		["local_parking"] = "http://www.roblox.com/asset/?id=6034513893";
		["hardware"] = "http://www.roblox.com/asset/?id=6034744036";
		["local_dining"] = "http://www.roblox.com/asset/?id=6034687963";
		["park"] = "http://www.roblox.com/asset/?id=6034503369";
		["location_pin"] = "http://www.roblox.com/asset/?id=6034684937";
		["local_movies"] = "http://www.roblox.com/asset/?id=6034684936";
		["local_atm"] = "http://www.roblox.com/asset/?id=6034687953";
		["local_taxi"] = "http://www.roblox.com/asset/?id=6034684927";
		["brightness_low"] = "http://www.roblox.com/asset/?id=6034989542";
		["screen_lock_landscape"] = "http://www.roblox.com/asset/?id=6034996700";
		["graphic_eq"] = "http://www.roblox.com/asset/?id=6034989551";
		["screen_lock_rotation"] = "http://www.roblox.com/asset/?id=6034996710";
		["signal_cellular_4_bar"] = "http://www.roblox.com/asset/?id=6035030076";
		["airplanemode_inactive"] = "http://www.roblox.com/asset/?id=6034983848";
		["signal_wifi_0_bar"] = "http://www.roblox.com/asset/?id=6035030067";
		["battery_full"] = "http://www.roblox.com/asset/?id=6034983854";
		["gps_fixed"] = "http://www.roblox.com/asset/?id=6034989550";
		["brightness_high"] = "http://www.roblox.com/asset/?id=6034989541";
		["ad_units"] = "http://www.roblox.com/asset/?id=6034983845";
		["signal_cellular_alt"] = "http://www.roblox.com/asset/?id=6035030079";
		["bluetooth_connected"] = "http://www.roblox.com/asset/?id=6034983855";
		["wifi_tethering"] = "http://www.roblox.com/asset/?id=6035039430";
		["dvr"] = "http://www.roblox.com/asset/?id=6034989561";
		["screen_search_desktop"] = "http://www.roblox.com/asset/?id=6034996711";
		["network_wifi"] = "http://www.roblox.com/asset/?id=6034996712";
		["access_alarms"] = "http://www.roblox.com/asset/?id=6034983853";
		["nfc"] = "http://www.roblox.com/asset/?id=6034996698";
		["location_disabled"] = "http://www.roblox.com/asset/?id=6034996694";
		["signal_wifi_4_bar"] = "http://www.roblox.com/asset/?id=6035030077";
		["access_time"] = "http://www.roblox.com/asset/?id=6034983856";
		["mobile_off"] = "http://www.roblox.com/asset/?id=6034996702";
		["battery_unknown"] = "http://www.roblox.com/asset/?id=6034983842";
		["signal_cellular_null"] = "http://www.roblox.com/asset/?id=6035030075";
		["bluetooth_disabled"] = "http://www.roblox.com/asset/?id=6034989562";
		["developer_mode"] = "http://www.roblox.com/asset/?id=6034989549";
		["network_cell"] = "http://www.roblox.com/asset/?id=6034996709";
		["sd_storage"] = "http://www.roblox.com/asset/?id=6034996719";
		["signal_cellular_no_sim"] = "http://www.roblox.com/asset/?id=6035030078";
		["devices"] = "http://www.roblox.com/asset/?id=6034989540";
		["screen_rotation"] = "http://www.roblox.com/asset/?id=6034996701";
		["device_thermostat"] = "http://www.roblox.com/asset/?id=6034989544";
		["signal_wifi_off"] = "http://www.roblox.com/asset/?id=6035030074";
		["widgets"] = "http://www.roblox.com/asset/?id=6035039429";
		["bluetooth"] = "http://www.roblox.com/asset/?id=6034983880";
		["battery_charging_full"] = "http://www.roblox.com/asset/?id=6034983849";
		["mobile_friendly"] = "http://www.roblox.com/asset/?id=6034996699";
		["signal_cellular_0_bar"] = "http://www.roblox.com/asset/?id=6035030072";
		["storage"] = "http://www.roblox.com/asset/?id=6035030083";
		["send_to_mobile"] = "http://www.roblox.com/asset/?id=6034996697";
		["location_searching"] = "http://www.roblox.com/asset/?id=6034996695";
		["brightness_auto"] = "http://www.roblox.com/asset/?id=6034989545";
		["wifi_lock"] = "http://www.roblox.com/asset/?id=6035039428";
		["gps_not_fixed"] = "http://www.roblox.com/asset/?id=6034989547";
		["access_alarm"] = "http://www.roblox.com/asset/?id=6034983844";
		["battery_alert"] = "http://www.roblox.com/asset/?id=6034983843";
		["signal_cellular_off"] = "http://www.roblox.com/asset/?id=6035030084";
		["signal_cellular_connected_no_internet_4"] = "http://www.roblox.com/asset/?id=6035229858";
		["gps_off"] = "http://www.roblox.com/asset/?id=6034989548";
		["add_alarm"] = "http://www.roblox.com/asset/?id=6034983850";
		["brightness_medium"] = "http://www.roblox.com/asset/?id=6034989543";
		["usb"] = "http://www.roblox.com/asset/?id=6035030080";
		["airplanemode_active"] = "http://www.roblox.com/asset/?id=6034983864";
		["reset_tv"] = "http://www.roblox.com/asset/?id=6034996696";
		["wallpaper"] = "http://www.roblox.com/asset/?id=6035030102";
		["settings_system_daydream"] = "http://www.roblox.com/asset/?id=6035030081";
		["bluetooth_searching"] = "http://www.roblox.com/asset/?id=6034989553";
		["add_to_home_screen"] = "http://www.roblox.com/asset/?id=6034983858";
		["screen_lock_portrait"] = "http://www.roblox.com/asset/?id=6034996706";
		["data_usage"] = "http://www.roblox.com/asset/?id=6034989568";
		["_auto_delete"] = "http://www.roblox.com/asset/?id=6031071068";
		["_error"] = "http://www.roblox.com/asset/?id=6031071057";
		["_notification_important"] = "http://www.roblox.com/asset/?id=6031071056";
		["_add_alert"] = "http://www.roblox.com/asset/?id=6031071067";
		["_warning"] = "http://www.roblox.com/asset/?id=6031071053";
		["_error_outline"] = "http://www.roblox.com/asset/?id=6031071050";
		["check_box_outline_blank"] = "http://www.roblox.com/asset/?id=6031068420";
		["toggle_off"] = "http://www.roblox.com/asset/?id=6031068429";
		["indeterminate_check_box"] = "http://www.roblox.com/asset/?id=6031068445";
		["radio_button_checked"] = "http://www.roblox.com/asset/?id=6031068426";
		["toggle_on"] = "http://www.roblox.com/asset/?id=6031068430";
		["check_box"] = "http://www.roblox.com/asset/?id=6031068421";
		["radio_button_unchecked"] = "http://www.roblox.com/asset/?id=6031068433";
		["star"] = "http://www.roblox.com/asset/?id=6031068423";
		["star_border"] = "http://www.roblox.com/asset/?id=6031068425";
		["star_half"] = "http://www.roblox.com/asset/?id=6031068427";
		["star_outline"] = "http://www.roblox.com/asset/?id=6031068428";
		["multiline_chart"] = "http://www.roblox.com/asset/?id=6034941721";
		["pie_chart"] = "http://www.roblox.com/asset/?id=6034973076";
		["format_line_spacing"] = "http://www.roblox.com/asset/?id=6034910905";
		["format_align_left"] = "http://www.roblox.com/asset/?id=6034900727";
		["linear_scale"] = "http://www.roblox.com/asset/?id=6034941707";
		["insert_photo"] = "http://www.roblox.com/asset/?id=6034941703";
		["scatter_plot"] = "http://www.roblox.com/asset/?id=6034973094";
		["post_add"] = "http://www.roblox.com/asset/?id=6034973083";
		["format_textdirection_r_to_l"] = "http://www.roblox.com/asset/?id=6034925623";
		["format_size"] = "http://www.roblox.com/asset/?id=6034910908";
		["format_color_fill"] = "http://www.roblox.com/asset/?id=6034910903";
		["format_paint"] = "http://www.roblox.com/asset/?id=6034925618";
		["format_underlined"] = "http://www.roblox.com/asset/?id=6034925627";
		["format_shapes"] = "http://www.roblox.com/asset/?id=6034910909";
		["title"] = "http://www.roblox.com/asset/?id=6034934042";
		["highlight"] = "http://www.roblox.com/asset/?id=6034925617";
		["bar_chart"] = "http://www.roblox.com/asset/?id=6034898096";
		["format_indent_increase"] = "http://www.roblox.com/asset/?id=6034900724";
		["merge_type"] = "http://www.roblox.com/asset/?id=6034941705";
		["bubble_chart"] = "http://www.roblox.com/asset/?id=6034925612";
		["publish"] = "http://www.roblox.com/asset/?id=6034973085";
		["format_indent_decrease"] = "http://www.roblox.com/asset/?id=6034900733";
		["margin"] = "http://www.roblox.com/asset/?id=6034941701";
		["table_rows"] = "http://www.roblox.com/asset/?id=6034934025";
		["stacked_line_chart"] = "http://www.roblox.com/asset/?id=6034934039";
		["border_clear"] = "http://www.roblox.com/asset/?id=6034898135";
		["border_color"] = "http://www.roblox.com/asset/?id=6034898100";
		["border_inner"] = "http://www.roblox.com/asset/?id=6034898131";
		["insert_chart"] = "http://www.roblox.com/asset/?id=6034925628";
		["border_top"] = "http://www.roblox.com/asset/?id=6034900726";
		["padding"] = "http://www.roblox.com/asset/?id=6034973078";
		["border_vertical"] = "http://www.roblox.com/asset/?id=6034900725";
		["score"] = "http://www.roblox.com/asset/?id=6034934041";
		["border_right"] = "http://www.roblox.com/asset/?id=6034898120";
		["add_chart"] = "http://www.roblox.com/asset/?id=6034898093";
		["space_bar"] = "http://www.roblox.com/asset/?id=6034934037";
		["border_outer"] = "http://www.roblox.com/asset/?id=6034898104";
		["mode_comment"] = "http://www.roblox.com/asset/?id=6034941700";
		["attach_money"] = "http://www.roblox.com/asset/?id=6034898098";
		["drag_handle"] = "http://www.roblox.com/asset/?id=6034910907";
		["format_align_right"] = "http://www.roblox.com/asset/?id=6034900723";
		["pie_chart_outlined"] = "http://www.roblox.com/asset/?id=6034973077";
		["horizontal_rule"] = "http://www.roblox.com/asset/?id=6034925610";
		["border_all"] = "http://www.roblox.com/asset/?id=6034898101";
		["border_style"] = "http://www.roblox.com/asset/?id=6034898097";
		["insert_comment"] = "http://www.roblox.com/asset/?id=6034925609";
		["vertical_align_top"] = "http://www.roblox.com/asset/?id=6034973080";
		["vertical_align_center"] = "http://www.roblox.com/asset/?id=6034934051";
		["format_color_text"] = "http://www.roblox.com/asset/?id=6034910910";
		["format_quote"] = "http://www.roblox.com/asset/?id=6034925629";
		["height"] = "http://www.roblox.com/asset/?id=6034925613";
		["add_comment"] = "http://www.roblox.com/asset/?id=6034898128";
		["format_strikethrough"] = "http://www.roblox.com/asset/?id=6034910904";
		["strikethrough_s"] = "http://www.roblox.com/asset/?id=6034934030";
		["border_left"] = "http://www.roblox.com/asset/?id=6034898099";
		["format_list_bulleted"] = "http://www.roblox.com/asset/?id=6034925620";
		["format_italic"] = "http://www.roblox.com/asset/?id=6034910912";
		["format_list_numbered"] = "http://www.roblox.com/asset/?id=6034925622";
		["attach_file"] = "http://www.roblox.com/asset/?id=6034898102";
		["wrap_text"] = "http://www.roblox.com/asset/?id=6034973118";
		["insert_invitation"] = "http://www.roblox.com/asset/?id=6034973091";
		["format_list_numbered_rtl"] = "http://www.roblox.com/asset/?id=6034910906";
		["border_horizontal"] = "http://www.roblox.com/asset/?id=6034898105";
		["format_align_center"] = "http://www.roblox.com/asset/?id=6034900718";
		["format_textdirection_l_to_r"] = "http://www.roblox.com/asset/?id=6034925619";
		["show_chart"] = "http://www.roblox.com/asset/?id=6034934032";
		["insert_chart_outlined"] = "http://www.roblox.com/asset/?id=6034925606";
		["vertical_align_bottom"] = "http://www.roblox.com/asset/?id=6034934023";
		["subscript"] = "http://www.roblox.com/asset/?id=6034934059";
		["format_align_justify"] = "http://www.roblox.com/asset/?id=6034900721";
		["format_clear"] = "http://www.roblox.com/asset/?id=6034910902";
		["notes"] = "http://www.roblox.com/asset/?id=6034973084";
		["insert_drive_file"] = "http://www.roblox.com/asset/?id=6034941697";
		["functions"] = "http://www.roblox.com/asset/?id=6034925614";
		["insert_emoticon"] = "http://www.roblox.com/asset/?id=6034973079";
		["insert_link"] = "http://www.roblox.com/asset/?id=6034973074";
		["format_color_reset"] = "http://www.roblox.com/asset/?id=6034900743";
		["monetization_on"] = "http://www.roblox.com/asset/?id=6034973115";
		["short_text"] = "http://www.roblox.com/asset/?id=6034934035";
		["mode_edit"] = "http://www.roblox.com/asset/?id=6034941708";
		["superscript"] = "http://www.roblox.com/asset/?id=6034934034";
		["table_chart"] = "http://www.roblox.com/asset/?id=6034973081";
		["format_bold"] = "http://www.roblox.com/asset/?id=6034900732";
		["money_off"] = "http://www.roblox.com/asset/?id=6034973088";
		["border_bottom"] = "http://www.roblox.com/asset/?id=6034898094";
		["text_fields"] = "http://www.roblox.com/asset/?id=6034934040";
		["note"] = "http://www.roblox.com/asset/?id=6026663734";
		["shuffle"] = "http://www.roblox.com/asset/?id=6026667003";
		["library_books"] = "http://www.roblox.com/asset/?id=6026660085";
		["library_music"] = "http://www.roblox.com/asset/?id=6026660075";
		["surround_sound"] = "http://www.roblox.com/asset/?id=6026671209";
		["forward_30"] = "http://www.roblox.com/asset/?id=6026660088";
		["music_video"] = "http://www.roblox.com/asset/?id=6026663704";
		["videocam_off"] = "http://www.roblox.com/asset/?id=6026671212";
		["control_camera"] = "http://www.roblox.com/asset/?id=6026647916";
		["explicit"] = "http://www.roblox.com/asset/?id=6026647913";
		["3k_plus"] = "http://www.roblox.com/asset/?id=6026681598";
		["fiber_pin"] = "http://www.roblox.com/asset/?id=6026660064";
		["skip_previous"] = "http://www.roblox.com/asset/?id=6026667011";
		["pause_circle_filled"] = "http://www.roblox.com/asset/?id=6026663718";
		["video_settings"] = "http://www.roblox.com/asset/?id=6026671211";
		["movie"] = "http://www.roblox.com/asset/?id=6026660081";
		["add_to_queue"] = "http://www.roblox.com/asset/?id=6026647903";
		["6k"] = "http://www.roblox.com/asset/?id=6026681579";
		["web_asset"] = "http://www.roblox.com/asset/?id=6026671239";
		["play_circle_outline"] = "http://www.roblox.com/asset/?id=6026663726";
		["volume_off"] = "http://www.roblox.com/asset/?id=6026671224";
		["mic_off"] = "http://www.roblox.com/asset/?id=6026660076";
		["featured_play_list"] = "http://www.roblox.com/asset/?id=6026647932";
		["pause_circle_outline"] = "http://www.roblox.com/asset/?id=6026663701";
		["slow_motion_video"] = "http://www.roblox.com/asset/?id=6026681583";
		["7k"] = "http://www.roblox.com/asset/?id=6026681584";
		["playlist_add"] = "http://www.roblox.com/asset/?id=6026663728";
		["fiber_smart_record"] = "http://www.roblox.com/asset/?id=6026660080";
		["8k"] = "http://www.roblox.com/asset/?id=6026643014";
		["hd"] = "http://www.roblox.com/asset/?id=6026660065";
		["repeat_one_on"] = "http://www.roblox.com/asset/?id=6026666992";
		["recent_actors"] = "http://www.roblox.com/asset/?id=6026663773";
		["fiber_new"] = "http://www.roblox.com/asset/?id=6026647930";
		["fiber_dvr"] = "http://www.roblox.com/asset/?id=6026647912";
		["hearing_disabled"] = "http://www.roblox.com/asset/?id=6026660068";
		["forward_10"] = "http://www.roblox.com/asset/?id=6026660062";
		["4k_plus"] = "http://www.roblox.com/asset/?id=6026643005";
		["repeat_one"] = "http://www.roblox.com/asset/?id=6026681590";
		["equalizer"] = "http://www.roblox.com/asset/?id=6026647906";
		["stop"] = "http://www.roblox.com/asset/?id=6026681576";
		["2k"] = "http://www.roblox.com/asset/?id=6026643032";
		["playlist_add_check"] = "http://www.roblox.com/asset/?id=6026663727";
		["not_interested"] = "http://www.roblox.com/asset/?id=6026663743";
		["videocam"] = "http://www.roblox.com/asset/?id=6026671213";
		["sort_by_alpha"] = "http://www.roblox.com/asset/?id=6026667009";
		["library_add"] = "http://www.roblox.com/asset/?id=6026660063";
		["stop_circle"] = "http://www.roblox.com/asset/?id=6026681577";
		["pause"] = "http://www.roblox.com/asset/?id=6026663719";
		["new_releases"] = "http://www.roblox.com/asset/?id=6026663730";
		["album"] = "http://www.roblox.com/asset/?id=6026647905";
		["sd"] = "http://www.roblox.com/asset/?id=6026681582";
		["volume_up"] = "http://www.roblox.com/asset/?id=6026671215";
		["replay_5"] = "http://www.roblox.com/asset/?id=6026666993";
		["high_quality"] = "http://www.roblox.com/asset/?id=6026660059";
		["shuffle_on"] = "http://www.roblox.com/asset/?id=6026666996";
		["play_arrow"] = "http://www.roblox.com/asset/?id=6026663699";
		["snooze"] = "http://www.roblox.com/asset/?id=6026667006";
		["closed_caption_disabled"] = "http://www.roblox.com/asset/?id=6026647900";
		["subscriptions"] = "http://www.roblox.com/asset/?id=6026671207";
		["skip_next"] = "http://www.roblox.com/asset/?id=6026667005";
		["branding_watermark"] = "http://www.roblox.com/asset/?id=6026647911";
		["speed"] = "http://www.roblox.com/asset/?id=6026681578";
		["art_track"] = "http://www.roblox.com/asset/?id=6026647908";
		["3k"] = "http://www.roblox.com/asset/?id=6026681574";
		["4k"] = "http://www.roblox.com/asset/?id=6026643017";
		["volume_mute"] = "http://www.roblox.com/asset/?id=6026671214";
		["playlist_play"] = "http://www.roblox.com/asset/?id=6026663723";
		["remove_from_queue"] = "http://www.roblox.com/asset/?id=6026663771";
		["fast_forward"] = "http://www.roblox.com/asset/?id=6026647902";
		["play_disabled"] = "http://www.roblox.com/asset/?id=6026663702";
		["fast_rewind"] = "http://www.roblox.com/asset/?id=6026647942";
		["5k"] = "http://www.roblox.com/asset/?id=6026681575";
		["replay_10"] = "http://www.roblox.com/asset/?id=6026667007";
		["video_library"] = "http://www.roblox.com/asset/?id=6026671208";
		["loop"] = "http://www.roblox.com/asset/?id=6026660087";
		["replay_circle_filled"] = "http://www.roblox.com/asset/?id=6026667002";
		["5g"] = "http://www.roblox.com/asset/?id=6026643007";
		["library_add_check"] = "http://www.roblox.com/asset/?id=6026660083";
		["repeat"] = "http://www.roblox.com/asset/?id=6026666998";
		["queue_play_next"] = "http://www.roblox.com/asset/?id=6026663700";
		["forward_5"] = "http://www.roblox.com/asset/?id=6026660067";
		["web"] = "http://www.roblox.com/asset/?id=6026671234";
		["mic_none"] = "http://www.roblox.com/asset/?id=6026660066";
		["queue"] = "http://www.roblox.com/asset/?id=6026663724";
		["closed_caption_off"] = "http://www.roblox.com/asset/?id=6026647943";
		["hearing"] = "http://www.roblox.com/asset/?id=6026660060";
		["queue_music"] = "http://www.roblox.com/asset/?id=6026663725";
		["airplay"] = "http://www.roblox.com/asset/?id=6026647929";
		["9k"] = "http://www.roblox.com/asset/?id=6026643013";
		["video_label"] = "http://www.roblox.com/asset/?id=6026671204";
		["8k_plus"] = "http://www.roblox.com/asset/?id=6026643003";
		["play_circle_filled"] = "http://www.roblox.com/asset/?id=6026663705";
		["1k"] = "http://www.roblox.com/asset/?id=6026643002";
		["fiber_manual_record"] = "http://www.roblox.com/asset/?id=6026647909";
		["closed_caption"] = "http://www.roblox.com/asset/?id=6026647896";
		["subtitles"] = "http://www.roblox.com/asset/?id=6026671203";
		["featured_video"] = "http://www.roblox.com/asset/?id=6026647910";
		["replay_30"] = "http://www.roblox.com/asset/?id=6026667010";
		["10k"] = "http://www.roblox.com/asset/?id=6026643035";
		["5k_plus"] = "http://www.roblox.com/asset/?id=6026643028";
		["6k_plus"] = "http://www.roblox.com/asset/?id=6026643019";
		["replay"] = "http://www.roblox.com/asset/?id=6026666999";
		["repeat_on"] = "http://www.roblox.com/asset/?id=6026666994";
		["1k_plus"] = "http://www.roblox.com/asset/?id=6026681580";
		["2k_plus"] = "http://www.roblox.com/asset/?id=6026681588";
		["games"] = "http://www.roblox.com/asset/?id=6026660074";
		["volume_down"] = "http://www.roblox.com/asset/?id=6026671206";
		["mic"] = "http://www.roblox.com/asset/?id=6026660078";
		["call_to_action"] = "http://www.roblox.com/asset/?id=6026647898";
		["7k_plus"] = "http://www.roblox.com/asset/?id=6026643012";
		["av_timer"] = "http://www.roblox.com/asset/?id=6026647934";
		["9k_plus"] = "http://www.roblox.com/asset/?id=6026681585";
		["radio"] = "http://www.roblox.com/asset/?id=6026663698";
		["10mp"] = "http://www.roblox.com/asset/?id=6031328149";
		["20mp"] = "http://www.roblox.com/asset/?id=6031488940";
		["wb_twighlight"] = "http://www.roblox.com/asset/?id=6034412760";
		["movie_creation"] = "http://www.roblox.com/asset/?id=6034323681";
		["crop_portrait"] = "http://www.roblox.com/asset/?id=6031630198";
		["filter_5"] = "http://www.roblox.com/asset/?id=6031597518";
		["broken_image"] = "http://www.roblox.com/asset/?id=6031471480";
		["flip_camera_android"] = "http://www.roblox.com/asset/?id=6034333280";
		["flip_camera_ios"] = "http://www.roblox.com/asset/?id=6034333267";
		["circle"] = "http://www.roblox.com/asset/?id=6031625146";
		["photo_camera_front"] = "http://www.roblox.com/asset/?id=6031771000";
		["assistant"] = "http://www.roblox.com/asset/?id=6031360356";
		["face_retouching_natural"] = "http://www.roblox.com/asset/?id=6034333274";
		["palette"] = "http://www.roblox.com/asset/?id=6034316009";
		["nature_people"] = "http://www.roblox.com/asset/?id=6034323711";
		["14mp"] = "http://www.roblox.com/asset/?id=6031328161";
		["gradient"] = "http://www.roblox.com/asset/?id=6034333261";
		["filter_4"] = "http://www.roblox.com/asset/?id=6031597512";
		["panorama_wide_angle_select"] = "http://www.roblox.com/asset/?id=6031770990";
		["photo"] = "http://www.roblox.com/asset/?id=6031770993";
		["grid_off"] = "http://www.roblox.com/asset/?id=6034333286";
		["leak_add"] = "http://www.roblox.com/asset/?id=6034407074";
		["landscape"] = "http://www.roblox.com/asset/?id=6034407069";
		["exposure_plus_1"] = "http://www.roblox.com/asset/?id=6034328970";
		["slideshow"] = "http://www.roblox.com/asset/?id=6031754546";
		["camera_alt"] = "http://www.roblox.com/asset/?id=6031572307";
		["audiotrack"] = "http://www.roblox.com/asset/?id=6031471489";
		["filter_none"] = "http://www.roblox.com/asset/?id=6031600815";
		["blur_off"] = "http://www.roblox.com/asset/?id=6031371055";
		["crop_16_9"] = "http://www.roblox.com/asset/?id=6031630205";
		["blur_on"] = "http://www.roblox.com/asset/?id=6031371068";
		["brightness_4"] = "http://www.roblox.com/asset/?id=6031471483";
		["details"] = "http://www.roblox.com/asset/?id=6034328968";
		["panorama_horizontal"] = "http://www.roblox.com/asset/?id=6034315966";
		["camera_rear"] = "http://www.roblox.com/asset/?id=6031572316";
		["hdr_weak"] = "http://www.roblox.com/asset/?id=6034407083";
		["collections"] = "http://www.roblox.com/asset/?id=6031625145";
		["hdr_enhanced_select"] = "http://www.roblox.com/asset/?id=6034333281";
		["adjust"] = "http://www.roblox.com/asset/?id=6031339048";
		["burst_mode"] = "http://www.roblox.com/asset/?id=6031572306";
		["nature"] = "http://www.roblox.com/asset/?id=6034323695";
		["brightness_6"] = "http://www.roblox.com/asset/?id=6031572309";
		["19mp"] = "http://www.roblox.com/asset/?id=6031339054";
		["grain"] = "http://www.roblox.com/asset/?id=6034333288";
		["receipt_long"] = "http://www.roblox.com/asset/?id=6031763428";
		["photo_filter"] = "http://www.roblox.com/asset/?id=6031770992";
		["edit"] = "http://www.roblox.com/asset/?id=6034328955";
		["healing"] = "http://www.roblox.com/asset/?id=6034407071";
		["exposure_neg_1"] = "http://www.roblox.com/asset/?id=6034328957";
		["exposure"] = "http://www.roblox.com/asset/?id=6034328962";
		["wb_shade"] = "http://www.roblox.com/asset/?id=6034315974";
		["compare"] = "http://www.roblox.com/asset/?id=6031625151";
		["cases"] = "http://www.roblox.com/asset/?id=6031572324";
		["timer_3"] = "http://www.roblox.com/asset/?id=6031754540";
		["exposure_plus_2"] = "http://www.roblox.com/asset/?id=6034328961";
		["12mp"] = "http://www.roblox.com/asset/?id=6031328140";
		["22mp"] = "http://www.roblox.com/asset/?id=6031360353";
		["timer_off"] = "http://www.roblox.com/asset/?id=6031734881";
		["auto_stories"] = "http://www.roblox.com/asset/?id=6031360360";
		["rotate_left"] = "http://www.roblox.com/asset/?id=6031763427";
		["wb_iridescent"] = "http://www.roblox.com/asset/?id=6034315972";
		["shutter_speed"] = "http://www.roblox.com/asset/?id=6031763443";
		["switch_video"] = "http://www.roblox.com/asset/?id=6031754536";
		["23mp"] = "http://www.roblox.com/asset/?id=6031339045";
		["euro"] = "http://www.roblox.com/asset/?id=6034328963";
		["15mp"] = "http://www.roblox.com/asset/?id=6031328158";
		["filter_center_focus"] = "http://www.roblox.com/asset/?id=6031600817";
		["photo_library"] = "http://www.roblox.com/asset/?id=6031770998";
		["mp"] = "http://www.roblox.com/asset/?id=6034323674";
		["looks_4"] = "http://www.roblox.com/asset/?id=6034407089";
		["filter_2"] = "http://www.roblox.com/asset/?id=6031597521";
		["crop_3_2"] = "http://www.roblox.com/asset/?id=6034328956";
		["auto_fix_normal"] = "http://www.roblox.com/asset/?id=6031371074";
		["auto_fix_off"] = "http://www.roblox.com/asset/?id=6031360381";
		["wb_auto"] = "http://www.roblox.com/asset/?id=6031734875";
		["switch_camera"] = "http://www.roblox.com/asset/?id=6031754550";
		["filter_vintage"] = "http://www.roblox.com/asset/?id=6031600811";
		["photo_size_select_small"] = "http://www.roblox.com/asset/?id=6031763457";
		["blur_linear"] = "http://www.roblox.com/asset/?id=6031488930";
		["hdr_on"] = "http://www.roblox.com/asset/?id=6034333279";
		["tag_faces"] = "http://www.roblox.com/asset/?id=6031754560";
		["21mp"] = "http://www.roblox.com/asset/?id=6031339065";
		["camera"] = "http://www.roblox.com/asset/?id=6031572312";
		["image_aspect_ratio"] = "http://www.roblox.com/asset/?id=6034407073";
		["filter_b_and_w"] = "http://www.roblox.com/asset/?id=6031600824";
		["crop_landscape"] = "http://www.roblox.com/asset/?id=6031630202";
		["13mp"] = "http://www.roblox.com/asset/?id=6031328137";
		["grid_on"] = "http://www.roblox.com/asset/?id=6034333276";
		["motion_photos_pause"] = "http://www.roblox.com/asset/?id=6034323668";
		["filter_6"] = "http://www.roblox.com/asset/?id=6031597524";
		["linked_camera"] = "http://www.roblox.com/asset/?id=6034407082";
		["panorama_fish_eye"] = "http://www.roblox.com/asset/?id=6034315969";
		["panorama"] = "http://www.roblox.com/asset/?id=6034315955";
		["color_lens"] = "http://www.roblox.com/asset/?id=6031625148";
		["lens"] = "http://www.roblox.com/asset/?id=6034407081";
		["crop_din"] = "http://www.roblox.com/asset/?id=6031630208";
		["exposure_neg_2"] = "http://www.roblox.com/asset/?id=6034328973";
		["mic_external_off"] = "http://www.roblox.com/asset/?id=6034323672";
		["crop_free"] = "http://www.roblox.com/asset/?id=6031630212";
		["crop_original"] = "http://www.roblox.com/asset/?id=6031630204";
		["panorama_photosphere_select"] = "http://www.roblox.com/asset/?id=6034315975";
		["photo_size_select_actual"] = "http://www.roblox.com/asset/?id=6031771012";
		["leak_remove"] = "http://www.roblox.com/asset/?id=6034407080";
		["collections_bookmark"] = "http://www.roblox.com/asset/?id=6034328965";
		["straighten"] = "http://www.roblox.com/asset/?id=6031754545";
		["timelapse"] = "http://www.roblox.com/asset/?id=6031754541";
		["picture_as_pdf"] = "http://www.roblox.com/asset/?id=6031763425";
		["crop_rotate"] = "http://www.roblox.com/asset/?id=6031630203";
		["control_point_duplicate"] = "http://www.roblox.com/asset/?id=6034328959";
		["photo_camera_back"] = "http://www.roblox.com/asset/?id=6031771007";
		["looks_3"] = "http://www.roblox.com/asset/?id=6034407088";
		["motion_photos_off"] = "http://www.roblox.com/asset/?id=6034323670";
		["rotate_right"] = "http://www.roblox.com/asset/?id=6031763429";
		["view_compact"] = "http://www.roblox.com/asset/?id=6031734878";
		["crop_7_5"] = "http://www.roblox.com/asset/?id=6031630197";
		["style"] = "http://www.roblox.com/asset/?id=6031754538";
		["exposure_zero"] = "http://www.roblox.com/asset/?id=6034329000";
		["camera_front"] = "http://www.roblox.com/asset/?id=6031572318";
		["hdr_strong"] = "http://www.roblox.com/asset/?id=6034333272";
		["view_comfy"] = "http://www.roblox.com/asset/?id=6031734876";
		["panorama_vertical"] = "http://www.roblox.com/asset/?id=6034315963";
		["panorama_vertical_select"] = "http://www.roblox.com/asset/?id=6034315961";
		["looks_two"] = "http://www.roblox.com/asset/?id=6034412757";
		["filter_drama"] = "http://www.roblox.com/asset/?id=6031600813";
		["center_focus_strong"] = "http://www.roblox.com/asset/?id=6031625147";
		["18mp"] = "http://www.roblox.com/asset/?id=6031339064";
		["7mp"] = "http://www.roblox.com/asset/?id=6031328139";
		["wb_sunny"] = "http://www.roblox.com/asset/?id=6034412758";
		["filter_9_plus"] = "http://www.roblox.com/asset/?id=6031600812";
		["crop"] = "http://www.roblox.com/asset/?id=6034328964";
		["vignette"] = "http://www.roblox.com/asset/?id=6031734905";
		["brightness_2"] = "http://www.roblox.com/asset/?id=6031488938";
		["crop_square"] = "http://www.roblox.com/asset/?id=6031630222";
		["looks_5"] = "http://www.roblox.com/asset/?id=6034412764";
		["flip"] = "http://www.roblox.com/asset/?id=6034333275";
		["looks_one"] = "http://www.roblox.com/asset/?id=6034412761";
		["flash_off"] = "http://www.roblox.com/asset/?id=6034333270";
		["hdr_off"] = "http://www.roblox.com/asset/?id=6034333266";
		["photo_album"] = "http://www.roblox.com/asset/?id=6031770989";
		["motion_photos_paused"] = "http://www.roblox.com/asset/?id=6034323675";
		["photo_camera"] = "http://www.roblox.com/asset/?id=6031770997";
		["2mp"] = "http://www.roblox.com/asset/?id=6031328138";
		["3mp"] = "http://www.roblox.com/asset/?id=6031328136";
		["24mp"] = "http://www.roblox.com/asset/?id=6031360352";
		["filter_9"] = "http://www.roblox.com/asset/?id=6031597534";
		["6mp"] = "http://www.roblox.com/asset/?id=6031328131";
		["remove_red_eye"] = "http://www.roblox.com/asset/?id=6031763426";
		["4mp"] = "http://www.roblox.com/asset/?id=6031328152";
		["add_a_photo"] = "http://www.roblox.com/asset/?id=6031339049";
		["filter_3"] = "http://www.roblox.com/asset/?id=6031597513";
		["crop_5_4"] = "http://www.roblox.com/asset/?id=6034328960";
		["8mp"] = "http://www.roblox.com/asset/?id=6031328133";
		["camera_roll"] = "http://www.roblox.com/asset/?id=6031572314";
		["panorama_wide_angle"] = "http://www.roblox.com/asset/?id=6031770995";
		["transform"] = "http://www.roblox.com/asset/?id=6031734873";
		["flare"] = "http://www.roblox.com/asset/?id=6031600816";
		["image_search"] = "http://www.roblox.com/asset/?id=6034407084";
		["auto_awesome"] = "http://www.roblox.com/asset/?id=6031360365";
		["motion_photos_on"] = "http://www.roblox.com/asset/?id=6034323669";
		["rotate_90_degrees_ccw"] = "http://www.roblox.com/asset/?id=6031763456";
		["filter_1"] = "http://www.roblox.com/asset/?id=6031597511";
		["filter_tilt_shift"] = "http://www.roblox.com/asset/?id=6031600814";
		["image"] = "http://www.roblox.com/asset/?id=6034407078";
		["center_focus_weak"] = "http://www.roblox.com/asset/?id=6031625144";
		["blur_circular"] = "http://www.roblox.com/asset/?id=6031488945";
		["bedtime"] = "http://www.roblox.com/asset/?id=6031371054";
		["auto_fix_high"] = "http://www.roblox.com/asset/?id=6031360355";
		["monochrome_photos"] = "http://www.roblox.com/asset/?id=6034323678";
		["flash_auto"] = "http://www.roblox.com/asset/?id=6034333287";
		["5mp"] = "http://www.roblox.com/asset/?id=6031328144";
		["photo_size_select_large"] = "http://www.roblox.com/asset/?id=6031763423";
		["assistant_photo"] = "http://www.roblox.com/asset/?id=6031339052";
		["animation"] = "http://www.roblox.com/asset/?id=6031625150";
		["looks"] = "http://www.roblox.com/asset/?id=6034407096";
		["17mp"] = "http://www.roblox.com/asset/?id=6031339055";
		["panorama_horizontal_select"] = "http://www.roblox.com/asset/?id=6034315965";
		["flash_on"] = "http://www.roblox.com/asset/?id=6034333271";
		["iso"] = "http://www.roblox.com/asset/?id=6034407106";
		["music_note"] = "http://www.roblox.com/asset/?id=6034323673";
		["music_off"] = "http://www.roblox.com/asset/?id=6034323679";
		["navigate_next"] = "http://www.roblox.com/asset/?id=6034315956";
		["timer"] = "http://www.roblox.com/asset/?id=6031754564";
		["loupe"] = "http://www.roblox.com/asset/?id=6034412770";
		["navigate_before"] = "http://www.roblox.com/asset/?id=6034323696";
		["brightness_1"] = "http://www.roblox.com/asset/?id=6031471488";
		["brightness_7"] = "http://www.roblox.com/asset/?id=6031471491";
		["tonality"] = "http://www.roblox.com/asset/?id=6031734891";
		["brush"] = "http://www.roblox.com/asset/?id=6031572320";
		["colorize"] = "http://www.roblox.com/asset/?id=6031625161";
		["filter_7"] = "http://www.roblox.com/asset/?id=6031597515";
		["16mp"] = "http://www.roblox.com/asset/?id=6031328168";
		["timer_10"] = "http://www.roblox.com/asset/?id=6031734880";
		["portrait"] = "http://www.roblox.com/asset/?id=6031763434";
		["tune"] = "http://www.roblox.com/asset/?id=6031734877";
		["image_not_supported"] = "http://www.roblox.com/asset/?id=6034407076";
		["wb_cloudy"] = "http://www.roblox.com/asset/?id=6031734907";
		["auto_awesome_motion"] = "http://www.roblox.com/asset/?id=6031360370";
		["filter_8"] = "http://www.roblox.com/asset/?id=6031597532";
		["brightness_5"] = "http://www.roblox.com/asset/?id=6031471479";
		["movie_filter"] = "http://www.roblox.com/asset/?id=6034323687";
		["add_photo_alternate"] = "http://www.roblox.com/asset/?id=6031471484";
		["add_to_photos"] = "http://www.roblox.com/asset/?id=6031371075";
		["texture"] = "http://www.roblox.com/asset/?id=6031754553";
		["11mp"] = "http://www.roblox.com/asset/?id=6031328141";
		["mic_external_on"] = "http://www.roblox.com/asset/?id=6034323671";
		["looks_6"] = "http://www.roblox.com/asset/?id=6034412759";
		["dehaze"] = "http://www.roblox.com/asset/?id=6031630200";
		["control_point"] = "http://www.roblox.com/asset/?id=6031625131";
		["panorama_photosphere"] = "http://www.roblox.com/asset/?id=6034412763";
		["filter_frames"] = "http://www.roblox.com/asset/?id=6031600833";
		["auto_awesome_mosaic"] = "http://www.roblox.com/asset/?id=6031371053";
		["9mp"] = "http://www.roblox.com/asset/?id=6031328146";
		["filter"] = "http://www.roblox.com/asset/?id=6031597514";
		["brightness_3"] = "http://www.roblox.com/asset/?id=6031572317";
		["dirty_lens"] = "http://www.roblox.com/asset/?id=6034328967";
		["wb_incandescent"] = "http://www.roblox.com/asset/?id=6034316010";
		["filter_hdr"] = "http://www.roblox.com/asset/?id=6031600819";
		["textsms"] = "http://www.roblox.com/asset/?id=6035202006";
		["comment"] = "http://www.roblox.com/asset/?id=6035181871";
		["call_end"] = "http://www.roblox.com/asset/?id=6035173845";
		["qr_code_scanner"] = "http://www.roblox.com/asset/?id=6035202022";
		["phonelink_setup"] = "http://www.roblox.com/asset/?id=6035202025";
		["call_merge"] = "http://www.roblox.com/asset/?id=6035173843";
		["phonelink_erase"] = "http://www.roblox.com/asset/?id=6035202085";
		["contact_mail"] = "http://www.roblox.com/asset/?id=6035181868";
		["contact_phone"] = "http://www.roblox.com/asset/?id=6035181861";
		["screen_share"] = "http://www.roblox.com/asset/?id=6035202008";
		["present_to_all"] = "http://www.roblox.com/asset/?id=6035202020";
		["stay_primary_portrait"] = "http://www.roblox.com/asset/?id=6035202009";
		["message"] = "http://www.roblox.com/asset/?id=6035202033";
		["sentiment_satisfied_alt"] = "http://www.roblox.com/asset/?id=6035202069";
		["stay_current_portrait"] = "http://www.roblox.com/asset/?id=6035202004";
		["voicemail"] = "http://www.roblox.com/asset/?id=6035202019";
		["business"] = "http://www.roblox.com/asset/?id=6035173853";
		["mail_outline"] = "http://www.roblox.com/asset/?id=6035190844";
		["vpn_key"] = "http://www.roblox.com/asset/?id=6035202034";
		["forward_to_inbox"] = "http://www.roblox.com/asset/?id=6035190840";
		["contacts"] = "http://www.roblox.com/asset/?id=6035181864";
		["phonelink_ring"] = "http://www.roblox.com/asset/?id=6035202066";
		["domain_disabled"] = "http://www.roblox.com/asset/?id=6035181862";
		["person_add_disabled"] = "http://www.roblox.com/asset/?id=6035202007";
		["stay_primary_landscape"] = "http://www.roblox.com/asset/?id=6035202026";
		["alternate_email"] = "http://www.roblox.com/asset/?id=6035173865";
		["phone_disabled"] = "http://www.roblox.com/asset/?id=6035202028";
		["email"] = "http://www.roblox.com/asset/?id=6035181866";
		["mobile_screen_share"] = "http://www.roblox.com/asset/?id=6035202021";
		["live_help"] = "http://www.roblox.com/asset/?id=6035190836";
		["chat_bubble"] = "http://www.roblox.com/asset/?id=6035181858";
		["stop_screen_share"] = "http://www.roblox.com/asset/?id=6035202042";
		["location_on"] = "http://www.roblox.com/asset/?id=6035190846";
		["chat_bubble_outline"] = "http://www.roblox.com/asset/?id=6035181869";
		["dialer_sip"] = "http://www.roblox.com/asset/?id=6035181865";
		["no_sim"] = "http://www.roblox.com/asset/?id=6035202030";
		["list_alt"] = "http://www.roblox.com/asset/?id=6035190838";
		["call"] = "http://www.roblox.com/asset/?id=6035173859";
		["pause_presentation"] = "http://www.roblox.com/asset/?id=6035202015";
		["invert_colors_off"] = "http://www.roblox.com/asset/?id=6035190842";
		["call_missed_outgoing"] = "http://www.roblox.com/asset/?id=6035173847";
		["stay_current_landscape"] = "http://www.roblox.com/asset/?id=6035202011";
		["import_export"] = "http://www.roblox.com/asset/?id=6035202040";
		["add_ic_call"] = "http://www.roblox.com/asset/?id=6035173839";
		["dialpad"] = "http://www.roblox.com/asset/?id=6035181892";
		["nat"] = "http://www.roblox.com/asset/?id=6035202082";
		["unsubscribe"] = "http://www.roblox.com/asset/?id=6035202044";
		["mark_chat_unread"] = "http://www.roblox.com/asset/?id=6035190841";
		["portable_wifi_off"] = "http://www.roblox.com/asset/?id=6035202091";
		["location_off"] = "http://www.roblox.com/asset/?id=6035202049";
		["person_search"] = "http://www.roblox.com/asset/?id=6035202013";
		["phonelink_lock"] = "http://www.roblox.com/asset/?id=6035202064";
		["desktop_access_disabled"] = "http://www.roblox.com/asset/?id=6035181863";
		["import_contacts"] = "http://www.roblox.com/asset/?id=6035190854";
		["rss_feed"] = "http://www.roblox.com/asset/?id=6035202016";
		["chat"] = "http://www.roblox.com/asset/?id=6035173838";
		["print_disabled"] = "http://www.roblox.com/asset/?id=6035202041";
		["mark_email_read"] = "http://www.roblox.com/asset/?id=6035202038";
		["hourglass_top"] = "http://www.roblox.com/asset/?id=6035190886";
		["clear_all"] = "http://www.roblox.com/asset/?id=6035181870";
		["forum"] = "http://www.roblox.com/asset/?id=6035202002";
		["qr_code"] = "http://www.roblox.com/asset/?id=6035202012";
		["speaker_phone"] = "http://www.roblox.com/asset/?id=6035202018";
		["rtt"] = "http://www.roblox.com/asset/?id=6035202010";
		["domain_verification"] = "http://www.roblox.com/asset/?id=6035181867";
		["app_registration"] = "http://www.roblox.com/asset/?id=6035173870";
		["call_split"] = "http://www.roblox.com/asset/?id=6035173861";
		["cell_wifi"] = "http://www.roblox.com/asset/?id=6035173852";
		["phone_enabled"] = "http://www.roblox.com/asset/?id=6035202089";
		["call_made"] = "http://www.roblox.com/asset/?id=6035173858";
		["call_received"] = "http://www.roblox.com/asset/?id=6035173844";
		["phone"] = "http://www.roblox.com/asset/?id=6035202017";
		["ring_volume"] = "http://www.roblox.com/asset/?id=6035202032";
		["mark_email_unread"] = "http://www.roblox.com/asset/?id=6035202027";
		["hourglass_bottom"] = "http://www.roblox.com/asset/?id=6035202043";
		["read_more"] = "http://www.roblox.com/asset/?id=6035202014";
		["duo"] = "http://www.roblox.com/asset/?id=6035181860";
		["more_time"] = "http://www.roblox.com/asset/?id=6035202036";
		["wifi_calling"] = "http://www.roblox.com/asset/?id=6035202065";
		["swap_calls"] = "http://www.roblox.com/asset/?id=6035202037";
		["cancel_presentation"] = "http://www.roblox.com/asset/?id=6035173837";
		["call_missed"] = "http://www.roblox.com/asset/?id=6035173850";
		["mark_chat_read"] = "http://www.roblox.com/asset/?id=6035202031";
		["text_snippet"] = "http://www.roblox.com/asset/?id=6031302995";
		["snippet_folder"] = "http://www.roblox.com/asset/?id=6031302947";
		["workspaces_outline"] = "http://www.roblox.com/asset/?id=6031302952";
		["file_download"] = "http://www.roblox.com/asset/?id=6031302931";
		["request_quote"] = "http://www.roblox.com/asset/?id=6031302941";
		["approval"] = "http://www.roblox.com/asset/?id=6031302928";
		["drive_folder_upload"] = "http://www.roblox.com/asset/?id=6031302929";
		["rule_folder"] = "http://www.roblox.com/asset/?id=6031302940";
		["attach_email"] = "http://www.roblox.com/asset/?id=6031302935";
		["topic"] = "http://www.roblox.com/asset/?id=6031302976";
		["upload_file"] = "http://www.roblox.com/asset/?id=6031302959";
		["attachment"] = "http://www.roblox.com/asset/?id=6031302921";
		["file_download_done"] = "http://www.roblox.com/asset/?id=6031302926";
		["drive_file_move_outline"] = "http://www.roblox.com/asset/?id=6031302924";
		["cloud_upload"] = "http://www.roblox.com/asset/?id=6031302992";
		["cloud_circle"] = "http://www.roblox.com/asset/?id=6031302919";
		["folder_shared"] = "http://www.roblox.com/asset/?id=6031302945";
		["cloud_download"] = "http://www.roblox.com/asset/?id=6031302917";
		["file_upload"] = "http://www.roblox.com/asset/?id=6031302996";
		["workspaces_filled"] = "http://www.roblox.com/asset/?id=6031302961";
		["cloud_queue"] = "http://www.roblox.com/asset/?id=6031302916";
		["cloud"] = "http://www.roblox.com/asset/?id=6031302918";
		["folder_open"] = "http://www.roblox.com/asset/?id=6031302934";
		["grid_view"] = "http://www.roblox.com/asset/?id=6031302950";
		["cloud_off"] = "http://www.roblox.com/asset/?id=6031302993";
		["create_new_folder"] = "http://www.roblox.com/asset/?id=6031302933";
		["cloud_done"] = "http://www.roblox.com/asset/?id=6031302927";
		["folder"] = "http://www.roblox.com/asset/?id=6031302932";
		["drive_file_move"] = "http://www.roblox.com/asset/?id=6031302922";
		["drive_file_rename_outline"] = "http://www.roblox.com/asset/?id=6031302994";
		["notifications_active"] = "http://www.roblox.com/asset/?id=6034304908";
		["sentiment_neutral"] = "http://www.roblox.com/asset/?id=6034230636";
		["sick"] = "http://www.roblox.com/asset/?id=6034230642";
		["poll"] = "http://www.roblox.com/asset/?id=6034267991";
		["emoji_events"] = "http://www.roblox.com/asset/?id=6034275726";
		["groups"] = "http://www.roblox.com/asset/?id=6034281935";
		["sports_soccer"] = "http://www.roblox.com/asset/?id=6034227075";
		["person_add"] = "http://www.roblox.com/asset/?id=6034287514";
		["mood_bad"] = "http://www.roblox.com/asset/?id=6034295706";
		["person_remove_alt_1"] = "http://www.roblox.com/asset/?id=6034287515";
		["king_bed"] = "http://www.roblox.com/asset/?id=6034281948";
		["architecture"] = "http://www.roblox.com/asset/?id=6034275730";
		["deck"] = "http://www.roblox.com/asset/?id=6034295703";
		["group_add"] = "http://www.roblox.com/asset/?id=6034281909";
		["sports_basketball"] = "http://www.roblox.com/asset/?id=6034230649";
		["emoji_symbols"] = "http://www.roblox.com/asset/?id=6034281899";
		["switch_account"] = "http://www.roblox.com/asset/?id=6034227138";
		["remove_moderator"] = "http://www.roblox.com/asset/?id=6034267998";
		["coronavirus"] = "http://www.roblox.com/asset/?id=6034275724";
		["people"] = "http://www.roblox.com/asset/?id=6034287513";
		["person"] = "http://www.roblox.com/asset/?id=6034287594";
		["elderly"] = "http://www.roblox.com/asset/?id=6034295698";
		["clean_hands"] = "http://www.roblox.com/asset/?id=6034275729";
		["emoji_flags"] = "http://www.roblox.com/asset/?id=6034304898";
		["psychology"] = "http://www.roblox.com/asset/?id=6034287516";
		["person_add_alt"] = "http://www.roblox.com/asset/?id=6034267994";
		["sports_volleyball"] = "http://www.roblox.com/asset/?id=6034227139";
		["domain"] = "http://www.roblox.com/asset/?id=6034275722";
		["emoji_objects"] = "http://www.roblox.com/asset/?id=6034281900";
		["ios_share"] = "http://www.roblox.com/asset/?id=6034281941";
		["history_edu"] = "http://www.roblox.com/asset/?id=6034281934";
		["share"] = "http://www.roblox.com/asset/?id=6034230648";
		["military_tech"] = "http://www.roblox.com/asset/?id=6034295711";
		["sports_kabaddi"] = "http://www.roblox.com/asset/?id=6034227141";
		["cake"] = "http://www.roblox.com/asset/?id=6034295702";
		["engineering"] = "http://www.roblox.com/asset/?id=6034281908";
		["emoji_food_beverage"] = "http://www.roblox.com/asset/?id=6034304883";
		["notifications_none"] = "http://www.roblox.com/asset/?id=6034308947";
		["emoji_people"] = "http://www.roblox.com/asset/?id=6034281904";
		["thumb_down_alt"] = "http://www.roblox.com/asset/?id=6034227069";
		["sentiment_very_satisfied"] = "http://www.roblox.com/asset/?id=6034230650";
		["nights_stay"] = "http://www.roblox.com/asset/?id=6034304881";
		["reduce_capacity"] = "http://www.roblox.com/asset/?id=6034268013";
		["add_moderator"] = "http://www.roblox.com/asset/?id=6034295699";
		["science"] = "http://www.roblox.com/asset/?id=6034230640";
		["pages"] = "http://www.roblox.com/asset/?id=6034304892";
		["sentiment_satisfied"] = "http://www.roblox.com/asset/?id=6034230668";
		["plus_one"] = "http://www.roblox.com/asset/?id=6034268012";
		["party_mode"] = "http://www.roblox.com/asset/?id=6034287521";
		["person_remove"] = "http://www.roblox.com/asset/?id=6034267996";
		["single_bed"] = "http://www.roblox.com/asset/?id=6034230651";
		["mood"] = "http://www.roblox.com/asset/?id=6034295704";
		["public"] = "http://www.roblox.com/asset/?id=6034287522";
		["sports_rugby"] = "http://www.roblox.com/asset/?id=6034227073";
		["sports_handball"] = "http://www.roblox.com/asset/?id=6034227074";
		["person_add_alt_1"] = "http://www.roblox.com/asset/?id=6034287519";
		["people_alt"] = "http://www.roblox.com/asset/?id=6034287518";
		["notifications_off"] = "http://www.roblox.com/asset/?id=6034304894";
		["whatshot"] = "http://www.roblox.com/asset/?id=6034287525";
		["emoji_transportation"] = "http://www.roblox.com/asset/?id=6034281894";
		["outdoor_grill"] = "http://www.roblox.com/asset/?id=6034304900";
		["sentiment_very_dissatisfied"] = "http://www.roblox.com/asset/?id=6034230659";
		["masks"] = "http://www.roblox.com/asset/?id=6034295710";
		["incognito"] = "http://www.roblox.com/asset/?id=6034311165";
		["luggage"] = "http://www.roblox.com/asset/?id=6034295708";
		["sports_motorsports"] = "http://www.roblox.com/asset/?id=6034227071";
		["sports_esports"] = "http://www.roblox.com/asset/?id=6034227061";
		["location_city"] = "http://www.roblox.com/asset/?id=6034304889";
		["sports_golf"] = "http://www.roblox.com/asset/?id=6034227060";
		["sentiment_dissatisfied"] = "http://www.roblox.com/asset/?id=6034230637";
		["no_luggage"] = "http://www.roblox.com/asset/?id=6034304891";
		["fireplace"] = "http://www.roblox.com/asset/?id=6034281910";
		["emoji_nature"] = "http://www.roblox.com/asset/?id=6034281896";
		["group"] = "http://www.roblox.com/asset/?id=6034281901";
		["thumb_up_alt"] = "http://www.roblox.com/asset/?id=6034227076";
		["sports_tennis"] = "http://www.roblox.com/asset/?id=6034227068";
		["facebook"] = "http://www.roblox.com/asset/?id=6034281898";
		["sports_mma"] = "http://www.roblox.com/asset/?id=6034227072";
		["person_outline"] = "http://www.roblox.com/asset/?id=6034268008";
		["sports_baseball"] = "http://www.roblox.com/asset/?id=6034230652";
		["sports_cricket"] = "http://www.roblox.com/asset/?id=6034230660";
		["people_outline"] = "http://www.roblox.com/asset/?id=6034287528";
		["notifications_paused"] = "http://www.roblox.com/asset/?id=6034304896";
		["emoji_emotions"] = "http://www.roblox.com/asset/?id=6034275731";
		["follow_the_signs"] = "http://www.roblox.com/asset/?id=6034281911";
		["sanitizer"] = "http://www.roblox.com/asset/?id=6034287586";
		["self_improvement"] = "http://www.roblox.com/asset/?id=6034230634";
		["notifications"] = "http://www.roblox.com/asset/?id=6034308946";
		["public_off"] = "http://www.roblox.com/asset/?id=6034287538";
		["recommend"] = "http://www.roblox.com/asset/?id=6034287524";
		["sports_football"] = "http://www.roblox.com/asset/?id=6034227067";
		["sports_hockey"] = "http://www.roblox.com/asset/?id=6034227064";
		["school"] = "http://www.roblox.com/asset/?id=6034230641";
		["connect_without_contact"] = "http://www.roblox.com/asset/?id=6034275800";
		["sports"] = "http://www.roblox.com/asset/?id=6034230647";
		["construction"] = "http://www.roblox.com/asset/?id=6034275725";
		["inventory"] = "http://www.roblox.com/asset/?id=6035056487";
		["add_box"] = "http://www.roblox.com/asset/?id=6035047375";
		["how_to_reg"] = "http://www.roblox.com/asset/?id=6035053288";
		["unarchive"] = "http://www.roblox.com/asset/?id=6035078921";
		["block_flipped"] = "http://www.roblox.com/asset/?id=6035047378";
		["file_copy"] = "http://www.roblox.com/asset/?id=6035053293";
		["bolt"] = "http://www.roblox.com/asset/?id=6035047381";
		["remove_circle_outline"] = "http://www.roblox.com/asset/?id=6035067843";
		["move_to_inbox"] = "http://www.roblox.com/asset/?id=6035067838";
		["save_alt"] = "http://www.roblox.com/asset/?id=6035067842";
		["weekend"] = "http://www.roblox.com/asset/?id=6035078894";
		["where_to_vote"] = "http://www.roblox.com/asset/?id=6035078913";
		["biotech"] = "http://www.roblox.com/asset/?id=6035047385";
		["report_off"] = "http://www.roblox.com/asset/?id=6035067830";
		["clear"] = "http://www.roblox.com/asset/?id=6035047409";
		["redo"] = "http://www.roblox.com/asset/?id=6035056483";
		["link"] = "http://www.roblox.com/asset/?id=6035056475";
		["drafts"] = "http://www.roblox.com/asset/?id=6035053297";
		["push_pin"] = "http://www.roblox.com/asset/?id=6035056481";
		["reply"] = "http://www.roblox.com/asset/?id=6035067844";
		["undo"] = "http://www.roblox.com/asset/?id=6035078896";
		["archive"] = "http://www.roblox.com/asset/?id=6035047379";
		["add"] = "http://www.roblox.com/asset/?id=6035047377";
		["insights"] = "http://www.roblox.com/asset/?id=6035067839";
		["flag"] = "http://www.roblox.com/asset/?id=6035053279";
		["save"] = "http://www.roblox.com/asset/?id=6035067857";
		["text_format"] = "http://www.roblox.com/asset/?id=6035078890";
		["content_cut"] = "http://www.roblox.com/asset/?id=6035053280";
		["ballot"] = "http://www.roblox.com/asset/?id=6035047386";
		["remove"] = "http://www.roblox.com/asset/?id=6035067836";
		["calculate"] = "http://www.roblox.com/asset/?id=6035047384";
		["report"] = "http://www.roblox.com/asset/?id=6035067826";
		["markunread"] = "http://www.roblox.com/asset/?id=6035056476";
		["delete_sweep"] = "http://www.roblox.com/asset/?id=6035053301";
		["gesture"] = "http://www.roblox.com/asset/?id=6035053287";
		["link_off"] = "http://www.roblox.com/asset/?id=6035056484";
		["forward"] = "http://www.roblox.com/asset/?id=6035053298";
		["reply_all"] = "http://www.roblox.com/asset/?id=6035067824";
		["how_to_vote"] = "http://www.roblox.com/asset/?id=6035053295";
		["square_foot"] = "http://www.roblox.com/asset/?id=6035078918";
		["outlined_flag"] = "http://www.roblox.com/asset/?id=6035056486";
		["add_circle"] = "http://www.roblox.com/asset/?id=6035047380";
		["stacked_bar_chart"] = "http://www.roblox.com/asset/?id=6035078892";
		["policy"] = "http://www.roblox.com/asset/?id=6035056512";
		["backspace"] = "http://www.roblox.com/asset/?id=6035047397";
		["sort"] = "http://www.roblox.com/asset/?id=6035078888";
		["content_paste"] = "http://www.roblox.com/asset/?id=6035053285";
		["low_priority"] = "http://www.roblox.com/asset/?id=6035056491";
		["font_download"] = "http://www.roblox.com/asset/?id=6035053275";
		["shield"] = "http://www.roblox.com/asset/?id=6035078889";
		["waves"] = "http://www.roblox.com/asset/?id=6035078898";
		["select_all"] = "http://www.roblox.com/asset/?id=6035067834";
		["dynamic_feed"] = "http://www.roblox.com/asset/?id=6035053289";
		["mail"] = "http://www.roblox.com/asset/?id=6035056477";
		["amp_stories"] = "http://www.roblox.com/asset/?id=6035047382";
		["filter_list"] = "http://www.roblox.com/asset/?id=6035053294";
		["send"] = "http://www.roblox.com/asset/?id=6035067832";
		["create"] = "http://www.roblox.com/asset/?id=6035053304";
		["stream"] = "http://www.roblox.com/asset/?id=6035078897";
		["next_week"] = "http://www.roblox.com/asset/?id=6035067835";
		["inbox"] = "http://www.roblox.com/asset/?id=6035067831";
		["add_link"] = "http://www.roblox.com/asset/?id=6035047374";
		["content_copy"] = "http://www.roblox.com/asset/?id=6035053278";
		["remove_circle"] = "http://www.roblox.com/asset/?id=6035067837";
		["add_circle_outline"] = "http://www.roblox.com/asset/?id=6035047391";
		["block"] = "http://www.roblox.com/asset/?id=6035047387";
		["tag"] = "http://www.roblox.com/asset/?id=6035078895";
		["beach_access"] = "http://www.roblox.com/asset/?id=6035107923";
		["stroller"] = "http://www.roblox.com/asset/?id=6035161535";
		["family_restroom"] = "http://www.roblox.com/asset/?id=6035121916";
		["corporate_fare"] = "http://www.roblox.com/asset/?id=6035121908";
		["no_meeting_room"] = "http://www.roblox.com/asset/?id=6035153649";
		["do_not_touch"] = "http://www.roblox.com/asset/?id=6035121915";
		["ac_unit"] = "http://www.roblox.com/asset/?id=6035107929";
		["business_center"] = "http://www.roblox.com/asset/?id=6035107933";
		["spa"] = "http://www.roblox.com/asset/?id=6035153639";
		["no_flash"] = "http://www.roblox.com/asset/?id=6035145424";
		["no_cell"] = "http://www.roblox.com/asset/?id=6035145376";
		["room_service"] = "http://www.roblox.com/asset/?id=6035153648";
		["tapas"] = "http://www.roblox.com/asset/?id=6035161533";
		["microwave"] = "http://www.roblox.com/asset/?id=6035145367";
		["meeting_room"] = "http://www.roblox.com/asset/?id=6035145361";
		["wash"] = "http://www.roblox.com/asset/?id=6035161540";
		["escalator"] = "http://www.roblox.com/asset/?id=6035121939";
		["house_siding"] = "http://www.roblox.com/asset/?id=6035145393";
		["food_bank"] = "http://www.roblox.com/asset/?id=6035121921";
		["foundation"] = "http://www.roblox.com/asset/?id=6035121918";
		["elevator"] = "http://www.roblox.com/asset/?id=6035121912";
		["room_preferences"] = "http://www.roblox.com/asset/?id=6035153642";
		["do_not_step"] = "http://www.roblox.com/asset/?id=6035121910";
		["free_breakfast"] = "http://www.roblox.com/asset/?id=6035145363";
		["house"] = "http://www.roblox.com/asset/?id=6035145364";
		["child_care"] = "http://www.roblox.com/asset/?id=6035107927";
		["night_shelter"] = "http://www.roblox.com/asset/?id=6035145378";
		["child_friendly"] = "http://www.roblox.com/asset/?id=6035121942";
		["checkroom"] = "http://www.roblox.com/asset/?id=6035107931";
		["hot_tub"] = "http://www.roblox.com/asset/?id=6035145382";
		["dry"] = "http://www.roblox.com/asset/?id=6035121909";
		["charging_station"] = "http://www.roblox.com/asset/?id=6035107925";
		["all_inclusive"] = "http://www.roblox.com/asset/?id=6035107920";
		["bento"] = "http://www.roblox.com/asset/?id=6035107924";
		["no_backpack"] = "http://www.roblox.com/asset/?id=6035145368";
		["storefront"] = "http://www.roblox.com/asset/?id=6035161534";
		["no_food"] = "http://www.roblox.com/asset/?id=6035145372";
		["backpack"] = "http://www.roblox.com/asset/?id=6035107928";
		["stairs"] = "http://www.roblox.com/asset/?id=6035153637";
		["carpenter"] = "http://www.roblox.com/asset/?id=6035107955";
		["no_stroller"] = "http://www.roblox.com/asset/?id=6035153661";
		["roofing"] = "http://www.roblox.com/asset/?id=6035153656";
		["umbrella"] = "http://www.roblox.com/asset/?id=6035161550";
		["sports_bar"] = "http://www.roblox.com/asset/?id=6035153638";
		["apartment"] = "http://www.roblox.com/asset/?id=6035107922";
		["smoke_free"] = "http://www.roblox.com/asset/?id=6035153647";
		["pool"] = "http://www.roblox.com/asset/?id=6035153655";
		["bathtub"] = "http://www.roblox.com/asset/?id=6035107939";
		["no_drinks"] = "http://www.roblox.com/asset/?id=6035145390";
		["escalator_warning"] = "http://www.roblox.com/asset/?id=6035121930";
		["wheelchair_pickup"] = "http://www.roblox.com/asset/?id=6035161536";
		["smoking_rooms"] = "http://www.roblox.com/asset/?id=6035153636";
		["rice_bowl"] = "http://www.roblox.com/asset/?id=6035153662";
		["tty"] = "http://www.roblox.com/asset/?id=6035161541";
		["no_photography"] = "http://www.roblox.com/asset/?id=6035153664";
		["casino"] = "http://www.roblox.com/asset/?id=6035107936";
		["fence"] = "http://www.roblox.com/asset/?id=6035121923";
		["grass"] = "http://www.roblox.com/asset/?id=6035145359";
		["countertops"] = "http://www.roblox.com/asset/?id=6035121914";
		["kitchen"] = "http://www.roblox.com/asset/?id=6035145362";
		["golf_course"] = "http://www.roblox.com/asset/?id=6035145423";
		["soap"] = "http://www.roblox.com/asset/?id=6035153645";
		["water_damage"] = "http://www.roblox.com/asset/?id=6035161563";
		["airport_shuttle"] = "http://www.roblox.com/asset/?id=6035107921";
		["fitness_center"] = "http://www.roblox.com/asset/?id=6035121907";
		["baby_changing_station"] = "http://www.roblox.com/asset/?id=6035107930";
		["fire_extinguisher"] = "http://www.roblox.com/asset/?id=6035121913";
		["sparkle"] = "http://www.roblox.com/asset/?id=4483362748"
	}
}

-- Other Variables
local request = (syn and syn.request) or (http and http.request) or http_request or nil

-- Resolve executor globals (writefile/getcustomasset live on _G / getgenv / syn, not always as locals).
local function LunaResolveExecFn(...)
	local names = {...}
	for i = 1, #names do
		local n = names[i]
		if type(_G) == "table" and type(_G[n]) == "function" then
			return _G[n]
		end
	end
	if type(getgenv) == "function" then
		local g = getgenv()
		if type(g) == "table" then
			for i = 1, #names do
				local fn = g[names[i]]
				if type(fn) == "function" then return fn end
			end
		end
	end
	if type(syn) == "table" then
		for i = 1, #names do
			local fn = syn[names[i]]
			if type(fn) == "function" then return fn end
		end
	end
	if type(fluxus) == "table" then
		for i = 1, #names do
			local fn = fluxus[names[i]]
			if type(fn) == "function" then return fn end
		end
	end
	if type(getfenv) == "function" then
		local ok, env = pcall(getfenv, 0)
		if ok and type(env) == "table" then
			for i = 1, #names do
				local fn = env[names[i]]
				if type(fn) == "function" then return fn end
			end
		end
	end
	return nil
end

local LunaWriteFile = LunaResolveExecFn("writefile", "write_file")
local LunaReadFile = LunaResolveExecFn("readfile", "read_file")
local LunaGetCustomAsset = LunaResolveExecFn("getcustomasset", "getsynasset", "getsynasset_async")

local function LunaHttpHeaders()
	return {
		["Accept"] = "application/json, text/plain, */*",
		["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
	}
end

-- Safe HTTP for Script Searcher / Music Player (avoids JSONDecode on HTML error pages).
local function LunaHttpRequest(url)
	if request then
		local ok, res = pcall(function()
			return request({Url = url, Method = "GET", Headers = LunaHttpHeaders()})
		end)
		if ok and res then
			local body = res.Body or res.body
			local code = res.StatusCode or res.status or res.Status
			if body and tostring(body) ~= "" then
				return tostring(body), code
			end
			return nil, code
		end
	end
	local ok, body = pcall(function()
		return game:HttpGet(url)
	end)
	if ok and body and body ~= "" then
		return body, 200
	end
	return nil, nil
end

local function LunaHttpGet(url)
	local body = LunaHttpRequest(url)
	return body
end

local function LunaHttpJSON(url)
	local body, code = LunaHttpRequest(url)
	if not body then
		return nil, "Request failed (enable HTTP / use an executor with request)"
	end
	if code and tonumber(code) and tonumber(code) ~= 200 then
		return nil, "HTTP " .. tostring(code)
	end
	body = body:gsub("^%s+", ""):gsub("^%x%x%x%x", "")
	local first = body:sub(1, 1)
	if first ~= "{" and first ~= "[" then
		local snippet = body:sub(1, 120):gsub("%s+", " ")
		return nil, "Not JSON: " .. snippet
	end
	local ok, decoded = pcall(function()
		return HttpService:JSONDecode(body)
	end)
	if ok then
		return decoded
	end
	return nil, "JSON parse: " .. tostring(decoded)
end

local function LunaDownloadBytes(url)
	if request then
		local ok, res = pcall(function()
			return request({Url = url, Method = "GET"})
		end)
		if ok and res then
			local body = res.Body or res.body
			if body and #tostring(body) > 0 then
				return body
			end
		end
	end
	local ok, body = pcall(function()
		return game:HttpGet(url)
	end)
	if ok and body then return body end
	return nil
end

local function LunaPlaySoundFromUrl(sound, url, cacheName)
	cacheName = cacheName or "SolaraHub_track.mp3"
	local writeFn = LunaWriteFile or LunaResolveExecFn("writefile", "write_file")
	local assetFn = LunaGetCustomAsset or LunaResolveExecFn("getcustomasset", "getsynasset")
	if not writeFn or not assetFn then
		return false, "writefile/getcustomasset not found in executor"
	end
	local bytes = LunaDownloadBytes(url)
	if not bytes then
		return false, "Could not download audio"
	end
	local okW, errW = pcall(writeFn, cacheName, bytes)
	if not okW then
		return false, "writefile: " .. tostring(errW)
	end
	local okA, assetId = pcall(assetFn, cacheName)
	if not okA or not assetId then
		return false, "getcustomasset: " .. tostring(assetId)
	end
	sound.SoundId = assetId
	sound:Play()
	return true
end

local PIPED_API_HOSTS = {
	"https://pipedapi.kavin.rocks",
	"https://pipedapi.adminforge.de",
	"https://api.piped.projectsegfau.lt",
}

local tweeninfo = TweenInfo.new(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
local PresetGradients = {
	["Nightlight (Classic)"] = {Color3.fromRGB(147, 255, 239), Color3.fromRGB(201,211,233), Color3.fromRGB(255, 167, 227)},
	["Nightlight (Neo)"] = {Color3.fromRGB(117, 164, 206), Color3.fromRGB(123, 201, 201), Color3.fromRGB(224, 138, 175)},
	Starlight = {Color3.fromRGB(147, 255, 239), Color3.fromRGB(181, 206, 241), Color3.fromRGB(214, 158, 243)},
	Solar = {Color3.fromRGB(242, 157, 76), Color3.fromRGB(240, 179, 81), Color3.fromRGB(238, 201, 86)},
	Sparkle = {Color3.fromRGB(199, 130, 242), Color3.fromRGB(221, 130, 238), Color3.fromRGB(243, 129, 233)},
	Lime = {Color3.fromRGB(170, 255, 127), Color3.fromRGB(163, 220, 138), Color3.fromRGB(155, 185, 149)},
	Vine = {Color3.fromRGB(0, 191, 143), Color3.fromRGB(0, 126, 94), Color3.fromRGB(0, 61, 46)},
	Cherry = {Color3.fromRGB(148, 54, 54), Color3.fromRGB(168, 67, 70), Color3.fromRGB(188, 80, 86)},
	Daylight = {Color3.fromRGB(51, 156, 255), Color3.fromRGB(89, 171, 237), Color3.fromRGB(127, 186, 218)},
	Blossom = {Color3.fromRGB(255, 165, 243), Color3.fromRGB(213, 129, 231), Color3.fromRGB(170, 92, 218)},
}

local IconCache = {}

-- Lucide loader: fetch once, cache forever (avoid hot-loop HTTP allocations)
local LucideIconSet = nil
local LucideTriedLoad = false
local function GetLucideIconSet()
    if LucideIconSet then return LucideIconSet end
    if LucideTriedLoad then return nil end
    LucideTriedLoad = true

    if isStudio then
        LucideIconSet = IconModule.Lucide
        return LucideIconSet
    end

    local ok, fetched = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/latte-soft/lucide-roblox/refs/heads/master/lib/Icons.luau")
    end)
    if not ok or type(fetched) ~= "string" or #fetched == 0 then
        return nil
    end

    local okLoad, loaded = pcall(function()
        return loadstring(fetched)()
    end)
    if not okLoad or type(loaded) ~= "table" then
        return nil
    end

    LucideIconSet = loaded
    return LucideIconSet
end

local function GetIcon(icon, source)
    if not icon or not source then
        return nil
    end

    local cacheKey = tostring(icon) .. "_" .. tostring(source)
    if IconCache[cacheKey] then
        return IconCache[cacheKey]
    end

    local result

    if source == "Custom" then
        result = "rbxassetid://" .. tostring(icon)
    elseif source == "Lucide" then
        -- Credit: Latte Softworks
        local icons = GetLucideIconSet()
        if icons then
            local key = string.match(string.lower(tostring(icon)), "^%s*(.*)%s*$")
            local sizedicons = icons['48px']
            local r = sizedicons and sizedicons[key]
            if not r then
                warn("Lucide Icons: Failed to find icon by the name of \"" .. tostring(icon) .. "\"")
                return nil
            end

            local rirs = r[2]
            local riro = r[3]

            if type(r[1]) ~= "number" or type(rirs) ~= "table" or type(riro) ~= "table" then
                warn("Lucide Icons: Invalid asset entry for \"" .. tostring(icon) .. "\"")
                return nil
            end

            result = {
                id = r[1],
                imageRectSize = Vector2.new(rirs[1], rirs[2]),
                imageRectOffset = Vector2.new(riro[1], riro[2]),
            }
        else
            result = "rbxassetid://10723434557"
        end
    else
        if icon ~= nil and IconModule[source] then
            local sourceicon = IconModule[source]
            result = sourceicon[icon]
        else
            result = nil
        end
    end

    if result then
        IconCache[cacheKey] = result
    end

    return result
end

-- Applies an icon result (string id or Lucide rect table) to an ImageLabel/ImageButton
local function ApplyIcon(imageLabel, iconData)
    if not imageLabel or not iconData then return end
    if type(iconData) == "table" then
        imageLabel.Image = "rbxassetid://" .. tostring(iconData.id)
        imageLabel.ImageRectSize = iconData.imageRectSize or Vector2.new(0, 0)
        imageLabel.ImageRectOffset = iconData.imageRectOffset or Vector2.new(0, 0)
    else
        imageLabel.Image = tostring(iconData)
        imageLabel.ImageRectSize = Vector2.new(0, 0)
        imageLabel.ImageRectOffset = Vector2.new(0, 0)
    end
end

-- Generates a random, generic instance name to reduce anti-cheat name-scan footprint.
-- We avoid keywords like "ESP", "Aimbot" leaking via Instance.Name.
local _LunaRandom = Random.new()
local function RandomName()
    local hex = "0123456789abcdef"
    local out = {}
    for i = 1, 16 do
        local n = _LunaRandom:NextInteger(1, #hex)
        out[i] = hex:sub(n, n)
    end
    return "_" .. table.concat(out)
end

-- Forward-declared at module scope so the callback-error path (which references
-- all possible Settings tables via _LunaErrName) doesn't produce "undefined global"
-- diagnostics. Each Create* function shadows these with its local parameter of
-- the same name, so the actual lookup still resolves to the correct table.
local BindSettings, ButtonSettings, SliderSettings, ToggleSettings,
    InputSettings, DropdownSettings, ColorPickerSettings

-- Returns the first non-nil Settings.Name from the provided argument list.
-- Used by the callback-error path so that the Notification works regardless of
-- which element (Button/Slider/Toggle/Bind/Input/Dropdown/ColorPicker) triggered it.
local function _LunaErrName(...)
    local n = select("#", ...)
    for i = 1, n do
        local s = select(i, ...)
        if type(s) == "table" and type(s.Name) == "string" then
            return s.Name
        end
    end
    return "Unknown"
end

-- Shown on every callback failure so users know where to report bugs.
local LUNA_CALLBACK_ERR_FOOTER = " Report this in Discord: discord.gg/DPCKQRJmdF"

local function LunaCallbackErrorNotification(response, ...)
    Luna:Notification({
        Title = "Callback Error",
        Content = "Luna Interface Suite | " .. _LunaErrName(...) .. " | " .. tostring(response) .. LUNA_CALLBACK_ERR_FOOTER,
        Icon = "error",
    })
end

-- Detect "PC-like" environment: has a keyboard AND mouse. Phones/tablets typically
-- lack both. Laptops with a touchscreen still pass because they have keyboard+mouse.
local function IsDesktop()
    return UserInputService.KeyboardEnabled and UserInputService.MouseEnabled
end

-- Registers an element with the Window so SearchBar can find it. Also handles
-- the anti-cheat instance rename so the user-supplied display name doesn't
-- leak via Instance.Name. Safe to call multiple times for the same frame -
-- the search index is populated only once, but the random name + attribute
-- are refreshed on every call (useful when :Set() updates display name).
local function RegisterElement(window, frame, displayName, elementType, tabName)
    if not frame then return end
    pcall(function()
        frame.Name = RandomName()
    end)
    if displayName then
        frame:SetAttribute("LunaElementName", tostring(displayName))
    end
    if frame:GetAttribute("LunaRegistered") then return end
    frame:SetAttribute("LunaRegistered", true)
    if window and window._SearchIndex then
        table.insert(window._SearchIndex, {
            Name = tostring(displayName or "Unknown"),
            Type = tostring(elementType or "Element"),
            Frame = frame,
            Tab = tostring(tabName or ""),
        })
    end
end

-- ============================================================
-- Translator (whole-UI translation)
-- ============================================================
-- Uses Google Translate's free unofficial endpoint via game:HttpGet (or the
-- executor's request() if available). We snapshot every text element's
-- original English content into an attribute on first translation, then
-- replace it with the localised version. Switching back to "en" restores
-- the originals from the cached attribute.
local LunaTranslator = {
    Target = "en",
    Cache = {},      -- [targetCode][originalText] = translated
    External = nil,  -- optional user-supplied translator fn(text, target) -> string
    Watching = false,
}

-- Returns true if `obj` exposes a text property we should translate. Excludes
-- TextBoxes (typing fields) so the user's input isn't replaced mid-keystroke,
-- and any descendant explicitly marked LunaNoTranslate (e.g. AI chat bubbles).
local function _isTranslatableText(obj)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") then
        -- Walk parents looking for the opt-out flag so a single attribute on
        -- a container excludes the whole subtree.
        local cur = obj
        while cur and cur ~= game do
            if cur:GetAttribute("LunaNoTranslate") then return false end
            cur = cur.Parent
        end
        return true
    end
    return false
end

-- Template placeholder strings that must never be snapshotted as "originals".
local LUNA_TEMPLATE_PLACEHOLDERS = {
    ["button"] = true,
    ["slider"] = true,
    ["toggle"] = true,
    ["bind"] = true,
    ["input"] = true,
    ["dropdown"] = true,
    ["color picker"] = true,
    ["label"] = true,
    ["paragraph"] = true,
    ["but with description"] = true,
    ["but with a description"] = true,
    ["но с описанием"] = true,
    ["section"] = true,
    ["tab"] = true,
}

local function _isStaleTemplateOriginal(orig, currentText)
    if type(orig) ~= "string" or type(currentText) ~= "string" then return false end
    if orig == currentText then return false end
    local key = orig:gsub("%s+", ""):lower()
    if LUNA_TEMPLATE_PLACEHOLDERS[key] then return true end
    if orig:lower():find("lorem ipsum", 1, true) then return true end
    return false
end

-- Should we skip translating a specific value? Numbers, single chars, URLs,
-- whitespace and asset IDs are pointless to send through the API.
local function _shouldTranslateValue(text)
    if type(text) ~= "string" then return false end
    local trimmed = text:gsub("%s+", "")
    if #trimmed < 2 then return false end
    if tonumber(trimmed) then return false end
    if trimmed:match("^rbxassetid://") then return false end
    if trimmed:match("^https?://") then return false end
    if trimmed:match("^%a+://") then return false end
    if LUNA_TEMPLATE_PLACEHOLDERS[trimmed:lower()] then return false end
    return true
end

-- Writes UI text and stamps the canonical English original for the translator.
local function LunaFindTitle(widget)
	if not widget then return nil end
	return widget:FindFirstChild("Title") or widget:FindFirstChild("TextLabel")
end

local function LunaFindBodyText(widget)
	if not widget then return nil end
	return widget:FindFirstChild("Text") or widget:FindFirstChild("InputBox")
		or widget:FindFirstChildWhichIsA("TextBox")
end

local function LunaFindStroke(widget)
	if not widget then return nil end
	return widget:FindFirstChildOfClass("UIStroke")
end

local function LunaTweenStroke(widget, props)
	local stroke = LunaFindStroke(widget)
	if stroke then tween(stroke, props) end
end

local function LunaSetText(obj, text)
    if not obj then return end
    text = tostring(text or "")
    obj.Text = text
    if text == "" or not _shouldTranslateValue(text) then
        obj:SetAttribute("LunaOriginalText", nil)
        obj:SetAttribute("LunaTranslated", nil)
    else
        obj:SetAttribute("LunaOriginalText", text)
        obj:SetAttribute("LunaTranslated", nil)
    end
end

local _LunaHttpRequest = (syn and syn.request) or (http and http.request) or http_request or request

-- Synchronous translation through Google Translate. Cached per-target.
local function _googleTranslate(text, target)
    if target == "en" then return text end
    if not _shouldTranslateValue(text) then return text end
    LunaTranslator.Cache[target] = LunaTranslator.Cache[target] or {}
    local cached = LunaTranslator.Cache[target][text]
    if cached then return cached end

    local url = string.format(
        "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl=%s&dt=t&q=%s",
        target, HttpService:UrlEncode(text)
    )

    local body
    if _LunaHttpRequest then
        local ok, res = pcall(function()
            return _LunaHttpRequest({ Url = url, Method = "GET" })
        end)
        if ok and res and (res.StatusCode == 200 or res.Success) then
            body = res.Body
        end
    end
    if not body then
        local ok, res = pcall(function() return game:HttpGet(url, true) end)
        if ok then body = res end
    end
    if not body then return text end

    local okDec, decoded = pcall(function() return HttpService:JSONDecode(body) end)
    if not okDec or type(decoded) ~= "table" or type(decoded[1]) ~= "table" then return text end

    local parts = {}
    for _, chunk in ipairs(decoded[1]) do
        if type(chunk) == "table" and type(chunk[1]) == "string" then
            table.insert(parts, chunk[1])
        end
    end
    local result = table.concat(parts)
    if result == "" then return text end
    LunaTranslator.Cache[target][text] = result
    return result
end

-- Public translate. Uses External fn if set (lets the host script pick a
-- different provider) and falls back to Google Translate.
local function LunaTranslate(text, target)
    target = target or LunaTranslator.Target or "en"
    if target == "en" then return text end
    if LunaTranslator.External then
        local ok, result = pcall(LunaTranslator.External, text, target)
        if ok and type(result) == "string" and result ~= "" then return result end
    end
    return _googleTranslate(text, target)
end

-- Translate a single GUI text instance in place. Stores the original in an
-- attribute so we can restore it without re-querying. We also track the LAST
-- translation we wrote ("LunaTranslated"): if obj.Text differs from it AND
-- from the original, external code has rewritten the label since we last
-- touched it, so re-snapshot the new original. This is what makes labels
-- created from cloned templates (where the clone briefly carries "Button"
-- before the host script writes the real name) translate correctly.
local function _translateOne(obj, target)
    if not _isTranslatableText(obj) then return end
    local orig = obj:GetAttribute("LunaOriginalText")
    local lastTranslated = obj:GetAttribute("LunaTranslated")
    if _isStaleTemplateOriginal(orig, obj.Text) then
        orig = nil
        obj:SetAttribute("LunaOriginalText", nil)
        obj:SetAttribute("LunaTranslated", nil)
    end
    if orig == nil then
        orig = obj.Text
        if not _shouldTranslateValue(orig) then return end
        obj:SetAttribute("LunaOriginalText", orig)
    elseif lastTranslated and obj.Text ~= lastTranslated and obj.Text ~= orig then
        -- External rewrite detected. Trust the new text as the real original.
        orig = obj.Text
        if not _shouldTranslateValue(orig) then
            obj:SetAttribute("LunaOriginalText", nil)
            obj:SetAttribute("LunaTranslated", nil)
            return
        end
        obj:SetAttribute("LunaOriginalText", orig)
    end
    if target == "en" then
        if obj.Text ~= orig then obj.Text = orig end
        obj:SetAttribute("LunaTranslated", nil)
        return
    end
    local translated = LunaTranslate(orig, target)
    if translated and obj.Text ~= translated then
        obj.Text = translated
        obj:SetAttribute("LunaTranslated", translated)
    end
end

-- Walks a root Instance and translates every descendant text element.
-- Uses a worker pool to fire many HTTP requests in parallel; on a typical
-- UI this brings a full retranslate from minutes to ~10-20s.
local LunaTranslateWorkers = 14
local function _translateTree(root, target)
    if not root then return end
    -- Pre-collect & dedupe queue. Objects sharing the same source text only
    -- need the API to translate them once - the cache handles the rest.
    local queue = {}
    for _, descendant in ipairs(root:GetDescendants()) do
        if _isTranslatableText(descendant) then
            table.insert(queue, descendant)
        end
    end
    if #queue == 0 then return end

    -- If target is English we don't hit the network at all - just restore
    -- originals in one synchronous sweep.
    if target == "en" then
        task.spawn(function()
            for i, obj in ipairs(queue) do
                if obj and obj.Parent then pcall(_translateOne, obj, target) end
                if i % 80 == 0 then task.wait() end
            end
        end)
        return
    end

    -- Pre-warm the cache by translating each unique English string ONCE in
    -- parallel. This avoids 5 different copies of "Settings" each issuing
    -- their own HTTP request.
    local unique = {}
    for _, obj in ipairs(queue) do
        local orig = obj:GetAttribute("LunaOriginalText") or obj.Text
        if _shouldTranslateValue(orig) and not unique[orig] then
            unique[orig] = true
        end
    end
    local uniqueList = {}
    for text in pairs(unique) do table.insert(uniqueList, text) end

    local idx = 0
    local function nextText()
        idx = idx + 1
        return uniqueList[idx]
    end

    local doneFlag = Instance.new("BindableEvent")
    local active = math.min(LunaTranslateWorkers, math.max(1, #uniqueList))
    if active == 0 then doneFlag:Fire(); doneFlag:Destroy(); doneFlag = nil end

    for w = 1, active do
        task.spawn(function()
            while true do
                local text = nextText()
                if not text then break end
                pcall(LunaTranslate, text, target)
            end
            active = active - 1
            if active == 0 and doneFlag then doneFlag:Fire() end
        end)
    end

    -- Once the cache is hot, applying translations to actual instances is
    -- effectively free (no HTTP). Stream them out in a small loop so we
    -- still yield occasionally and don't freeze the game thread.
    task.spawn(function()
        if doneFlag then
            doneFlag.Event:Wait()
            doneFlag:Destroy()
        end
        for i, obj in ipairs(queue) do
            if obj and obj.Parent then
                pcall(_translateOne, obj, target)
            end
            if i % 60 == 0 then task.wait() end
        end
    end)
end

-- Catch newly added UI elements so they get translated too. Connected once
-- the first time SetLanguage activates a non-English target. We wait a few
-- frames before snapshotting so the host script's clone+Text-assignment can
-- finish - otherwise we'd cache the template's placeholder ("Button") as the
-- "original" and forever replace real labels with the translated placeholder.
local function _watchNewText(rootGui)
    if LunaTranslator.Watching then return end
    LunaTranslator.Watching = true
    rootGui.DescendantAdded:Connect(function(obj)
        if LunaTranslator.Target == "en" then return end
        if not _isTranslatableText(obj) then return end
        task.delay(0.15, function()
            if obj and obj.Parent then _translateOne(obj, LunaTranslator.Target) end
        end)
    end)
end

local function RemoveTable(tablre, value)
    for i = #tablre, 1, -1 do
        if tostring(tablre[i]) == tostring(value) then
            table.remove(tablre, i)
            break
        end
    end
end

local function Kwargify(defaults, passed)
	for i, v in pairs(defaults) do
		if passed[i] == nil then
			passed[i] = v
		end
	end
	return passed
end

local function PackColor(Color)
	return {R = Color.R * 255, G = Color.G * 255, B = Color.B * 255}
end    

local function UnpackColor(Color)
	return Color3.fromRGB(Color.R, Color.G, Color.B)
end

function tween(object, goal, callback, tweenin)
	local tween = TweenService:Create(object,tweenin or tweeninfo, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

local function LunaTweenDropdownOption(list, optionName, props)
	if type(optionName) ~= "string" or optionName == "" or not list then return end
	local item = list:FindFirstChild(optionName)
	if item then
		tween(item, props)
	end
end

local function LunaSanitizeDropdownCurrent(options, current, multiple)
	local optSet = {}
	if type(options) == "table" then
		for _, o in pairs(options) do
			if type(o) == "string" and o ~= "" then
				optSet[o] = true
			end
		end
	end
	local names = {}
	for o in pairs(optSet) do
		table.insert(names, o)
	end
	table.sort(names)
	if #names == 0 then
		return multiple and {} or nil
	end
	if multiple then
		local out = {}
		if type(current) == "table" then
			for _, c in ipairs(current) do
				if type(c) == "string" and optSet[c] then
					table.insert(out, c)
				end
			end
		elseif type(current) == "string" and optSet[current] then
			table.insert(out, current)
		end
		return out
	end
	local pick = type(current) == "table" and current[1] or current
	if type(pick) == "string" and optSet[pick] then
		return pick
	end
	return names[1]
end

-- Interface Management
local LunaUI = isStudio and script.Parent:WaitForChild("Luna UI") or game:GetObjects("rbxassetid://86467455075715")[1]

local SizeBleh = nil

local function Hide(Window, bind, notif)
	SizeBleh = Window.Size
	bind = string.split(tostring(bind), "Enum.KeyCode.")
	bind = bind[2]
	if notif then
		Luna:Notification({Title = "Interface Hidden", Content = "The interface has been hidden, you may reopen the interface by Pressing the UI Bind In Settings ("..tostring(bind)..")", Icon = "visibility_off"})
	end
	tween(Window, {BackgroundTransparency = 1})
	tween(Window.Elements, {BackgroundTransparency = 1})
	tween(Window.Line, {BackgroundTransparency = 1})
	tween(Window.Title.Title, {TextTransparency = 1})
	tween(Window.Title.subtitle, {TextTransparency = 1})
	tween(Window.Logo, {ImageTransparency = 1})
	tween(Window.Navigation.Line, {BackgroundTransparency = 1})

	for _, TopbarButton in ipairs(Window.Controls:GetChildren()) do
		if TopbarButton.ClassName == "Frame" then
			tween(TopbarButton, {BackgroundTransparency = 1})
			tween(TopbarButton.UIStroke, {Transparency = 1})
			tween(TopbarButton.ImageLabel, {ImageTransparency = 1})
			TopbarButton.Visible = false
		end
	end
	for _, tabbtn in ipairs(Window.Navigation.Tabs:GetChildren()) do
		if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "InActive Template" then
			TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
			TweenService:Create(tabbtn.ImageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
			TweenService:Create(tabbtn.DropShadowHolder.DropShadow, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
			TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
		end
	end

	task.wait(0.28)
	Window.Size = UDim2.new(0,0,0,0)
	Window.Parent.ShadowHolder.Visible = false
	task.wait()
	Window.Elements.Parent.Visible = false
	Window.Visible = false
end

-- Anti-cheat: clean up any previous instance(s) of our UI before reparenting the new one.
-- We match by the original ScreenGui name from the rbxasset ("Luna UI") because random
-- names can't be discovered across executions.
local OriginalUIName = LunaUI.Name
if gethui then
	for _, Interface in ipairs(gethui():GetChildren()) do
		if Interface ~= LunaUI and (Interface.Name == OriginalUIName or Interface:GetAttribute("LunaUI") == true) then
			pcall(function() Hide(Interface.SmartWindow) end)
			Interface.Enabled = false
			Interface.Name = RandomName()
			pcall(function() Interface:Destroy() end)
		end
	end
elseif not isStudio then
	for _, Interface in ipairs(CoreGui:GetChildren()) do
		if Interface ~= LunaUI and (Interface.Name == OriginalUIName or Interface:GetAttribute("LunaUI") == true) then
			pcall(function() Hide(Interface.SmartWindow) end)
			Interface.Enabled = false
			Interface.Name = RandomName()
			pcall(function() Interface:Destroy() end)
		end
	end
end

-- Tag the new ScreenGui with a non-string attribute (still discoverable to us, harder
-- to spot via simple name scans) and give it a random Instance.Name.
LunaUI:SetAttribute("LunaUI", true)
LunaUI.Name = RandomName()

if gethui then
	LunaUI.Parent = gethui()
elseif syn and syn.protect_gui then
	syn.protect_gui(LunaUI)
	LunaUI.Parent = CoreGui
elseif not isStudio and CoreGui:FindFirstChild("RobloxGui") then
	LunaUI.Parent = CoreGui:FindFirstChild("RobloxGui")
elseif not isStudio then
	LunaUI.Parent = CoreGui
end

LunaUI.Enabled = false
LunaUI.SmartWindow.Visible = false
LunaUI.Notifications.Template.Visible = false
LunaUI.DisplayOrder = 1000000000

local Main : Frame = LunaUI.SmartWindow
local Dragger = Main.Drag
local dragBar = LunaUI.Drag
local dragInteract = dragBar and dragBar.Interact or nil
local dragBarCosmetic = dragBar and dragBar.Drag or nil
-- Keep rescue handle at ScreenGui root (sibling of SmartWindow), never inside Main.
if dragBar and dragBar.Parent ~= LunaUI then
	dragBar.Parent = LunaUI
end

-- Rayfield-style offset: half the window height + padding (scales on resize).
local function getDragBarYOffset(mainFrame)
	if not mainFrame then return 255 end
	return math.floor(mainFrame.AbsoluteSize.Y * 0.5) + 14
end

-- Rescue handle tracks Main.Position. Only move the dragBar frame — never reposition
-- dragInteract with parent's UDim2 (that breaks hit-testing and made the handle dead).
local function syncDragBarPosition(mainFrame)
	if not dragBar or not mainFrame then return end
	local mp = mainFrame.Position
	local yOff = getDragBarYOffset(mainFrame)
	dragBar.AnchorPoint = Vector2.new(0.5, 0.5)
	dragBar.Position = UDim2.new(mp.X.Scale, mp.X.Offset, mp.Y.Scale, mp.Y.Offset + yOff)
	if dragBar.ZIndex < 100 then
		dragBar.ZIndex = 100
	end
end
local Elements = Main.Elements.Interactions
local LoadingFrame = Main.LoadingFrame
local Navigation = Main.Navigation
local Tabs = Navigation.Tabs
local Notifications = LunaUI.Notifications
local KeySystem : Frame = Main.KeySystem

-- Cached, repeatedly used in Luna:Notification hot path
local NotificationsListLayout = Notifications:FindFirstChild("UIListLayout")
local NotificationsPaddingOffset = (NotificationsListLayout and NotificationsListLayout.Padding.Offset) or 0

--[[ local function LoadConfiguration(Configuration, autoload)
 	local Data = HttpService:JSONDecode(Configuration)
 	local changed
 	local notified = false

 	-- Iterate through current UI elements' flags
 	for FlagName, Flag in pairs(Luna.Flags) do
 		local FlagValue = Data[FlagName]

 		if FlagValue then
 			task.spawn(function()
 				if Flag.Type == "ColorPicker" then
 					changed = true
 					Flag:Set(UnpackColor(FlagValue))
				else
 					if (Flag.CurrentValue or Flag.CurrentKeybind or Flag.CurrentOption or Flag.Color) ~= FlagValue then 
 						changed = true
 						Flag:Set(FlagValue) 	
 					end
 				end
 			end)
 		else
 			notified = true
 			Luna:Notification({Title = "Config Error", Content = "Luna was unable to load or find '"..FlagName.. "'' in the current script. Check ".. website .." for help.", Icon = "flag"})
 		end
 	end
 	if autoload and notified == false then
 		Luna:Notification({
 			Title = "Config Autoloaded",
 			Content = "The Configuration Has Been Automatically Loaded. Thank You For Using Luna Library",
 			Icon = "file-code-2",
 			ImageSource = "Lucide"
 		})
 	elseif notified == false then
 		Luna:Notification({
 			Title = "Config Loaded",
 			Content = "The Configuration Has Been Loaded. Thank You For Using Luna Library",
 			Icon = "file-code-2",
 			ImageSource = "Lucide"
 		})
 	end

 	return changed
 end

 local function SaveConfiguration(Configuration, ConfigFolder, hasRoot)
 	local Data = {}
 	for i,v in pairs(Luna.Flags) do
 		if v.Type == "ColorPicker" then
 			Data[i] = PackColor(v.Color)
 		else
 			Data[i] = v.CurrentValue or v.CurrentBind or v.CurrentOption or v.Color
 		end
 	end	
 	if hasRoot then
 		writefile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. Configuration .. ConfigurationExtension, tostring(HttpService:JSONEncode(Data)))
 	else
 		writefile(ConfigurationFolder .. "/" .. "/" .. ConfigFolder .. Configuration .. ConfigurationExtension, tostring(HttpService:JSONEncode(Data)))
 	end
 end

 local function SetAutoload(ConfigName, ConfigFolder, hasRoot)
 	if hasRoot then
 		writefile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. "autoload.txt", tostring(ConfigName) .. ConfigurationExtension)
 	else
 		writefile(ConfigurationFolder .. "/" .. "/" .. ConfigFolder .. "autoload.txt", tostring(ConfigName) .. ConfigurationExtension)
 	end
 end

 local function LoadAutoLoad(ConfigFolder, hasRoot)
 	local autoload = isfile(ConfigurationFolder .. "/" .. "/" .. ConfigFolder .. "autoload.txt")
 	if hasRoot then
 		autoload = isfile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. "autoload.txt")
 	end

 	if autoload then
 		if hasRoot then
 			LoadConfiguration(readfile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. readfile(ConfigurationFolder .. "/" .. hasRoot .. "/" .. ConfigFolder .. "/" .. "autoload.txt")), true)
 		else
 			LoadConfiguration(readfile(ConfigurationFolder .. "/" .. ConfigFolder .. "/" .. readfile(ConfigurationFolder .. "/" .. ConfigFolder .. "/" .. "autoload.txt")), true)
 		end
 	end
 end ]]

-- Shared window drag (top bar + rescue handle). Rayfield-style: RenderStepped while
-- LMB held, global InputEnded so release always stops the drag (no cursor stick).
local function Draggable(Bar, Window, enableTaptic, _tapticOffset)
	pcall(function()
		if not Bar or not Window then return end

		local dragging = false
		local relative = nil
		local inset = Vector2.zero
		local screenGui = Window:FindFirstAncestorWhichIsA("ScreenGui")
		if screenGui and screenGui.IgnoreGuiInset then
			inset = GuiService:GetGuiInset()
		end

		local function isPointerDown(input)
			local n = input.UserInputType.Name
			return n == "MouseButton1" or n == "Touch"
		end

		local function beginDrag()
			dragging = true
			relative = Window.AbsolutePosition + Window.AbsoluteSize * Window.AnchorPoint - UserInputService:GetMouseLocation()
			if enableTaptic and dragBarCosmetic then
				TweenService:Create(dragBarCosmetic, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 110, 0, 4), BackgroundTransparency = 0}):Play()
			end
		end

		local function endDrag()
			if not dragging then return end
			dragging = false
			if enableTaptic and dragBarCosmetic then
				TweenService:Create(dragBarCosmetic, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 4), BackgroundTransparency = 0.7}):Play()
				syncDragBarPosition(Window)
			end
		end

		if enableTaptic and dragBar then
			dragBar.MouseEnter:Connect(function()
				if not dragging and dragBarCosmetic then
					TweenService:Create(dragBarCosmetic, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0.5, Size = UDim2.new(0, 120, 0, 4)}):Play()
				end
			end)
			dragBar.MouseLeave:Connect(function()
				if not dragging and dragBarCosmetic then
					TweenService:Create(dragBarCosmetic, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0.7, Size = UDim2.new(0, 100, 0, 4)}):Play()
				end
			end)
		end

		local function hookDragTarget(gui)
			if not gui then return end
			gui.InputBegan:Connect(function(input)
				if not isPointerDown(input) then return end
				beginDrag()
			end)
		end

		hookDragTarget(Bar)
		if enableTaptic and dragBar and Bar ~= dragBar then
			hookDragTarget(dragBar)
		end

		UserInputService.InputEnded:Connect(function(input)
			if not dragging then return end
			if isPointerDown(input) then
				endDrag()
			end
		end)

		local dragTweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
		RunService.RenderStepped:Connect(function()
			if not dragging then return end
			local position = UserInputService:GetMouseLocation() + relative + inset
			TweenService:Create(Window, dragTweenInfo, {Position = UDim2.fromOffset(position.X, position.Y)}):Play()
			if enableTaptic and dragBar then
				local yOff = getDragBarYOffset(Window)
				TweenService:Create(dragBar, dragTweenInfo, {Position = UDim2.fromOffset(position.X, position.Y + yOff)}):Play()
			end
		end)
	end)
end

function Luna:Notification(data) -- Action e.g Open Messages
	task.spawn(function()
		data = Kwargify({
			Title = "Missing Title",
			Content = "Missing or Unknown Content",
			Icon = "view_in_ar",
			ImageSource = "Material"
		}, data or {})

		-- Notification Object Creation
		local newNotification = Notifications.Template:Clone()
		newNotification.Name = data.Title
		newNotification.Parent = Notifications
		newNotification.LayoutOrder = #Notifications:GetChildren()
		newNotification.Visible = false

		-- Set Data
		newNotification.Title.Text = data.Title
		newNotification.Description.Text = data.Content
		ApplyIcon(newNotification.Icon, GetIcon(data.Icon, data.ImageSource))

		-- Set initial transparency values
		newNotification.BackgroundTransparency = 1
		newNotification.Title.TextTransparency = 1
		newNotification.Description.TextTransparency = 1
		newNotification.UIStroke.Transparency = 1
		newNotification.Shadow.ImageTransparency = 1
		newNotification.Icon.ImageTransparency = 1
		newNotification.Icon.BackgroundTransparency = 1

		task.wait()

		-- Calculate textbounds and set initial values
		newNotification.Size = UDim2.new(1, 0, 0, -NotificationsPaddingOffset)

		newNotification.Icon.Size = UDim2.new(0, 28, 0, 28)
		newNotification.Icon.Position = UDim2.new(0, 16, 0.5, -1)

		newNotification.Visible = true

		newNotification.Description.Size = UDim2.new(1, -65, 0, math.huge)
		local bounds = newNotification.Description.TextBounds.Y + 55
		newNotification.Description.Size = UDim2.new(1,-65,0, bounds - 35)
		newNotification.Size = UDim2.new(1, 0, 0, -NotificationsPaddingOffset)
		TweenService:Create(newNotification, TweenInfo.new(0.6, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, 0, 0, bounds)}):Play()

		task.wait(0.15)
		TweenService:Create(newNotification, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.45}):Play()
		TweenService:Create(newNotification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

		task.wait(0.05)

		TweenService:Create(newNotification.Icon, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()

		task.wait(0.05)
		TweenService:Create(newNotification.Description, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0.35}):Play()
		TweenService:Create(newNotification.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 0.95}):Play()
		TweenService:Create(newNotification.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0.82}):Play()

		local waitDuration = math.min(math.max((#newNotification.Description.Text * 0.1) + 2.5, 3), 10)
		task.wait(data.Duration or waitDuration)

		newNotification.Icon.Visible = false
		TweenService:Create(newNotification, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
		TweenService:Create(newNotification.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
		TweenService:Create(newNotification.Shadow, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
		TweenService:Create(newNotification.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		TweenService:Create(newNotification.Description, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()

		TweenService:Create(newNotification, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, -90, 0, 0)}):Play()

		task.wait(1)

		TweenService:Create(newNotification, TweenInfo.new(1, Enum.EasingStyle.Exponential), {Size = UDim2.new(1, -90, 0, -NotificationsPaddingOffset)}):Play()

		newNotification.Visible = false
		newNotification:Destroy()
	end)
end

local function Unhide(Window, currentTab)
	Window.Size = SizeBleh
	-- Hide() sets Elements.Parent.Visible = false. Restore that here as well as
	-- Elements.Visible so the panel actually re-appears after a re-open.
	if Window.Elements and Window.Elements.Parent then
		Window.Elements.Parent.Visible = true
	end
	Window.Elements.Visible = true
	Window.Visible = true
	-- Restore the drop-shadow that Hide() turned off. Without this the window
	-- appears flat after re-opening with the keybind.
	if Window.Parent and Window.Parent:FindFirstChild("ShadowHolder") then
		Window.Parent.ShadowHolder.Visible = true
	end
	task.wait()
	tween(Window, {BackgroundTransparency = 0.2})
	tween(Window.Elements, {BackgroundTransparency = 0.08})
	tween(Window.Line, {BackgroundTransparency = 0})
	tween(Window.Title.Title, {TextTransparency = 0})
	tween(Window.Title.subtitle, {TextTransparency = 0})
	tween(Window.Logo, {ImageTransparency = 0})
	tween(Window.Navigation.Line, {BackgroundTransparency = 0})

	for _, TopbarButton in ipairs(Window.Controls:GetChildren()) do
		if TopbarButton.ClassName == "Frame" and TopbarButton.Name ~= "Theme" then
			TopbarButton.Visible = true
			tween(TopbarButton, {BackgroundTransparency = 0.25})
			tween(TopbarButton.UIStroke, {Transparency = 0.5})
			tween(TopbarButton.ImageLabel, {ImageTransparency = 0.25})
		end
	end
	for _, tabbtn in ipairs(Window.Navigation.Tabs:GetChildren()) do
		if tabbtn.ClassName == "Frame" and tabbtn.Name ~= "InActive Template" then
			-- Anti-cheat: tabs may have randomized Instance.Name. We tag the original
			-- display name via attribute so lookups still work after renaming.
			local displayName = tabbtn:GetAttribute("LunaTabName") or tabbtn.Name
			if displayName == currentTab then
				TweenService:Create(tabbtn, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
				TweenService:Create(tabbtn.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.41}):Play()
			end
			TweenService:Create(tabbtn.ImageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
			TweenService:Create(tabbtn.DropShadowHolder.DropShadow, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
		end
	end

end

local MainSize
local MinSize
-- Resize constraints (PC only). Mobile keeps the existing single fixed layout.
local ResizeMin = Vector2.new(600, 360)
local ResizeMax
if IsDesktop() and Camera.ViewportSize.X > 774 and Camera.ViewportSize.Y > 503 then
	-- Slightly larger default for desktops where there's room
	MainSize = UDim2.fromOffset(760, 478)
	MinSize = UDim2.fromOffset(500, 42)
	ResizeMax = Vector2.new(
		math.max(ResizeMin.X, math.min(Camera.ViewportSize.X - 40, 1280)),
		math.max(ResizeMin.Y, math.min(Camera.ViewportSize.Y - 40, 800))
	)
elseif Camera.ViewportSize.X > 774 and Camera.ViewportSize.Y > 503 then
	MainSize = UDim2.fromOffset(675, 424)
	MinSize = UDim2.fromOffset(500, 42)
	ResizeMax = Vector2.new(
		math.max(ResizeMin.X, math.min(Camera.ViewportSize.X - 40, 1024)),
		math.max(ResizeMin.Y, math.min(Camera.ViewportSize.Y - 40, 768))
	)
else
	MainSize = UDim2.fromOffset(Camera.ViewportSize.X - 100, Camera.ViewportSize.Y - 100)
	MinSize = UDim2.fromOffset(Camera.ViewportSize.X - 275, 42)
	ResizeMax = Vector2.new(Camera.ViewportSize.X - 40, Camera.ViewportSize.Y - 40)
end

local function Maximise(Window)
	Window.Controls.ToggleSize.ImageLabel.Image = "rbxassetid://10137941941"
	tween(Window, {Size = MainSize})
	Window.Elements.Visible = true
	Window.Navigation.Visible = true
end

local function Minimize(Window)
	Window.Controls.ToggleSize.ImageLabel.Image = "rbxassetid://11036884234"
	Window.Elements.Visible = false
	Window.Navigation.Visible = false
	tween(Window, {Size = MinSize})
end

function Luna:CreateWindow(WindowSettings)

	WindowSettings = Kwargify({
		Name = "Luna UI Example Window",
		Subtitle = "",
		LogoID = "6031097225",
		LoadingEnabled = true,
		LoadingTitle = "Luna Interface Suite",
		LoadingSubtitle = "by Nebula Softworks",

		ConfigSettings = {},

		KeySystem = false,
		KeySettings = {},

		-- New: optional in-window search bar. When true, a search icon appears
		-- in the top-right controls and opens a centered search modal.
		SearchBar = false,

		-- New: optional resize handle in the bottom-right (PC only). Forced
		-- off on mobile because the existing fullscreen layout already fits.
		Resizable = true,

		-- New: if true, an AI Chat tab is auto-added (uses pollinations.ai - no
		-- API key required). Set false to skip; the host can still create it
		-- manually with Window:CreateAiTab().
		AiTab = false,
		AiSettings = nil,
		ScriptSearcherTab = false,
		ScriptSearcherSettings = nil,

		-- Sidebar tab to open when the hub loads ("Dashboard", "Home", or any tab name).
		StartupTab = "Dashboard",

		-- New: enables Ctrl + / Ctrl - in-window zoom. Disable if the host
		-- already remaps those shortcuts.
		ZoomEnabled = true,
	}, WindowSettings or {})

	WindowSettings.ConfigSettings = Kwargify({
		RootFolder = nil,
		ConfigFolder = "Big Hub"
	}, WindowSettings.ConfigSettings or {})

	WindowSettings.KeySettings = Kwargify({
		Title = WindowSettings.Name,
		Subtitle = "Key System",
		Note = "No Instructions",
		SaveInRoot = false,
		SaveKey = true,
		Key = {""},
		SecondAction = {}	
	}, WindowSettings.KeySettings or {})

	WindowSettings.KeySettings.SecondAction = Kwargify({
		Enabled = false,
		Type = "Discord",
		Parameter = ""
	}, WindowSettings.KeySettings.SecondAction)

	local Passthrough = false

	local Window = {
		Bind = Enum.KeyCode.K,
		CurrentTab = nil,
		State = true,
		Size = false,
		Settings = nil,

		-- Search registry. Populated by Create* element helpers.
		-- Each entry: { Name=str, Type=str, Frame=Instance, Tab=str, Activate=fn() }
		_SearchIndex = {},
		_Tabs = {}, -- name -> { Activate = function }
		_TabRegistry = {}, -- name -> { Button, Page, Activate, Hidden }
		_TabCreationOrder = {}, -- tab name -> creation sequence (for nav sorting)
		_TabCreationCounter = 0,
	}

	Main.Title.Title.Text = WindowSettings.Name
	Main.Title.subtitle.Text = WindowSettings.Subtitle
	Main.Logo.Image = "rbxassetid://" .. WindowSettings.LogoID
	Main.Visible = true
	Main.BackgroundTransparency = 1
	Main.Size = MainSize
	Main.Size = UDim2.fromOffset(Main.Size.X.Offset - 70, Main.Size.Y.Offset - 55)
	Main.Parent.ShadowHolder.Size = Main.Size
	LoadingFrame.Frame.Frame.Title.TextTransparency = 1
	LoadingFrame.Frame.Frame.Subtitle.TextTransparency = 1
	LoadingFrame.Version.TextTransparency = 1
	LoadingFrame.Frame.ImageLabel.ImageTransparency = 1

	tween(Elements.Parent, {BackgroundTransparency = 1})
	Elements.Parent.Visible = false

	LoadingFrame.Frame.Frame.Title.Text = WindowSettings.LoadingTitle
	LoadingFrame.Frame.Frame.Subtitle.Text = WindowSettings.LoadingSubtitle
	LoadingFrame.Version.Text = LoadingFrame.Frame.Frame.Title.Text == "Luna Interface Suite" and Release or "Luna UI"

	Navigation.Player.icon.ImageLabel.Image = Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
	Navigation.Player.Namez.Text = Players.LocalPlayer.DisplayName
	Navigation.Player.TextLabel.Text = Players.LocalPlayer.Name

	for i,v in pairs(Main.Controls:GetChildren()) do
		v.Visible = false
	end

	Main:GetPropertyChangedSignal("Position"):Connect(function()
		Main.Parent.ShadowHolder.Position = Main.Position
		if dragBar and dragBar.Visible then syncDragBarPosition(Main) end
	end)
	Main:GetPropertyChangedSignal("Size"):Connect(function()
		Main.Parent.ShadowHolder.Size = Main.Size
		if dragBar and dragBar.Visible then syncDragBarPosition(Main) end
	end)
	Main:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
		if dragBar and dragBar.Visible then syncDragBarPosition(Main) end
	end)
	Main:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		if dragBar and dragBar.Visible then syncDragBarPosition(Main) end
	end)

	LoadingFrame.Visible = true

	--[[ pcall(function()
	 	if not isfolder(ConfigurationFolder) then
	 		makefolder(ConfigurationFolder)
	 	end
	 	if WindowSettings.ConfigSettings.RootFolder then
	 		if not isfolder(ConfigurationFolder .. WindowSettings.ConfigSettings.RootFolder) then
	 			makefolder(ConfigurationFolder .. WindowSettings.ConfigSettings.RootFolder)
	 			if not isfolder(ConfigurationFolder .. WindowSettings.ConfigSettings.RootFolder .. WindowSettings.ConfigSettings.ConfigFolder) then
	 				makefolder(ConfigurationFolder .. WindowSettings.ConfigSettings.RootFolder .. WindowSettings.ConfigSettings.ConfigFolder)
	 			end
	 		end
	 	else
	 		if not isfolder(ConfigurationFolder .. WindowSettings.ConfigSettings.ConfigFolder) then
	 			makefolder(ConfigurationFolder .. WindowSettings.ConfigSettings.ConfigFolder)
	 		end
	 	end

	 	LoadAutoLoad(WindowSettings.ConfigSettings.ConfigFolder, WindowSettings.ConfigSettings.RootFolder)
	 end) ]]

	LunaUI.Enabled = true

	if WindowSettings.KeySystem then
		local KeySettings = WindowSettings.KeySettings
		
		Draggable(Dragger, Main)
		Draggable(LunaUI.MobileSupport, LunaUI.MobileSupport)
		if dragBar then Draggable(dragInteract, Main, true, 255) end

		if not WindowSettings.KeySettings then
			Passthrough = true
			return
		end
		
		WindowSettings.KeySettings.FileName = "key"

		if typeof(WindowSettings.KeySettings.Key) == "string" then WindowSettings.KeySettings.Key = {WindowSettings.KeySettings.Key} end

		local direc = WindowSettings.KeySettings.SaveInRoot and "Luna/Configurations/" .. WindowSettings.ConfigSettings.RootFolder .. "/" .. WindowSettings.ConfigSettings.ConfigFolder .. "/Key System/" or "Luna/Configurations/" ..  WindowSettings.ConfigSettings.ConfigFolder .. "/Key System/"

		if isfile and isfile(direc .. WindowSettings.KeySettings.FileName .. ".luna") then
			for i, Key in ipairs(WindowSettings.KeySettings.Key) do
				if string.find(readfile(direc .. WindowSettings.KeySettings.FileName .. ".luna"), Key) then
					Passthrough = true
					break
				end
			end
		end

		if not Passthrough then

			local Btn = KeySystem.Action.Copy
			local typesys = KeySettings.SecondAction.Type
			
			if typesys == "Discord" then
				Btn = KeySystem.Action.Discord
			end

			local AttemptsRemaining = math.random(2, 5)

			KeySystem.Visible = true
			KeySystem.Title.Text = WindowSettings.KeySettings.Title
			KeySystem.Subtitle.Text = WindowSettings.KeySettings.Subtitle
			KeySystem.textshit.Text = WindowSettings.KeySettings.Note

			if KeySettings.SecondAction.Enabled == true then
				Btn.Visible = true
			end
			
			Btn.Interact.MouseButton1Click:Connect(function()
				if typesys == "Discord" then
					setclipboard(tostring("https://discord.gg/"..KeySettings.SecondAction.Parameter))
					if request then
						request({
							Url = 'http://127.0.0.1:6463/rpc?v=1',
							Method = 'POST',
							Headers = {
								['Content-Type'] = 'application/json',
								Origin = 'https://discord.com'
							},
							Body = HttpService:JSONEncode({
								cmd = 'INVITE_BROWSER',
								nonce = HttpService:GenerateGUID(false),
								args = {code = KeySettings.SecondAction.Parameter}
							})
						})
					end
				else
					setclipboard(tostring(KeySettings.SecondAction.Parameter))
				end
			end)

			KeySystem.Action.Submit.Interact.MouseButton1Click:Connect(function()
				if #KeySystem.Input.InputBox.Text == 0 then return end
				local KeyFound = false
				local FoundKey = ''
				for _, Key in ipairs(WindowSettings.KeySettings.Key) do
					if KeySystem.Input.InputBox.Text == Key then
						KeyFound = true
						FoundKey = Key
						break
					end
				end
				if KeyFound then 
					for _, instance in pairs(KeySystem:GetDescendants()) do
						if instance.ClassName ~= "UICorner" and instance.ClassName ~= "UIPadding" then
							if instance.ClassName ~= "UIStroke" and instance.ClassName ~= "UIListLayout" then
								tween(instance, {BackgroundTransparency = 1}, nil,TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
							end
							if instance.ClassName == "ImageButton" then
								tween(instance, {ImageTransparency = 1}, nil,TweenInfo.new(0.5, Enum.EasingStyle.Exponential))
							end
							if instance.ClassName == "TextLabel" then
								tween(instance, {TextTransparency = 1}, nil,TweenInfo.new(0.4, Enum.EasingStyle.Exponential))
							end
							if instance.ClassName == "UIStroke" then
								tween(instance, {Transparency = 1}, nil,TweenInfo.new(0.5, Enum.EasingStyle.Exponential))
							end
						end
					end
					tween(KeySystem, {BackgroundTransparency = 1}, nil,TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
					task.wait(0.51)
					Passthrough = true
					KeySystem.Visible = false
					if WindowSettings.KeySettings.SaveKey then
						if writefile then
							writefile(direc .. WindowSettings.KeySettings.FileName .. ".luna", FoundKey)
						end
						Luna:Notification({Title = "Key System", Content = "The key for this script has been saved successfully.", Icon = "lock_open"})
					end
				else
					if AttemptsRemaining == 0 then

						game.Players.LocalPlayer:Kick("No Attempts Remaining")
						game:Shutdown()
					end
					KeySystem.Input.InputBox.Text = "Incorrect Key"
					AttemptsRemaining = AttemptsRemaining - 1
					task.wait(0.4)
					KeySystem.Input.InputBox.Text = ""
				end
			end)

			KeySystem.Close.MouseButton1Click:Connect(function()
				
				Luna:Destroy()
			end)
		end
	end

	if WindowSettings.KeySystem then
		repeat task.wait() until Passthrough
	end

	if WindowSettings.LoadingEnabled then
		task.wait(0.3)
		TweenService:Create(LoadingFrame.Frame.Frame.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
		TweenService:Create(LoadingFrame.Frame.ImageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
		task.wait(0.05)
		TweenService:Create(LoadingFrame.Frame.Frame.Subtitle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
		TweenService:Create(LoadingFrame.Version, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
		task.wait(0.29)
		TweenService:Create(LoadingFrame.Frame.ImageLabel, TweenInfo.new(1.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 2, false, 0.2), {Rotation = 450}):Play()

		task.wait(3.32)

		TweenService:Create(LoadingFrame.Frame.Frame.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		TweenService:Create(LoadingFrame.Frame.ImageLabel, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {ImageTransparency = 1}):Play()
		task.wait(0.05)
		TweenService:Create(LoadingFrame.Frame.Frame.Subtitle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		TweenService:Create(LoadingFrame.Version, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		wait(0.3)
		TweenService:Create(LoadingFrame, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
	end

	TweenService:Create(Main, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 0.2, Size = MainSize}):Play()
	TweenService:Create(Main.Parent.ShadowHolder, TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = MainSize}):Play()
	TweenService:Create(Main.Title.Title, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
	TweenService:Create(Main.Title.subtitle, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
	TweenService:Create(Main.Logo, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
	TweenService:Create(Navigation.Player.icon.ImageLabel, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
	TweenService:Create(Navigation.Player.icon.UIStroke, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 0}):Play()
	TweenService:Create(Main.Line, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
	wait(0.4)
	LoadingFrame.Visible = false

	Draggable(Dragger, Main)
	Draggable(LunaUI.MobileSupport, LunaUI.MobileSupport)
	if dragBar then Draggable(dragInteract, Main, true, 255) end

	Elements.Template.LayoutOrder = 1000000000
	Elements.Template.Visible = false
	Navigation.Tabs["InActive Template"].LayoutOrder = 1000000000
	Navigation.Tabs["InActive Template"].Visible = false

	-- Do NOT mark the whole Elements.Template as LunaNoTranslate: Clone() copies
	-- attributes onto every TabPage, which would block translation for ALL tab
	-- content. Placeholder strings are filtered via LUNA_TEMPLATE_PLACEHOLDERS
	-- and the deferred DescendantAdded watcher instead.

	-- UIPageLayout listens to mouse-wheel input by default and swaps tabs when
	-- the user scrolls. That's terrible for our AI tab (and any scroll-heavy
	-- tab). Disable wheel/touch input completely; tab navigation is button-only.
	if Elements:FindFirstChild("UIPageLayout") then
		Elements.UIPageLayout.ScrollWheelInputEnabled = false
		Elements.UIPageLayout.TouchInputEnabled = false
		Elements.UIPageLayout.GamepadInputEnabled = false
	end

	local FirstTab = true

function Window:CreateHomeTab(HomeTabSettings)

		HomeTabSettings = Kwargify({
			Icon = 1,
			SupportedExecutors = {"Vega X", "Delta", "Nihon", "Xeno"}, -- THESE DEFAULTS ARE PLACEHOLDERS!! I DO NOT ADVERTISE THESE, THEY ARE JUS THE FIRST THAT CAME TO MIND. I HAVE NO IDEA WHETHER THEYA RE RATS (they prob are) AND IM NOT RESPONSIBLE IF U GET VIRUSES FROM INSTALLING AFTER SEEING THIS LIST
			DiscordInvite = "noinvitelink"
		}, HomeTabSettings or {})

		local HomeTab = {}

		local HomeTabButton = Navigation.Tabs.Home
		HomeTabButton.Visible = true
		HomeTabButton.LayoutOrder = 1
		if HomeTabSettings.Icon == 2 then
			ApplyIcon(HomeTabButton.ImageLabel, GetIcon("dashboard", "Material"))
		end

		local HomeTabPage = Elements.Home
		HomeTabPage.Visible = true

		function HomeTab:Activate()
			tween(HomeTabButton.ImageLabel, {ImageColor3 = Color3.fromRGB(255,255,255)})
			tween(HomeTabButton, {BackgroundTransparency = 0})
			tween(HomeTabButton.UIStroke, {Transparency = 0.41})

			Elements.UIPageLayout:JumpTo(HomeTabPage)

			task.wait(0.05)

			for _, OtherTabButton in ipairs(Navigation.Tabs:GetChildren()) do
				if OtherTabButton.Name ~= "InActive Template" and OtherTabButton.ClassName == "Frame" and OtherTabButton ~= HomeTabButton then
					tween(OtherTabButton.ImageLabel, {ImageColor3 = Color3.fromRGB(221,221,221)})
					tween(OtherTabButton, {BackgroundTransparency = 1})
					tween(OtherTabButton.UIStroke, {Transparency = 1})
				end

			end

			Window.CurrentTab = "Home"
		end

		-- Register Home in the tab registry for search results
		HomeTabButton:SetAttribute("LunaTabName", "Home")
		Window._Tabs["Home"] = { Activate = function() HomeTab:Activate() end, Page = HomeTabPage }
		Window._HomeTabButton = HomeTabButton

		HomeTab:Activate()
		FirstTab = false
		HomeTabButton.Interact.MouseButton1Click:Connect(function()
			HomeTab:Activate()
		end)

		HomeTabPage.icon.ImageLabel.Image = Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		HomeTabPage.player.Text.Text = "Hello, " .. Players.LocalPlayer.DisplayName
		HomeTabPage.player.user.Text = Players.LocalPlayer.Name .. " - ".. WindowSettings.Name

		local dashRoot = HomeTabPage.detailsholder.dashboard
		Window._ProfileRefs = {
			NavIcon = Navigation.Player.icon.ImageLabel,
			NavDisplay = Navigation.Player.Namez,
			NavUser = Navigation.Player.TextLabel,
			HomeIcon = HomeTabPage.icon.ImageLabel,
			HomeGreeting = HomeTabPage.player.Text,
			HomeUserLine = HomeTabPage.player.user,
			FriendsAll = dashRoot.Friends.All.Value,
			FriendsOffline = dashRoot.Friends.Offline.Value,
			FriendsOnline = dashRoot.Friends.Online.Value,
			FriendsInGame = dashRoot.Friends.InGame.Value,
			ServerRegion = dashRoot.Server.Region.Value,
			ServerLatency = dashRoot.Server.Latency.Value,
		}
		Window._AnonymousMode = false

		HomeTabPage.detailsholder.dashboard.Client.Title.Text = (isStudio and "Debugging (Studio)" or identifyexecutor()) or "Your Executor Does Not Support identifyexecutor."
        for i,v in pairs(HomeTabSettings.SupportedExecutors) do
                if isStudio then HomeTabPage.detailsholder.dashboard.Client.Subtitle.Text = "Luna Interface Suite - Debugging Mode" break end
                if v == identifyexecutor() then
                        HomeTabPage.detailsholder.dashboard.Client.Subtitle.Text = "Your Executor Supports This Script."
                        break
                end
        end

		-- Stolen From Sirius Stuff Begins Here

		HomeTabPage.detailsholder.dashboard.Discord.Interact.MouseButton1Click:Connect(function()
			setclipboard(tostring("https://discord.gg/"..HomeTabSettings.DiscordInvite))
			if request then
				request({
					Url = 'http://127.0.0.1:6463/rpc?v=1',
					Method = 'POST',
					Headers = {
						['Content-Type'] = 'application/json',
						Origin = 'https://discord.com'
					},
					Body = HttpService:JSONEncode({
						cmd = 'INVITE_BROWSER',
						nonce = HttpService:GenerateGUID(false),
						args = {code = HomeTabSettings.DiscordInvite}
					})
				})
			end
		end)

		local friendsCooldown = 0
		local function getPing() return math.clamp(Stats.Network.ServerStatsItem["Data Ping"]:GetValue(), 10, 700) end

		local function checkFriends()
			if friendsCooldown == 0 then

				friendsCooldown = 25

				local playersFriends = {}
				local friendsInTotal = 0
				local onlineFriends = 0 
				local friendsInGame = 0 

				local list = Players:GetFriendsAsync(Player.UserId)
				while true do
					for _, data in list:GetCurrentPage() do
						friendsInTotal +=1
						table.insert(playersFriends, Data)
					end

					if list.IsFinished then
						break
					else 
						list:AdvanceToNextPageAsync()
					end
				end
				for i, v in pairs(Player:GetFriendsOnline()) do
					onlineFriends += 1
				end

				for i,v in pairs(playersFriends) do
					if Players:FindFirstChild(v.Username) then
						friendsInGame = friendsInGame + 1
					end
				end

				HomeTabPage.detailsholder.dashboard.Friends.All.Value.Text = tostring(friendsInTotal).." friends"
				HomeTabPage.detailsholder.dashboard.Friends.Offline.Value.Text = tostring(friendsInTotal - onlineFriends).." friends"
				HomeTabPage.detailsholder.dashboard.Friends.Online.Value.Text = tostring(onlineFriends).." friends"
				HomeTabPage.detailsholder.dashboard.Friends.InGame.Value.Text = tostring(friendsInGame).." friends"

			else
				friendsCooldown -= 1
			end
		end

		local function format(Int)
			return string.format("%02i", Int)
		end

		local function convertToHMS(Seconds)
			local Minutes = (Seconds - Seconds%60)/60
			Seconds = Seconds - Minutes*60
			local Hours = (Minutes - Minutes%60)/60
			Minutes = Minutes - Hours*60
			return format(Hours)..":"..format(Minutes)..":"..format(Seconds)
		end

		coroutine.wrap(function()
			while task.wait() do
				local dash = HomeTabPage.detailsholder.dashboard
				dash.Server.Players.Value.Text = #Players:GetPlayers().." playing"
				dash.Server.MaxPlayers.Value.Text = Players.MaxPlayers.." players can join this server"
				dash.Server.Time.Value.Text = convertToHMS(time())
				dash.Server.Latency.Value.Text = isStudio and tostring(math.round((Players.LocalPlayer:GetNetworkPing() * 2 ) / 0.01)) .."ms" or tostring(math.floor(getPing()) .."ms")

				if Window._AnonymousMode then
					dash.Server.Region.Value.Text = "Hidden"
				else
					dash.Server.Region.Value.Text = Localization:GetCountryRegionForPlayerAsync(Players.LocalPlayer)
					checkFriends()
				end
			end
		end)()

		-- Stolen From Sirius Stuff ends here

		-- Holder for our extra dashboard cards. HomeTabPage doesn't use a
		-- UIListLayout - its children (icon, player, detailsholder) are absolutely
		-- positioned. So we anchor manually directly below detailsholder and keep
		-- the position in sync whenever the dashboard resizes.
		local ExtraCards
		local function ensureExtraCards()
			if ExtraCards and ExtraCards.Parent then return ExtraCards end
			ExtraCards = Instance.new("Frame")
			ExtraCards.Name = RandomName()
			ExtraCards.BackgroundTransparency = 1
			ExtraCards.BorderSizePixel = 0
			ExtraCards.Size = UDim2.new(1, -20, 0, 0)
			ExtraCards.Position = UDim2.new(0, 10, 0, 240) -- updated below once detailsholder lays out
			ExtraCards.AutomaticSize = Enum.AutomaticSize.Y
			ExtraCards.ZIndex = 1
			ExtraCards.Parent = HomeTabPage

			-- UIGridLayout lets us put 2 cards per row, wrapping cleanly.
			local grid = Instance.new("UIGridLayout")
			grid.SortOrder = Enum.SortOrder.LayoutOrder
			grid.CellPadding = UDim2.fromOffset(10, 10)
			grid.CellSize = UDim2.new(0.5, -8, 0, 76)
			grid.FillDirectionMaxCells = 2
			grid.HorizontalAlignment = Enum.HorizontalAlignment.Center
			grid.StartCorner = Enum.StartCorner.TopLeft
			grid.Parent = ExtraCards

			local padding = Instance.new("UIPadding")
			padding.PaddingTop = UDim.new(0, 14)
			padding.PaddingBottom = UDim.new(0, 14)
			padding.Parent = ExtraCards

			-- Snap our holder right under the dashboard rows (Discord / Server /
			-- Friends / Client). HomeTabPage uses absolute positioning - its
			-- `detailsholder` is sized to the whole page, so we can't use its
			-- bottom or the cards land at the canvas floor. Instead we track
			-- `detailsholder.dashboard`, the inner frame whose AbsoluteSize is
			-- the actual content height of the dashboard cards.
			local detailsholder = HomeTabPage:FindFirstChild("detailsholder")
			local dashboard = detailsholder and detailsholder:FindFirstChild("dashboard")
			if dashboard then
				local function reposition()
					if not dashboard or not dashboard.Parent then return end
					-- Convert dashboard's bottom into HomeTabPage-local coords.
					local pageAbsY = HomeTabPage.AbsolutePosition.Y - (HomeTabPage:IsA("ScrollingFrame") and HomeTabPage.CanvasPosition.Y or 0)
					local relY = dashboard.AbsolutePosition.Y - pageAbsY + dashboard.AbsoluteSize.Y
					if relY > 0 then
						ExtraCards.Position = UDim2.new(0, 10, 0, math.floor(relY) + 12)
					end
				end
				reposition()
				dashboard:GetPropertyChangedSignal("AbsolutePosition"):Connect(reposition)
				dashboard:GetPropertyChangedSignal("AbsoluteSize"):Connect(reposition)
				HomeTabPage:GetPropertyChangedSignal("AbsolutePosition"):Connect(reposition)
				-- Wait a couple of frames for the asset's layouts to settle.
				task.defer(function() task.wait(0.05); reposition() end)
				task.delay(0.4, reposition)
			elseif detailsholder then
				-- Fallback to detailsholder's TOP edge (better than its bottom).
				local function reposition()
					if not detailsholder or not detailsholder.Parent then return end
					local pageAbsY = HomeTabPage.AbsolutePosition.Y - (HomeTabPage:IsA("ScrollingFrame") and HomeTabPage.CanvasPosition.Y or 0)
					local relY = detailsholder.AbsolutePosition.Y - pageAbsY + 200
					ExtraCards.Position = UDim2.new(0, 10, 0, math.max(120, math.floor(relY)))
				end
				reposition()
				detailsholder:GetPropertyChangedSignal("AbsolutePosition"):Connect(reposition)
			end

			return ExtraCards
		end

		-- Adds a self-contained styled card below the original dashboard cards.
		-- We intentionally do NOT touch the existing Discord/Server/Client/Friends
		-- cards so the home tab keeps its original behaviour.
		function HomeTab:CreateButton(opts)
			opts = Kwargify({
				Name = "Button",
				Description = "",
				Icon = nil,
				ImageSource = "Material",
				Color = Color3.fromRGB(70, 60, 160),
				Color2 = Color3.fromRGB(40, 30, 100),
				Callback = function() end,
			}, opts or {})

			local holder = ensureExtraCards()

			local card = Instance.new("Frame")
			card.Name = RandomName()
			card.BackgroundColor3 = opts.Color
			card.BackgroundTransparency = 0
			card.BorderSizePixel = 0
			card.Size = UDim2.new(0.5, -8, 0, 76)
			card.Parent = holder

			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(0, 10)
			corner.Parent = card

			-- Gradient gives the Discord-card vibrant look without relying on the
			-- original asset's internal structure.
			local gradient = Instance.new("UIGradient")
			gradient.Rotation = 135
			gradient.Color = ColorSequence.new(opts.Color, opts.Color2)
			gradient.Parent = card

			local stroke = Instance.new("UIStroke")
			stroke.Color = Color3.fromRGB(255, 255, 255)
			stroke.Transparency = 0.85
			stroke.Parent = card

			-- Icon (optional)
			local iconLabel
			if opts.Icon then
				iconLabel = Instance.new("ImageLabel")
				iconLabel.Name = "Icon"
				iconLabel.AnchorPoint = Vector2.new(0, 0.5)
				iconLabel.Position = UDim2.new(0, 14, 0.5, 0)
				iconLabel.Size = UDim2.fromOffset(28, 28)
				iconLabel.BackgroundTransparency = 1
				iconLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
				iconLabel.ImageTransparency = 0.05
				iconLabel.Parent = card
				ApplyIcon(iconLabel, GetIcon(opts.Icon, opts.ImageSource))
			end

			local titleOffset = iconLabel and 52 or 16

			local title = Instance.new("TextLabel")
			title.Name = "Title"
			title.BackgroundTransparency = 1
			title.Position = UDim2.new(0, titleOffset, 0, 12)
			title.Size = UDim2.new(1, -titleOffset - 12, 0, 22)
			title.Text = tostring(opts.Name)
			title.TextColor3 = Color3.fromRGB(255, 255, 255)
			title.Font = Enum.Font.GothamBold
			title.TextSize = 18
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.Parent = card

			local subtitle = Instance.new("TextLabel")
			subtitle.Name = "Subtitle"
			subtitle.BackgroundTransparency = 1
			subtitle.Position = UDim2.new(0, titleOffset, 0, 36)
			subtitle.Size = UDim2.new(1, -titleOffset - 12, 0, 28)
			subtitle.Text = tostring(opts.Description)
			subtitle.TextColor3 = Color3.fromRGB(230, 230, 240)
			subtitle.TextTransparency = 0.15
			subtitle.Font = Enum.Font.Gotham
			subtitle.TextSize = 13
			subtitle.TextXAlignment = Enum.TextXAlignment.Left
			subtitle.TextYAlignment = Enum.TextYAlignment.Top
			subtitle.TextWrapped = true
			subtitle.Parent = card

			local interact = Instance.new("TextButton")
			interact.Name = "Interact"
			interact.AutoButtonColor = false
			interact.BackgroundTransparency = 1
			interact.Size = UDim2.fromScale(1, 1)
			interact.Text = ""
			interact.Parent = card

			interact.MouseEnter:Connect(function()
				tween(stroke, {Transparency = 0.4})
				tween(card, {BackgroundTransparency = 0.05})
			end)
			interact.MouseLeave:Connect(function()
				tween(stroke, {Transparency = 0.85})
				tween(card, {BackgroundTransparency = 0})
			end)
			interact.MouseButton1Click:Connect(function()
				local ok, err = pcall(opts.Callback)
				if not ok then
					Luna:Notification({
						Title = "Callback Error",
						Content = "Luna Interface Suite | " .. tostring(opts.Name) .. " | " .. tostring(err),
						Icon = "error",
					})
				end
			end)

			return card
		end

		return HomeTab
	end
	
	-- Pin tabs at the top of the sidebar (Dashboard, AI, Script Searcher, then the rest).
	function Window:ApplyNavTabOrder(priorityNames)
		if type(priorityNames) ~= "table" then
			priorityNames = {"Home", "Solara Hub AI", "Scripts"}
		end

		local pinned = {}
		for _, name in ipairs(priorityNames) do
			pinned[name] = true
			if name == "Dashboard" or name == "Home" then
				pinned.Dashboard = true
				pinned.Home = true
			end
		end

		local function setOrder(reg, order)
			if reg and reg.Button then
				reg.Button.LayoutOrder = order
			end
			if reg and reg.Page then
				reg.Page.LayoutOrder = order
			end
		end

		local order = 1
		if self._HomeTabButton then
			self._HomeTabButton.LayoutOrder = order
			if Elements and Elements:FindFirstChild("Home") then
				Elements.Home.LayoutOrder = order
			end
			order = order + 1
		end

		for _, name in ipairs(priorityNames) do
			if name ~= "Home" and name ~= "Dashboard" then
				setOrder(self._TabRegistry and self._TabRegistry[name], order)
				if self._TabRegistry and self._TabRegistry[name] then
					order = order + 1
				end
			end
		end

		local rest = {}
		for name, reg in pairs(self._TabRegistry or {}) do
			if not pinned[name] and reg.Button then
				table.insert(rest, {
					name = name,
					reg = reg,
					created = (self._TabCreationOrder and self._TabCreationOrder[name]) or 9999,
				})
			end
		end
		table.sort(rest, function(a, b)
			if a.created ~= b.created then
				return a.created < b.created
			end
			return a.name < b.name
		end)

		for _, item in ipairs(rest) do
			setOrder(item.reg, order)
			order = order + 1
		end
	end

	function Window:SetStartupTab(tabName)
		if tabName == nil or tabName == "" then
			WindowSettings.StartupTab = "Dashboard"
		else
			WindowSettings.StartupTab = tostring(tabName)
		end
	end

	function Window:GetStartupTab()
		return WindowSettings.StartupTab or "Dashboard"
	end

	function Window:ActivateStartupTab(tabName)
		tabName = tabName or WindowSettings.StartupTab or "Dashboard"
		if tabName == "Dashboard" then
			tabName = "Home"
		end
		local entry = self._Tabs and self._Tabs[tabName]
		if entry and type(entry.Activate) == "function" then
			pcall(entry.Activate)
			return true
		end
		if self._Tabs and self._Tabs["Home"] and type(self._Tabs["Home"].Activate) == "function" then
			pcall(self._Tabs["Home"].Activate)
			return true
		end
		return false
	end

	function Window:CreateTab(TabSettings)

		local Tab = {}

		TabSettings = Kwargify({
			Name = "Tab",
			ShowTitle = true,
			Icon = "view_in_ar",
			ImageSource = "Material",
			NavLayoutOrder = nil,
		}, TabSettings or {})

		local TabButton = Navigation.Tabs["InActive Template"]:Clone()

		-- Anti-cheat: use a random Instance.Name. The display name lives in TextLabel
		-- and in the "LunaTabName" attribute used by internal lookups.
		TabButton.Name = RandomName()
		TabButton:SetAttribute("LunaNoTranslate", nil)
		TabButton:SetAttribute("LunaTabName", TabSettings.Name)
		TabButton.TextLabel.Text = TabSettings.Name
		TabButton.Parent = Navigation.Tabs
		ApplyIcon(TabButton.ImageLabel, GetIcon(TabSettings.Icon, TabSettings.ImageSource))

		TabButton.Visible = true
		if TabSettings.NavLayoutOrder ~= nil then
			TabButton.LayoutOrder = TabSettings.NavLayoutOrder
		end

		local TabPage = Elements.Template:Clone()
		TabPage.Name = RandomName()
		TabPage:SetAttribute("LunaNoTranslate", nil)
		TabPage:SetAttribute("LunaTabName", TabSettings.Name)
		TabPage.Title.Visible = TabSettings.ShowTitle
		TabPage.Title.Text = TabSettings.Name
		TabPage.Visible = true

		Tab.Page = TabPage

		if TabSettings.ShowTitle == false then
			TabPage.UIPadding.PaddingTop = UDim.new(0,10)
		end

		TabPage.LayoutOrder = TabSettings.NavLayoutOrder or Window._TabCreationCounter

		for _, TemplateElement in ipairs(TabPage:GetChildren()) do
			if TemplateElement.ClassName == "Frame" or TemplateElement.ClassName == "TextLabel" and TemplateElement.Name ~= "Title" then
				TemplateElement:Destroy()
			end
		end
		TabPage.Parent = Elements

		function Tab:Activate()
			tween(TabButton.ImageLabel, {ImageColor3 = Color3.fromRGB(255,255,255)})
			tween(TabButton, {BackgroundTransparency = 0})
			tween(TabButton.UIStroke, {Transparency = 0.41})

			Elements.UIPageLayout:JumpTo(TabPage)

			task.wait(0.05)

			for _, OtherTabButton in ipairs(Navigation.Tabs:GetChildren()) do
				if OtherTabButton.Name ~= "InActive Template" and OtherTabButton.ClassName == "Frame" and OtherTabButton ~= TabButton then
					tween(OtherTabButton.ImageLabel, {ImageColor3 = Color3.fromRGB(221,221,221)})
					tween(OtherTabButton, {BackgroundTransparency = 1})
					tween(OtherTabButton.UIStroke, {Transparency = 1})
				end

			end

			Window.CurrentTab = TabSettings.Name
		end

		-- Register in search index for SearchBar (used to jump back to a tab)
		Window._Tabs[TabSettings.Name] = { Activate = function() Tab:Activate() end, Page = TabPage }
		Window._TabCreationCounter = (Window._TabCreationCounter or 0) + 1
		Window._TabCreationOrder[TabSettings.Name] = Window._TabCreationCounter

		Window._TabRegistry[TabSettings.Name] = {
			Button = TabButton,
			Page = TabPage,
			Activate = function() Tab:Activate() end,
			Hidden = false,
		}

		if FirstTab then
			Tab:Activate()
		end

		task.wait(0.01)

		TabButton.Interact.MouseButton1Click:Connect(function()
			Tab:Activate()
		end)

		FirstTab = false

		-- Section
		function Tab:CreateSection(name : string)

			local Section = {}

			if name == nil then name = "Section" end

			Section.Name = name

			local Sectiont = Elements.Template.Section:Clone()
			Sectiont.Text = name
			Sectiont.Visible = true
			Sectiont.Parent = TabPage
			local TabPage = Sectiont.Frame

			Sectiont.TextTransparency = 1
			tween(Sectiont, {TextTransparency = 0})

			function Section:Set(NewSection)
				Sectiont.Text = NewSection
			end

			function Section:Destroy()
				Sectiont:Destroy()
			end

			-- Divider (optional centered label)
			function Section:CreateDivider(DividerSettings)
				TabPage.Position = UDim2.new(0,0,0,28)
				-- Backwards-compat: accept either a settings table or a plain string,
				-- and stay valid when called with no arguments.
				local text
				if type(DividerSettings) == "string" then
					text = DividerSettings
				elseif type(DividerSettings) == "table" then
					text = DividerSettings.Text
				end

				local b = Elements.Template.Divider:Clone()
				b.Parent = TabPage
				b.Size = UDim2.new(1,0,0,18)
				b.Line.BackgroundTransparency = 1
				tween(b.Line, {BackgroundTransparency = 0})

				if text and text ~= "" then
					local line = b.Line
					-- Match the divider's full-width line, then split it visually by
					-- shrinking the original and adding a mirrored line + centered label.
					line.AnchorPoint = Vector2.new(0, 0.5)
					line.Position = UDim2.new(0, 0, 0.5, 0)
					line.Size = UDim2.new(0.5, -45, 0, line.Size.Y.Offset)

					local rightLine = line:Clone()
					rightLine.Name = RandomName()
					rightLine.AnchorPoint = Vector2.new(1, 0.5)
					rightLine.Position = UDim2.new(1, 0, 0.5, 0)
					rightLine.Size = UDim2.new(0.5, -45, 0, line.Size.Y.Offset)
					rightLine.Parent = b
					rightLine.BackgroundTransparency = 1
					tween(rightLine, {BackgroundTransparency = 0})

					local label = Instance.new("TextLabel")
					label.Name = RandomName()
					label.BackgroundTransparency = 1
					label.AnchorPoint = Vector2.new(0.5, 0.5)
					label.Position = UDim2.fromScale(0.5, 0.5)
					label.Size = UDim2.new(0, 80, 0, 18)
					label.AutomaticSize = Enum.AutomaticSize.X
					label.Text = tostring(text)
					label.Font = Enum.Font.GothamMedium
					label.TextSize = 12
					label.TextColor3 = Color3.fromRGB(200, 200, 210)
					label.TextTransparency = 1
					label.Parent = b
					tween(label, {TextTransparency = 0.15})
				end

				return b
			end

			-- Button
			function Section:CreateButton(ButtonSettings)
				TabPage.Position = UDim2.new(0,0,0,28)

				ButtonSettings = Kwargify({
					Name = "Button",
					Description = nil,
					Callback = function()

					end,
				}, ButtonSettings or {})

				local ButtonV = {
					Hover = false,
					Settings = ButtonSettings
				}


				local hasDesc = type(ButtonSettings.Description) == "string" and ButtonSettings.Description ~= ""
				local Button = hasDesc and Elements.Template.ButtonDesc:Clone() or Elements.Template.Button:Clone()
				RegisterElement(Window, Button, ButtonSettings.Name, "Button", TabSettings.Name)
				LunaSetText(Button.Title, ButtonSettings.Name)
				if hasDesc and Button:FindFirstChild("Desc") then
					LunaSetText(Button.Desc, ButtonSettings.Description)
				elseif Button:FindFirstChild("Desc") then
					Button.Desc.Visible = false
				end
				Button.Visible = true
				Button.Parent = TabPage

				Button.UIStroke.Transparency = 1
				Button.Title.TextTransparency = 1
				if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
					Button.Desc.TextTransparency = 1
				end

				TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Button.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
				if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
					TweenService:Create(Button.Desc, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
				end

				Button.Interact["MouseButton1Click"]:Connect(function()
					local Success,Response = pcall(ButtonSettings.Callback)

					if not Success then
						TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Button.Title.Text = "Callback Error"
						LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
						task.wait(0.5)
						Button.Title.Text = ButtonSettings.Name
						TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Button.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					else
						tween(Button.UIStroke, {Color = Color3.fromRGB(136, 131, 163)})
						wait(0.2)
						if ButtonV.Hover then
							tween(Button.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
						else
							tween(Button.UIStroke, {Color = Color3.fromRGB(64,61,76)})
						end
					end
				end)

				Button["MouseEnter"]:Connect(function()
					ButtonV.Hover = true
					tween(Button.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Button["MouseLeave"]:Connect(function()
					ButtonV.Hover = false
					tween(Button.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				function ButtonV:Set(ButtonSettings2)
					ButtonSettings2 = Kwargify({
						Name = ButtonSettings.Name,
						Description = ButtonSettings.Description,
						Callback = ButtonSettings.Callback
					}, ButtonSettings2 or {})

					ButtonSettings = ButtonSettings2
					ButtonV.Settings = ButtonSettings2

					RegisterElement(Window, Button, ButtonSettings.Name, "Button", TabSettings.Name)
					Button.Title.Text = ButtonSettings.Name
					if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" and Button.Desc ~= nil then
						Button.Desc.Text = ButtonSettings.Description
					end
				end

				function ButtonV:Destroy()
					Button.Visible = false
					Button:Destroy()
				end

				return ButtonV
			end

			-- Label
			function Section:CreateLabel(LabelSettings)
				TabPage.Position = UDim2.new(0,0,0,28)

				local LabelV = {}

				LabelSettings = Kwargify({
					Text = "Label",
					Style = 1
				}, LabelSettings or {}) 

				LabelV.Settings = LabelSettings

				local Label
				if LabelSettings.Style == 1 then
					Label = Elements.Template.Label:Clone()
				elseif LabelSettings.Style == 2 then
					Label = Elements.Template.Info:Clone()
				elseif LabelSettings.Style == 3 then
					Label = Elements.Template.Warn:Clone()
				end

				LunaSetText(Label.Text, LabelSettings.Text)
				Label.Visible = true
				Label.Parent = TabPage

				Label.BackgroundTransparency = 1
				Label.UIStroke.Transparency = 1
				Label.Text.TextTransparency = 1

				if LabelSettings.Style ~= 1 then
					TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.8}):Play()
				else
					TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
				end
				TweenService:Create(Label.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Label.Text, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

				function LabelV:Set(NewLabel)
					LabelSettings.Text = NewLabel
					LabelV.Settings = LabelSettings
					LunaSetText(Label.Text, NewLabel)
				end

				function LabelV:Destroy()
					Label.Visible = false
					Label:Destroy()
				end

				return LabelV
			end

			-- Paragraph
			function Section:CreateParagraph(ParagraphSettings)
				TabPage.Position = UDim2.new(0,0,0,28)

				ParagraphSettings = Kwargify({
					Title = "Paragraph",
					Text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis lacus sed tempus eleifend. Mauris interdum bibendum felis, in tempor augue egestas vel. Praesent tristique consectetur ex, eu pretium sem placerat non. Vestibulum a nisi sit amet augue facilisis consectetur sit amet et nunc. Integer fermentum ornare cursus. Pellentesque sed ultricies metus, ut egestas metus. Vivamus auctor erat ac sapien vulputate, nec ultricies sem tempor. Quisque leo lorem, faucibus nec pulvinar nec, congue eu velit. Duis sodales massa efficitur imperdiet ultrices. Donec eros ipsum, ornare pharetra purus aliquam, tincidunt elementum nisi. Ut mi tortor, feugiat eget nunc vitae, facilisis interdum dui. Vivamus ullamcorper nunc dui, a dapibus nisi pretium ac. Integer eleifend placerat nibh, maximus malesuada tellus. Cras in justo in ligula scelerisque suscipit vel vitae quam."
				}, ParagraphSettings or {})

				local ParagraphV = {
					Settings = ParagraphSettings
				}

				local Paragraph = Elements.Template.Paragraph:Clone()
				LunaSetText(Paragraph.Title, ParagraphSettings.Title)
				LunaSetText(Paragraph.Text, ParagraphSettings.Text)
				Paragraph.Visible = true
				Paragraph.Parent = TabPage

				Paragraph.BackgroundTransparency = 1
				Paragraph.UIStroke.Transparency = 1
				Paragraph.Title.TextTransparency = 1
				Paragraph.Text.TextTransparency = 1

				TweenService:Create(Paragraph, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
				TweenService:Create(Paragraph.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Paragraph.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
				TweenService:Create(Paragraph.Text, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

				function ParagraphV:Update()
					Paragraph.Text.Size = UDim2.new(Paragraph.Text.Size.X.Scale, Paragraph.Text.Size.X.Offset, 0, math.huge)
					Paragraph.Text.Size = UDim2.new(Paragraph.Text.Size.X.Scale, Paragraph.Text.Size.X.Offset, 0, Paragraph.Text.TextBounds.Y)
					tween(Paragraph, {Size = UDim2.new(Paragraph.Size.X.Scale, Paragraph.Size.X.Offset, 0, Paragraph.Text.TextBounds.Y + 40)})
				end

				function ParagraphV:Set(NewParagraphSettings)

					NewParagraphSettings = Kwargify({
						Title = ParagraphSettings.Title,
						Text = ParagraphSettings.Text
					}, NewParagraphSettings or {})

					ParagraphV.Settings = NewParagraphSettings

					LunaSetText(Paragraph.Title, NewParagraphSettings.Title)
					LunaSetText(Paragraph.Text, NewParagraphSettings.Text)

					ParagraphV:Update()

				end

				function ParagraphV:Destroy()
					Paragraph.Visible = false
					Paragraph:Destroy()
				end

				ParagraphV:Update()

				return ParagraphV
			end

			-- Slider
			function Section:CreateSlider(SliderSettings, Flag)
				TabPage.Position = UDim2.new(0,0,0,28)
				local SliderV = { IgnoreConfig = false, Class = "Slider", Settings = SliderSettings }

				SliderSettings = Kwargify({
					Name = "Slider",
					Range = {0, 200},
					Increment = 1,
					CurrentValue = 100,
					Callback = function(Value)

					end,
				}, SliderSettings or {})

				local SLDragging = false
				local Slider = Elements.Template.Slider:Clone()
				RegisterElement(Window, Slider, SliderSettings.Name, "Slider", TabSettings.Name)
				Slider.Title.Text = SliderSettings.Name
				Slider.Visible = true
				Slider.Parent = TabPage

				Slider.BackgroundTransparency = 1
				Slider.UIStroke.Transparency = 1
				Slider.Title.TextTransparency = 1

				TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Slider.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

				Slider.Main.Progress.Size =	UDim2.new(0, Slider.Main.AbsoluteSize.X * ((SliderSettings.CurrentValue + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (SliderSettings.CurrentValue / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)

				Slider.Value.Text = tostring(SliderSettings.CurrentValue)
				SliderV.CurrentValue = Slider.Value.Text

				SliderSettings.Callback(SliderSettings.CurrentValue)

				Slider["MouseEnter"]:Connect(function()
					tween(Slider.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Slider["MouseLeave"]:Connect(function()
					tween(Slider.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				Slider.Interact.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
						SLDragging = true 
					end 
				end)

				Slider.Interact.InputEnded:Connect(function(Input) 
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
						SLDragging = false 
					end 
				end)

				Slider.Interact.MouseButton1Down:Connect(function()
					local Current = Slider.Main.Progress.AbsolutePosition.X + Slider.Main.Progress.AbsoluteSize.X
					local Start = Current
					local Location
					local Loop; Loop = RunService.Stepped:Connect(function()
						if SLDragging then
							Location = UserInputService:GetMouseLocation().X
							Current = Current + 0.025 * (Location - Start)

							if Location < Slider.Main.AbsolutePosition.X then
								Location = Slider.Main.AbsolutePosition.X
							elseif Location > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
								Location = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
							end

							if Current < Slider.Main.AbsolutePosition.X + 5 then
								Current = Slider.Main.AbsolutePosition.X + 5
							elseif Current > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
								Current = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
							end

							if Current <= Location and (Location - Start) < 0 then
								Start = Location
							elseif Current >= Location and (Location - Start) > 0 then
								Start = Location
							end
							Slider.Main.Progress.Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X, 1, 0)
							local NewValue = SliderSettings.Range[1] + (Location - Slider.Main.AbsolutePosition.X) / Slider.Main.AbsoluteSize.X * (SliderSettings.Range[2] - SliderSettings.Range[1])

							NewValue = math.floor(NewValue / SliderSettings.Increment + 0.5) * (SliderSettings.Increment * 10000000) / 10000000

							Slider.Value.Text = tostring(NewValue)

							if SliderSettings.CurrentValue ~= NewValue then
								local Success, Response = pcall(function()
									SliderSettings.Callback(NewValue)
								end)
								if not Success then
									TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
									TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
									TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
									Slider.Title.Text = "Callback Error"
									LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
									wait(0.5)
									Slider.Title.Text = SliderSettings.Name
									TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
									TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
									TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
								end

								SliderSettings.CurrentValue = NewValue
								SliderV.CurrentValue = SliderSettings.CurrentValue
							end
						else
							TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.In, 0, false), {Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X > 5 and Location - Slider.Main.AbsolutePosition.X or 5, 1, 0)}):Play()
							Loop:Disconnect()
						end
					end)
				end)

				local function Set(NewVal, bleh)

					NewVal = NewVal or SliderSettings.CurrentValue

					TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Size = UDim2.new(0, Slider.Main.AbsoluteSize.X * ((NewVal + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (NewVal / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)}):Play()
					if not bleh then Slider.Value.Text = tostring(NewVal) end
					local Success, Response = pcall(function()
						SliderSettings.Callback(NewVal)
					end)
					if not Success then
						TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Slider.Title.Text = "Callback Error"
						LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
						wait(0.5)
						Slider.Title.Text = SliderSettings.Name
						TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(30, 33, 40)}):Play()
						TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end

					SliderSettings.CurrentValue = NewVal
					SliderV.CurrentValue = SliderSettings.CurrentValue

				end

				function SliderV:UpdateValue(Value)
					Set(tonumber(Value))
				end 

				Slider.Value:GetPropertyChangedSignal("Text"):Connect(function()
					local text = Slider.Value.Text
					if not tonumber(text) and text ~= "." then
						Slider.Value.Text = text:match("[0-9.]*") or ""
					end
					if SliderSettings.Range[2] < (tonumber(Slider.Value.Text) or 0) then Slider.Value.Text = SliderSettings.Range[2] end
					Slider.Value.Size = UDim2.fromOffset(Slider.Value.TextBounds.X, 23)
					Set(tonumber(Slider.Value.Text), true)
				end)

				function SliderV:Set(NewSliderSettings)
					NewSliderSettings = Kwargify({
						Name = SliderSettings.Name,
						Range = SliderSettings.Range,
						Increment = SliderSettings.Increment,
						CurrentValue = SliderSettings.CurrentValue,
						Callback = SliderSettings.Callback
					}, NewSliderSettings or {})

					SliderSettings = NewSliderSettings
					SliderV.Settings = NewSliderSettings

					RegisterElement(Window, Slider, SliderSettings.Name, "Slider", TabSettings.Name)
					Slider.Title.Text = SliderSettings.Name

					Set()

				end

				function SliderV:Destroy()
					Slider.Visible = false
					Slider:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = SliderV
				end

				LunaUI.ThemeRemote:GetPropertyChangedSignal("Value"):Connect(function()
					Slider.Main.color.Color = Luna.ThemeGradient
					Slider.Main.UIStroke.color.Color = Luna.ThemeGradient
				end)

				return SliderV

			end

			-- Toggle
			function Section:CreateToggle(ToggleSettings, Flag)    
				TabPage.Position = UDim2.new(0,0,0,28)
				local ToggleV = { IgnoreConfig = false, Class = "Toggle" }

				ToggleSettings = Kwargify({
					Name = "Toggle",
					Description = nil,
					CurrentValue = false,
					Callback = function(Value)
					end,
				}, ToggleSettings or {})


				local Toggle

				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
					Toggle = Elements.Template.ToggleDesc:Clone()
				else
					Toggle = Elements.Template.Toggle:Clone()
				end

				Toggle.Visible = true
				Toggle.Parent = TabPage

				RegisterElement(Window, Toggle, ToggleSettings.Name, "Toggle", TabSettings.Name)
				LunaSetText(Toggle.Title, ToggleSettings.Name)
				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" and Toggle:FindFirstChild("Desc") then
					LunaSetText(Toggle.Desc, ToggleSettings.Description)
				elseif Toggle:FindFirstChild("Desc") then
					Toggle.Desc.Visible = false
				end

				Toggle.UIStroke.Transparency = 1
				Toggle.Title.TextTransparency = 1
				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
					Toggle.Desc.TextTransparency = 1
				end

				TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
					TweenService:Create(Toggle.Desc, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
				end
				TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Toggle.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

				local function Set(bool)
					if bool then
						Toggle.toggle.color.Enabled = true
						tween(Toggle.toggle, {BackgroundTransparency = 0})

						Toggle.toggle.UIStroke.color.Enabled = true
						tween(Toggle.toggle.UIStroke, {Color = Color3.new(255,255,255)})

						tween(Toggle.toggle.val, {BackgroundColor3 = Color3.fromRGB(255,255,255), Position = UDim2.new(1,-23,0.5,0), BackgroundTransparency = 0.45})
					else
						Toggle.toggle.color.Enabled = false
						Toggle.toggle.UIStroke.color.Enabled = false

						Toggle.toggle.UIStroke.Color = Color3.fromRGB(97,97,97)

						tween(Toggle.toggle, {BackgroundTransparency = 1})

						tween(Toggle.toggle.val, {BackgroundColor3 = Color3.fromRGB(97,97,97), Position = UDim2.new(0,5,0.5,0), BackgroundTransparency = 0})
					end

					ToggleV.CurrentValue = bool
				end

				Toggle.Interact.MouseButton1Click:Connect(function()
					ToggleSettings.CurrentValue = not ToggleSettings.CurrentValue
					Set(ToggleSettings.CurrentValue)

					local Success, Response = pcall(function()
						ToggleSettings.Callback(ToggleSettings.CurrentValue)
					end)
					if not Success then
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Toggle.Title.Text = "Callback Error"
						LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
						wait(0.5)
						Toggle.Title.Text = ToggleSettings.Name
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				end)

				Toggle["MouseEnter"]:Connect(function()
					tween(Toggle.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Toggle["MouseLeave"]:Connect(function()
					tween(Toggle.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				if ToggleSettings.CurrentValue then
					Set(ToggleSettings.CurrentValue)
					local Success, Response = pcall(function()
						ToggleSettings.Callback(ToggleSettings.CurrentValue)
					end)
					if not Success then
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Toggle.Title.Text = "Callback Error"
						LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
						wait(0.5)
						Toggle.Title.Text = ToggleSettings.Name
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				end

				function ToggleV:UpdateState(State)
					ToggleSettings.CurrentValue = State
					Set(ToggleSettings.CurrentValue)
				end

				function ToggleV:Set(NewToggleSettings)

					NewToggleSettings = Kwargify({
						Name = ToggleSettings.Name,
						Description = ToggleSettings.Description,
						CurrentValue = ToggleSettings.CurrentValue,
						Callback = ToggleSettings.Callback
					}, NewToggleSettings or {})

					ToggleV.Settings = NewToggleSettings
					ToggleSettings = NewToggleSettings

					RegisterElement(Window, Toggle, ToggleSettings.Name, "Toggle", TabSettings.Name)
					Toggle.Title.Text = ToggleSettings.Name
					if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" and Toggle.Desc ~= nil then
						Toggle.Desc.Text = ToggleSettings.Description
					end

					Set(ToggleSettings.CurrentValue)

					ToggleV.CurrentValue = ToggleSettings.CurrentValue

					local Success, Response = pcall(function()
						ToggleSettings.Callback(ToggleSettings.CurrentValue)
					end)
					if not Success then
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0}):Play()
						Toggle.Title.Text = "Callback Error"
						LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
						wait(0.5)
						Toggle.Title.Text = ToggleSettings.Name
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				end

				function ToggleV:Destroy()
					Toggle.Visible = false
					Toggle:Destroy()
				end

				LunaUI.ThemeRemote:GetPropertyChangedSignal("Value"):Connect(function()
					Toggle.toggle.color.Color = Luna.ThemeGradient
					Toggle.toggle.UIStroke.color.Color = Luna.ThemeGradient
				end)

				if Flag then
					Luna.Options[Flag] = ToggleV
				end

				return ToggleV

			end

			-- Bind
			function Section:CreateBind(BindSettings, Flag)
				TabPage.Position = UDim2.new(0,0,0,28)
				local BindV = { Class = "Keybind", IgnoreConfig = false, Settings = BindSettings, Active = false }

				BindSettings = Kwargify({
					Name = "Bind",
					Description = nil,
					CurrentBind = "Q",
					HoldToInteract = false,
					Callback = function(Bind)
						
					end,

					OnChangedCallback = function(Bind)
						
					end,
				}, BindSettings or {})

				local CheckingForKey = false

				local Bind
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
					Bind = Elements.Template.BindDesc:Clone()
				else
					Bind = Elements.Template.Bind:Clone()
				end

				Bind.Visible = true
				Bind.Parent = TabPage

				RegisterElement(Window, Bind, BindSettings.Name, "Bind", TabSettings.Name)
				Bind.Title.Text = BindSettings.Name
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
					Bind.Desc.Text = BindSettings.Description
				end

				Bind.Title.TextTransparency = 1
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
					Bind.Desc.TextTransparency = 1
				end
				Bind.BindFrame.BackgroundTransparency = 1
				Bind.BindFrame.UIStroke.Transparency = 1
				Bind.BindFrame.BindBox.TextTransparency = 1

				TweenService:Create(Bind, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(Bind.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
					TweenService:Create(Bind.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
				end
				TweenService:Create(Bind.BindFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
				TweenService:Create(Bind.BindFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
				TweenService:Create(Bind.BindFrame.BindBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()


				Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				Bind.BindFrame.BindBox.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 42)

				Bind.BindFrame.BindBox.Focused:Connect(function()
					CheckingForKey = true
					Bind.BindFrame.BindBox.Text = ""
				end)

				Bind.BindFrame.BindBox.FocusLost:Connect(function()
					CheckingForKey = false
					if Bind.BindFrame.BindBox.Text == (nil or "") then
						Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
					end
				end)

				Bind["MouseEnter"]:Connect(function()
					tween(Bind.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Bind["MouseLeave"]:Connect(function()
					tween(Bind.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)
				UserInputService.InputBegan:Connect(function(input, processed)

					if CheckingForKey then
						if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Window.Bind then
							local SplitMessage = string.split(tostring(input.KeyCode), ".")
							local NewKeyNoEnum = SplitMessage[3]
							Bind.BindFrame.BindBox.Text = tostring(NewKeyNoEnum)
							BindSettings.CurrentBind = tostring(NewKeyNoEnum)
							local Success, Response = pcall(function()
								BindSettings.OnChangedCallback(BindSettings.CurrentBind)
							end)
							if not Success then
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
								Bind.Title.Text = "Callback Error"
								LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
								wait(0.5)
								Bind.Title.Text = BindSettings.Name
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
								TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
							end
							Bind.BindFrame.BindBox:ReleaseFocus()
						end
					elseif BindSettings.CurrentBind ~= nil and (input.KeyCode == Enum.KeyCode[BindSettings.CurrentBind] and not processed) then -- Test
						local Held = true
						local Connection
						Connection = input.Changed:Connect(function(prop)
							if prop == "UserInputState" then
								Connection:Disconnect()
								Held = false
							end
						end)

						if not BindSettings.HoldToInteract then
							BindV.Active = not BindV.Active
							local Success, Response = pcall(function()
								BindSettings.Callback(BindV.Active)
							end)
							if not Success then
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
								Bind.Title.Text = "Callback Error"
								LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
								wait(0.5)
								Bind.Title.Text = BindSettings.Name
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
								TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
								TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
							end
						else
							wait(0.1)
							if Held then
								local Loop; Loop = RunService.Stepped:Connect(function()
									if not Held then
										local Success, Response = pcall(function()
											BindSettings.Callback(false)
										end)
										if not Success then
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
											TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
											Bind.Title.Text = "Callback Error"
											LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
											wait(0.5)
											Bind.Title.Text = BindSettings.Name
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
											TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
										end 
										Loop:Disconnect()
									else
										local Success, Response = pcall(function()
											BindSettings.Callback(true)
										end)
										if not Success then
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
											TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
											Bind.Title.Text = "Callback Error"
											LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
											wait(0.5)
											Bind.Title.Text = BindSettings.Name
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
											TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
											TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
										end
									end
								end)	
							end
						end
					end
				end)

				Bind.BindFrame.BindBox:GetPropertyChangedSignal("Text"):Connect(function()
					TweenService:Create(Bind.BindFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 30)}):Play()
				end)

				function BindV:Set(NewBindSettings)

					NewBindSettings = Kwargify({
						Name = BindSettings.Name,
						Description = BindSettings.Description,
						CurrentBind =  BindSettings.CurrentBind,
						HoldToInteract = BindSettings.HoldToInteract,
						Callback = BindSettings.Callback
					}, NewBindSettings or {})

					BindV.Settings = NewBindSettings
					BindSettings = NewBindSettings

					RegisterElement(Window, Bind, BindSettings.Name, "Bind", TabSettings.Name)
					Bind.Title.Text = BindSettings.Name
					if BindSettings.Description ~= nil and BindSettings.Description ~= "" and Bind.Desc ~= nil then
						Bind.Desc.Text = BindSettings.Description
					end

					Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
					Bind.BindFrame.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 42)


					BindV.CurrentBind = BindSettings.CurrentBind
				end

				function BindV:Destroy()
					Bind.Visible = false
					Bind:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = BindV
				end

				return BindV

			end

			-- Dynamic Input
			function Section:CreateInput(InputSettings, Flag)
				TabPage.Position = UDim2.new(0,0,0,28)
				local InputV = { IgnoreConfig = false, Class = "Input", Settings = InputSettings }

				InputSettings = Kwargify({
					Name = "Dynamic Input",
					Description = nil,
					CurrentValue = "",
					PlaceholderText = "Input Placeholder",
					RemoveTextAfterFocusLost = false,
					Numeric = false,
					Enter = false,
					MaxCharacters = nil,
					Callback = function(Text)

					end,
				}, InputSettings or {})

				InputV.CurrentValue = InputSettings.CurrentValue

				local descriptionbool
				if InputSettings.Description ~= nil and InputSettings.Description ~= "" then
					descriptionbool = true
				end

				local Input 
				if descriptionbool then
					Input = Elements.Template.InputDesc:Clone()
				else
					Input = Elements.Template.Input:Clone()
				end

				RegisterElement(Window, Input, InputSettings.Name, "Input", TabSettings.Name)
				Input.Title.Text = InputSettings.Name
				if descriptionbool then LunaSetText(Input.Desc, InputSettings.Description) end
				Input.Visible = true
				Input.Parent = TabPage

				Input.BackgroundTransparency = 1
				Input.UIStroke.Transparency = 1
				Input.Title.TextTransparency = 1
				if descriptionbool then Input.Desc.TextTransparency = 1 end
				Input.InputFrame.BackgroundTransparency = 1
				Input.InputFrame.UIStroke.Transparency = 1
				Input.InputFrame.InputBox.TextTransparency = 1

				TweenService:Create(Input, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(Input.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				TweenService:Create(Input.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
				if descriptionbool then TweenService:Create(Input.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play() end
				TweenService:Create(Input.InputFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
				TweenService:Create(Input.InputFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
				TweenService:Create(Input.InputFrame.InputBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

				Input.InputFrame.InputBox.PlaceholderText = InputSettings.PlaceholderText
				Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 30)

				Input.InputFrame.InputBox.FocusLost:Connect(function(bleh)

					if InputSettings.Enter then
						if bleh then
							local Success, Response = pcall(function()
								InputSettings.Callback(Input.InputFrame.InputBox.Text)
								InputV.CurrentValue = Input.InputFrame.InputBox.Text
							end)
							if not Success then
								TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
								TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
								Input.Title.Text = "Callback Error"
								LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
								wait(0.5)
								Input.Title.Text = InputSettings.Name
								TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
								TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
								TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
							end
						end
					end

					if InputSettings.RemoveTextAfterFocusLost then
						Input.InputFrame.InputBox.Text = ""
					end

				end)

				if InputSettings.Numeric then
					Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
						local text = Input.InputFrame.InputBox.Text
						if not tonumber(text) and text ~= "." then
							Input.InputFrame.InputBox.Text = text:match("[0-9.]*") or ""
						end
					end)
				end

				Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
					if tonumber(InputSettings.MaxCharacters) then
						if (#Input.InputFrame.InputBox.Text - 1) == InputSettings.MaxCharacters then
							Input.InputFrame.InputBox.Text = Input.InputFrame.InputBox.Text:sub(1, InputSettings.MaxCharacters)
						end
					end
					TweenService:Create(Input.InputFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 30)}):Play()
					if not InputSettings.Enter then
						local Success, Response = pcall(function()
							InputSettings.Callback(Input.InputFrame.InputBox.Text)
						end)
						if not Success then
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Input.Title.Text = "Callback Error"
							LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
							wait(0.5)
							Input.Title.Text = InputSettings.Name
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
					end
					InputV.CurrentValue = Input.InputFrame.InputBox.Text				
				end)

				Input["MouseEnter"]:Connect(function()
					tween(Input.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Input["MouseLeave"]:Connect(function()
					tween(Input.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				function InputV:Set(NewInputSettings)

					NewInputSettings = Kwargify(InputSettings, NewInputSettings or {})

					InputV.Settings = NewInputSettings
					InputSettings = NewInputSettings

					RegisterElement(Window, Input, InputSettings.Name, "Input", TabSettings.Name)
					Input.Title.Text = InputSettings.Name
					if InputSettings.Description ~= nil and InputSettings.Description ~= "" and Input.Desc ~= nil then
						Input.Desc.Text = InputSettings.Description
					end

					Input.InputFrame.InputBox:CaptureFocus()
					Input.InputFrame.InputBox.Text = tostring(InputSettings.CurrentValue)
					Input.InputFrame.InputBox:ReleaseFocus()
					Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 42)

					InputV.CurrentValue = InputSettings.CurrentValue
				end

				function InputV:Destroy()
					Input.Visible = false
					Input:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = InputV
				end

				return InputV

			end

			-- Dropdown
			function Section:CreateDropdown(DropdownSettings, Flag)
				TabPage.Position = UDim2.new(0,0,0,28)
				local DropdownV = { IgnoreConfig = false, Class = "Dropdown", Settings = DropdownSettings}

				DropdownSettings = Kwargify({
					Name = "Dropdown",
					Description = nil,
					Options = {"Option 1", "Option 2"},
					CurrentOption = {"Option 1"},
					MultipleOptions = false,
					SpecialType = nil,
					Callback = function(Options)
						
					end,
				}, DropdownSettings or {})

				DropdownV.CurrentOption = DropdownSettings.CurrentOption

				local descriptionbool = false
				if DropdownSettings.Description ~= nil and DropdownSettings.Description ~= "" then
					descriptionbool = true
				end
				local closedsize
				local openedsize
				if descriptionbool then
					closedsize = 48
					openedsize = 170
				elseif not descriptionbool then
					closedsize = 38
					openedsize = 160
				end
				local opened = false

				local Dropdown
				if descriptionbool then Dropdown = Elements.Template.DropdownDesc:Clone() else Dropdown = Elements.Template.Dropdown:Clone() end

				RegisterElement(Window, Dropdown, DropdownSettings.Name, "Dropdown", TabSettings.Name)
				Dropdown.Title.Text = DropdownSettings.Name
				if descriptionbool then LunaSetText(Dropdown.Desc, DropdownSettings.Description) end

				Dropdown.Parent = TabPage
				Dropdown.Visible = true

				local function Toggle()
					opened = not opened
					if opened then
						tween(Dropdown.icon, {Rotation = 180})
						tween(Dropdown, {Size = UDim2.new(1, -25, 0, openedsize)})
					else
						tween(Dropdown.icon, {Rotation = 0})
						tween(Dropdown, {Size = UDim2.new(1, -25, 0, closedsize)})
					end
				end

				local function SafeCallback(param, c2)
					local Success, Response = pcall(function()
						DropdownSettings.Callback(param)
					end)
					if not Success then
						TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Dropdown.Title.Text = "Callback Error"
						LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
						wait(0.5)
						Dropdown.Title.Text = DropdownSettings.Name
						TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
					if Success and c2 then
						c2()
					end
				end

				-- Fixed By justhey
				Dropdown.Selected:GetPropertyChangedSignal("Text"):Connect(function()
					local text = Dropdown.Selected.Text:lower()
					for _, Item in ipairs(Dropdown.List:GetChildren()) do
						if Item:IsA("TextLabel") and Item.Name ~= "Template" then
							Item.Visible = text == "" or string.find(Item.Name:lower(), text, 1, true) ~= nil
						end
					end
				end)

				local function Clear()
					for _, option in ipairs(Dropdown.List:GetChildren()) do
						if option.ClassName == "TextLabel" and option.Name ~= "Template" then
							option:Destroy()
						end
					end
				end

				local function ActivateColorSingle(name)
					for _, Option in pairs(Dropdown.List:GetChildren()) do
						if Option.ClassName == "TextLabel" and Option.Name ~= "Template" then
							tween(Option, {BackgroundTransparency = 0.98})
						end
					end

					Toggle()
					LunaTweenDropdownOption(Dropdown.List, name, {BackgroundTransparency = 0.95, TextColor3 = Color3.fromRGB(240,240,240)})
				end

				local function Refresh()
					Clear()
					for i,v in pairs(DropdownSettings.Options) do
						local Option = Dropdown.List.Template:Clone()
						local optionhover = false
						Option.Text = v
						if v == "Template" then v = "Template (Name)" end
						Option.Name = v
						Option.Interact.MouseButton1Click:Connect(function()
							local bleh
							if DropdownSettings.MultipleOptions then
								if table.find(DropdownSettings.CurrentOption, v) then
									RemoveTable(DropdownSettings.CurrentOption, v)
									DropdownV.CurrentOption = DropdownSettings.CurrentOption
									if not optionhover then
										tween(Option, {TextColor3 = Color3.fromRGB(200,200,200)})
									end
									tween(Option, {BackgroundTransparency = 0.98})
								else
									table.insert(DropdownSettings.CurrentOption, v)
									DropdownV.CurrentOption = DropdownSettings.CurrentOption
									tween(Option, {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
								end
								bleh = DropdownSettings.CurrentOption
							else
								DropdownSettings.CurrentOption = {v}
								bleh = v
								DropdownV.CurrentOption = bleh
								ActivateColorSingle(v)
							end

							SafeCallback(bleh, function()
								if DropdownSettings.MultipleOptions then
									if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
										if #DropdownSettings.CurrentOption == 1 then
											Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
										elseif #DropdownSettings.CurrentOption == 0 then
											Dropdown.Selected.PlaceholderText = "None"
										else
											Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
										end
									else
										DropdownSettings.CurrentOption = {}
										Dropdown.Selected.PlaceholderText = "None"
									end
								end
								if not DropdownSettings.MultipleOptions then
									Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
								end
								Dropdown.Selected.Text = ""
							end)
						end)
						Option.Visible = true
						Option.Parent = Dropdown.List
						Option.MouseEnter:Connect(function()
							optionhover = true
							if Option.BackgroundTransparency == 0.95 then
								return
							else
								tween(Option, {TextColor3 = Color3.fromRGB(240,240,240)})
							end
						end)
						Option.MouseLeave:Connect(function()
							optionhover = false
							if Option.BackgroundTransparency == 0.95 then
								return
							else
								tween(Option, {TextColor3 = Color3.fromRGB(200,200,200)})
							end
						end)	
					end
				end

				local function PlayerTableRefresh()
					for i,v in pairs(DropdownSettings.Options) do
						table.remove(DropdownSettings.Options, i)
					end

					for i,v in pairs(Players:GetChildren()) do
						table.insert(DropdownSettings.Options, v.Name)
					end
				end

				Dropdown.Interact.MouseButton1Click:Connect(function()
					Toggle()
				end)

				Dropdown["MouseEnter"]:Connect(function()
					tween(Dropdown.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)

				Dropdown["MouseLeave"]:Connect(function()
					tween(Dropdown.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				if DropdownSettings.SpecialType == "Player" then

					for i,v in pairs(DropdownSettings.Options) do
						table.remove(DropdownSettings.Options, i)
					end
					PlayerTableRefresh()
					DropdownSettings.CurrentOption = DropdownSettings.Options[1]

					Players.PlayerAdded:Connect(function() PlayerTableRefresh() end)
					Players.PlayerRemoving:Connect(function() PlayerTableRefresh() end)

				end

				Refresh()

				if DropdownSettings.MultipleOptions then
					DropdownSettings.CurrentOption = LunaSanitizeDropdownCurrent(
						DropdownSettings.Options,
						DropdownSettings.CurrentOption,
						true
					) or {}
				else
					local single = LunaSanitizeDropdownCurrent(
						DropdownSettings.Options,
						DropdownSettings.CurrentOption,
						false
					)
					DropdownSettings.CurrentOption = single and {single} or {}
				end

				local bleh, ind = nil,0
				for i,v in pairs(DropdownSettings.CurrentOption) do
					ind = ind + 1
				end
				if ind == 1 then bleh = DropdownSettings.CurrentOption[1] else bleh = DropdownSettings.CurrentOption end
				pcall(function() SafeCallback(bleh) end)
				for _, Option in pairs(Dropdown.List:GetChildren()) do
					if Option.ClassName == "TextLabel" and Option.Name ~= "Template" then
						tween(Option, {TextColor3 = Color3.fromRGB(200,200,200), BackgroundTransparency = 0.98})
					end
				end
				if DropdownSettings.MultipleOptions then
					for _, name in pairs(DropdownSettings.CurrentOption) do
						LunaTweenDropdownOption(Dropdown.List, name, {TextColor3 = Color3.fromRGB(227,227,227), BackgroundTransparency = 0.95})
					end
				else
					LunaTweenDropdownOption(Dropdown.List, bleh, {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
				end

				if DropdownSettings.MultipleOptions then
					if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
						if #DropdownSettings.CurrentOption == 1 then
							Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
						elseif #DropdownSettings.CurrentOption == 0 then
							Dropdown.Selected.PlaceholderText = "None"
						else
							Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
						end
					else
						DropdownSettings.CurrentOption = {}
						Dropdown.Selected.PlaceholderText = "None"
					end
				else
					Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
				end
				Dropdown.Selected.Text = ""

				function DropdownV:Set(NewDropdownSettings)
					NewDropdownSettings = Kwargify(DropdownSettings, NewDropdownSettings or {})

					DropdownV.Settings = NewDropdownSettings
					DropdownSettings = NewDropdownSettings

					RegisterElement(Window, Dropdown, DropdownSettings.Name, "Dropdown", TabSettings.Name)
					Dropdown.Title.Text = DropdownSettings.Name
					if DropdownSettings.Description ~= nil and DropdownSettings.Description ~= "" and Dropdown.Desc ~= nil then
						Dropdown.Desc.Text = DropdownSettings.Description
					end

					if DropdownSettings.SpecialType == "Player" then

						for i,v in pairs(DropdownSettings.Options) do
							table.remove(DropdownSettings.Options, i)
						end
						PlayerTableRefresh()
						DropdownSettings.CurrentOption = DropdownSettings.Options[1]                    
						Players.PlayerAdded:Connect(function() PlayerTableRefresh() end)
						Players.PlayerRemoving:Connect(function() PlayerTableRefresh() end)

					end

					Refresh()

					if DropdownSettings.MultipleOptions then
						DropdownSettings.CurrentOption = LunaSanitizeDropdownCurrent(
							DropdownSettings.Options,
							DropdownSettings.CurrentOption,
							true
						) or {}
					else
						local single = LunaSanitizeDropdownCurrent(
							DropdownSettings.Options,
							DropdownSettings.CurrentOption,
							false
						)
						DropdownSettings.CurrentOption = single and {single} or {}
					end

					local bleh, ind = nil,0
					for i,v in pairs(DropdownSettings.CurrentOption) do
						ind = ind + 1
					end
					if ind == 1 then bleh = DropdownSettings.CurrentOption[1] else bleh = DropdownSettings.CurrentOption end
					pcall(function() SafeCallback(bleh) end)
					for _, Option in pairs(Dropdown.List:GetChildren()) do
						if Option.ClassName == "TextLabel" and Option.Name ~= "Template" then
							tween(Option, {TextColor3 = Color3.fromRGB(200,200,200), BackgroundTransparency = 0.98})
						end
					end
					if DropdownSettings.MultipleOptions then
						for _, name in pairs(DropdownSettings.CurrentOption) do
							LunaTweenDropdownOption(Dropdown.List, name, {TextColor3 = Color3.fromRGB(227,227,227), BackgroundTransparency = 0.95})
						end
					else
						LunaTweenDropdownOption(Dropdown.List, bleh, {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
					end

					if DropdownSettings.MultipleOptions then
						if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
							if #DropdownSettings.CurrentOption == 1 then
								Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
							elseif #DropdownSettings.CurrentOption == 0 then
								Dropdown.Selected.PlaceholderText = "None"
							else
								Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
							end
						else
							DropdownSettings.CurrentOption = {}
							Dropdown.Selected.PlaceholderText = "None"
						end
					else
						Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
					end
					Dropdown.Selected.Text = ""

				end

				function DropdownV:Destroy()
					Dropdown.Visible = false
					Dropdown:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = DropdownV
				end

				return DropdownV

			end

			-- Color Picker
			function Section:CreateColorPicker(ColorPickerSettings, Flag) -- by Rayfield/Throit
				TabPage.Position = UDim2.new(0,0,0,28)
				local ColorPickerV = {IgnoreClass = false, Class = "Colorpicker", Settings = ColorPickerSettings}

				ColorPickerSettings = Kwargify({
					Name = "Color Picker",
					Color = Color3.fromRGB(255,255,255),
					Callback = function(Value)
						
					end
				}, ColorPickerSettings or {})

				local function Color3ToHex(color)
					return string.format("#%02X%02X%02X", math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255))
				end

				ColorPickerV.Color = Color3ToHex(ColorPickerSettings.Color)

				local closedsize = UDim2.new(0, 75, 0, 22)
				local openedsize = UDim2.new(0, 219, 0, 129)

				local ColorPicker = Elements.Template.ColorPicker:Clone()
				local Background = ColorPicker.CPBackground
				local Display = Background.Display
				local Main = Background.MainCP
				local Slider = ColorPicker.ColorSlider

				RegisterElement(Window, ColorPicker, ColorPickerSettings.Name, "ColorPicker", TabSettings.Name)
				ColorPicker.Title.Text = ColorPickerSettings.Name
				ColorPicker.Visible = true
				ColorPicker.Parent = TabPage
				ColorPicker.Size = UDim2.new(1.042, -25,0, 38)
				Background.Size = closedsize
				Display.BackgroundTransparency = 0

				ColorPicker["MouseEnter"]:Connect(function()
					tween(ColorPicker.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
				end)
				ColorPicker["MouseLeave"]:Connect(function()
					tween(ColorPicker.UIStroke, {Color = Color3.fromRGB(64,61,76)})
				end)

				local function SafeCallback(param, c2)
					local Success, Response = pcall(function()
						ColorPickerSettings.Callback(param)
					end)
					if not Success then
						TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						ColorPicker.Title.Text = "Callback Error"
						LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
						wait(0.5)
						ColorPicker.Title.Text = ColorPickerSettings.Name
						TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
					if Success and c2 then
						c2()
					end
				end

				local opened = false

				local mouse = game.Players.LocalPlayer:GetMouse()
				Main.Image = "http://www.roblox.com/asset/?id=11415645739"
				local mainDragging = false 
				local sliderDragging = false 
				ColorPicker.Interact.MouseButton1Down:Connect(function()
					if not opened then
						opened = true 
						tween(ColorPicker, {Size = UDim2.new( 1.042, -25,0, 165)}, nil, TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
						tween(Background, {Size = openedsize})
						tween(Display, {BackgroundTransparency = 1})
					else
						opened = false
						tween(ColorPicker, {Size = UDim2.new(1.042, -25,0, 38)}, nil, TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
						tween(Background, {Size = closedsize})
						tween(Display, {BackgroundTransparency = 0})
					end
				end)
				UserInputService.InputEnded:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
						mainDragging = false
						sliderDragging = false
					end end)
				Main.MouseButton1Down:Connect(function()
					if opened then
						mainDragging = true 
					end
				end)
				Main.MainPoint.MouseButton1Down:Connect(function()
					if opened then
						mainDragging = true 
					end
				end)
				Slider.MouseButton1Down:Connect(function()
					sliderDragging = true 
				end)
				Slider.SliderPoint.MouseButton1Down:Connect(function()
					sliderDragging = true 
				end)
				local h,s,v = ColorPickerSettings.Color:ToHSV()
				local color = Color3.fromHSV(h,s,v) 
				local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
				local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
				local function setDisplay(hp,sp,vp)
					--Main
					Main.MainPoint.Position = UDim2.new(s,-Main.MainPoint.AbsoluteSize.X/2,1-v,-Main.MainPoint.AbsoluteSize.Y/2)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(hp,sp,vp)
					Background.BackgroundColor3 = Color3.fromHSV(hp,1,1)
					Display.BackgroundColor3 = Color3.fromHSV(hp,sp,vp)
					--Slider 
					local x = hp * Slider.AbsoluteSize.X
					Slider.SliderPoint.Position = UDim2.new(0,x-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
					Slider.SliderPoint.ImageColor3 = Color3.fromHSV(hp,1,1)
					local color = Color3.fromHSV(hp,sp,vp) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RInput.InputBox.Text = tostring(r)
					ColorPicker.GInput.InputBox.Text = tostring(g)
					ColorPicker.BInput.InputBox.Text = tostring(b)
					hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					ColorPicker.HexInput.InputBox.Text = hex
				end
				setDisplay(h,s,v)
				ColorPicker.HexInput.InputBox.FocusLost:Connect(function()
					if not pcall(function()
							local r, g, b = string.match(ColorPicker.HexInput.InputBox.Text, "^#?(%w%w)(%w%w)(%w%w)$")
							local rgbColor = Color3.fromRGB(tonumber(r, 16),tonumber(g, 16), tonumber(b, 16))
							h,s,v = rgbColor:ToHSV()
							hex = ColorPicker.HexInput.InputBox.Text
							setDisplay()
							ColorPickerSettings.Color = rgbColor
						end) 
					then 
						ColorPicker.HexInput.InputBox.Text = hex 
					end
					local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					SafeCallback( Color3.fromRGB(r,g,b))
				end)
				--RGB
				local function rgbBoxes(box,toChange)
					local value = tonumber(box.Text) 
					local color = Color3.fromHSV(h,s,v) 
					local oldR,oldG,oldB = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					local save 
					if toChange == "R" then save = oldR;oldR = value elseif toChange == "G" then save = oldG;oldG = value else save = oldB;oldB = value end
					if value then 
						value = math.clamp(value,0,255)
						h,s,v = Color3.fromRGB(oldR,oldG,oldB):ToHSV()
						setDisplay()
					else 
						box.Text = tostring(save)
					end
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
				end
				ColorPicker.RInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.RInput.InputBox,"R")
					SafeCallback(Color3.fromRGB(r,g,b))
				end)
				ColorPicker.GInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.GInput.InputBox,"G")
					SafeCallback(Color3.fromRGB(r,g,b))
				end)
				ColorPicker.BInput.InputBox.FocusLost:connect(function()
					rgbBoxes(ColorPicker.BInput.InputBox,"B")
					SafeCallback(Color3.fromRGB(r,g,b))
				end)
				RunService.RenderStepped:connect(function()
					if mainDragging then 
						local localX = math.clamp(mouse.X-Main.AbsolutePosition.X,0,Main.AbsoluteSize.X)
						local localY = math.clamp(mouse.Y-Main.AbsolutePosition.Y,0,Main.AbsoluteSize.Y)
						Main.MainPoint.Position = UDim2.new(0,localX-Main.MainPoint.AbsoluteSize.X/2,0,localY-Main.MainPoint.AbsoluteSize.Y/2)
						s = localX / Main.AbsoluteSize.X
						v = 1 - (localY / Main.AbsoluteSize.Y)
						Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
						Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
						Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
						local color = Color3.fromHSV(h,s,v) 
						local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
						ColorPicker.RInput.InputBox.Text = tostring(r)
						ColorPicker.GInput.InputBox.Text = tostring(g)
						ColorPicker.BInput.InputBox.Text = tostring(b)
						ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
						SafeCallback(Color3.fromRGB(r,g,b))
						ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
						ColorPickerV.Color = ColorPickerSettings.Color
					end
					if sliderDragging then 
						local localX = math.clamp(mouse.X-Slider.AbsolutePosition.X,0,Slider.AbsoluteSize.X)
						h = localX / Slider.AbsoluteSize.X
						Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
						Slider.SliderPoint.Position = UDim2.new(0,localX-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
						Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
						Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
						Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
						local color = Color3.fromHSV(h,s,v) 
						local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
						ColorPicker.RInput.InputBox.Text = tostring(r)
						ColorPicker.GInput.InputBox.Text = tostring(g)
						ColorPicker.BInput.InputBox.Text = tostring(b)
						ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
						SafeCallback(Color3.fromRGB(r,g,b))
						ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
						ColorPickerV.Color = ColorPickerSettings.Color
					end
				end)

				function ColorPickerV:Set(NewColorPickerSettings)

					NewColorPickerSettings = Kwargify(ColorPickerSettings, NewColorPickerSettings or {})

					ColorPickerV.Settings = NewColorPickerSettings
					ColorPickerSettings = NewColorPickerSettings

					RegisterElement(Window, ColorPicker, ColorPickerSettings.Name, "ColorPicker", TabSettings.Name)
					ColorPicker.Title.Text = ColorPickerSettings.Name
					ColorPicker.Visible = true

					local h,s,v = ColorPickerSettings.Color:ToHSV()
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					ColorPicker.HexInput.InputBox.Text = hex
					setDisplay(h,s,v)
					SafeCallback(Color3.fromRGB(r,g,b))

					ColorPickerV.Color = ColorPickerSettings.Color
				end

				function ColorPickerV:Destroy()
					ColorPicker:Destroy()
				end

				if Flag then
					Luna.Options[Flag] = ColorPickerV
				end

				SafeCallback(ColorPickerSettings.Color)

				return ColorPickerV
			end

			return Section

		end

		-- Divider (optional centered label)
		function Tab:CreateDivider(DividerSettings)
			local text
			if type(DividerSettings) == "string" then
				text = DividerSettings
			elseif type(DividerSettings) == "table" then
				text = DividerSettings.Text
			end

			local b = Elements.Template.Divider:Clone()
			b.Parent = TabPage
			b.Line.BackgroundTransparency = 1
			tween(b.Line, {BackgroundTransparency = 0})

			if text and text ~= "" then
				local line = b.Line
				line.AnchorPoint = Vector2.new(0, 0.5)
				line.Position = UDim2.new(0, 0, 0.5, 0)
				line.Size = UDim2.new(0.5, -45, 0, line.Size.Y.Offset)

				local rightLine = line:Clone()
				rightLine.Name = RandomName()
				rightLine.AnchorPoint = Vector2.new(1, 0.5)
				rightLine.Position = UDim2.new(1, 0, 0.5, 0)
				rightLine.Size = UDim2.new(0.5, -45, 0, line.Size.Y.Offset)
				rightLine.Parent = b
				rightLine.BackgroundTransparency = 1
				tween(rightLine, {BackgroundTransparency = 0})

				local label = Instance.new("TextLabel")
				label.Name = RandomName()
				label.BackgroundTransparency = 1
				label.AnchorPoint = Vector2.new(0.5, 0.5)
				label.Position = UDim2.fromScale(0.5, 0.5)
				label.Size = UDim2.new(0, 80, 0, 18)
				label.AutomaticSize = Enum.AutomaticSize.X
				label.Text = tostring(text)
				label.Font = Enum.Font.GothamMedium
				label.TextSize = 12
				label.TextColor3 = Color3.fromRGB(200, 200, 210)
				label.TextTransparency = 1
				label.Parent = b
				tween(label, {TextTransparency = 0.15})
			end

			return b
		end

		-- Button
		function Tab:CreateButton(ButtonSettings)

			ButtonSettings = Kwargify({
				Name = "Button",
				Description = nil,
				Callback = function()

				end,
			}, ButtonSettings or {})

			local ButtonV = {
				Hover = false,
				Settings = ButtonSettings
			}


			local hasDesc = type(ButtonSettings.Description) == "string" and ButtonSettings.Description ~= ""
			local Button = hasDesc and Elements.Template.ButtonDesc:Clone() or Elements.Template.Button:Clone()
			RegisterElement(Window, Button, ButtonSettings.Name, "Button", TabSettings.Name)
			LunaSetText(Button.Title, ButtonSettings.Name)
			if hasDesc and Button:FindFirstChild("Desc") then
				LunaSetText(Button.Desc, ButtonSettings.Description)
			elseif Button:FindFirstChild("Desc") then
				Button.Desc.Visible = false
			end
			Button.Visible = true
			Button.Parent = TabPage

			local btnStroke = LunaFindStroke(Button)
			local btnTitle = LunaFindTitle(Button)
			if btnStroke then btnStroke.Transparency = 1 end
			if btnTitle then btnTitle.TextTransparency = 1 end
			if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
				local btnDesc = Button:FindFirstChild("Desc")
				if btnDesc then btnDesc.TextTransparency = 1 end
			end

			TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			if btnStroke then
				TweenService:Create(btnStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			end
			if btnTitle then
				TweenService:Create(btnTitle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end
			if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" then
				local btnDescTween = Button:FindFirstChild("Desc")
				if btnDescTween then
					TweenService:Create(btnDescTween, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
				end
			end

			Button.Interact["MouseButton1Click"]:Connect(function()
				local Success,Response = pcall(ButtonSettings.Callback)

				if not Success then
					TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					if btnStroke then
						TweenService:Create(btnStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					end
					if btnTitle then btnTitle.Text = "Callback Error" end
					LunaCallbackErrorNotification(Response, ButtonSettings, BindSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
					wait(0.5)
					if btnTitle then LunaSetText(btnTitle, ButtonSettings.Name) end
					TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Button, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					if btnStroke then
						TweenService:Create(btnStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				else
					LunaTweenStroke(Button, {Color = Color3.fromRGB(136, 131, 163)})
					wait(0.2)
					if ButtonV.Hover then
						LunaTweenStroke(Button, {Color = Color3.fromRGB(87, 84, 104)})
					else
						LunaTweenStroke(Button, {Color = Color3.fromRGB(64,61,76)})
					end
				end
			end)

			Button["MouseEnter"]:Connect(function()
				ButtonV.Hover = true
				LunaTweenStroke(Button, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Button["MouseLeave"]:Connect(function()
				ButtonV.Hover = false
				LunaTweenStroke(Button, {Color = Color3.fromRGB(64,61,76)})
			end)

			function ButtonV:Set(ButtonSettings2)
				ButtonSettings2 = Kwargify({
					Name = ButtonSettings.Name,
					Description = ButtonSettings.Description,
					Callback = ButtonSettings.Callback
				}, ButtonSettings2 or {})

				ButtonSettings = ButtonSettings2
				ButtonV.Settings = ButtonSettings2

				RegisterElement(Window, Button, ButtonSettings.Name, "Button", TabSettings.Name)
				LunaSetText(Button.Title, ButtonSettings.Name)
				if ButtonSettings.Description ~= nil and ButtonSettings.Description ~= "" and Button.Desc ~= nil then
					LunaSetText(Button.Desc, ButtonSettings.Description)
				end
			end

			function ButtonV:Destroy()
				Button.Visible = false
				Button:Destroy()
			end

			return ButtonV
		end

		-- Label
		function Tab:CreateLabel(LabelSettings)

			local LabelV = {}

			LabelSettings = Kwargify({
				Text = "Label",
				Style = 1
			}, LabelSettings or {}) 

			LabelV.Settings = LabelSettings

			local Label
			if LabelSettings.Style == 1 then
				Label = Elements.Template.Label:Clone()
			elseif LabelSettings.Style == 2 then
				Label = Elements.Template.Info:Clone()
			elseif LabelSettings.Style == 3 then
				Label = Elements.Template.Warn:Clone()
			end

			LunaSetText(Label.Text, LabelSettings.Text)
			Label.Visible = true
			Label.Parent = TabPage

			Label.BackgroundTransparency = 1
			Label.UIStroke.Transparency = 1
			Label.Text.TextTransparency = 1

			if LabelSettings.Style ~= 1 then
				TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.8}):Play()
			else
				TweenService:Create(Label, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
			end
			TweenService:Create(Label.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Label.Text, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

			function LabelV:Set(NewLabel)
				LabelSettings.Text = NewLabel
				LabelV.Settings = LabelSettings
				Label.Text.Text = NewLabel
			end

			function LabelV:Destroy()
				Label.Visible = false
				Label:Destroy()
			end

			return LabelV
		end

		-- Paragraph
		function Tab:CreateParagraph(ParagraphSettings)

			ParagraphSettings = Kwargify({
				Title = "Paragraph",
				Text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis lacus sed tempus eleifend. Mauris interdum bibendum felis, in tempor augue egestas vel. Praesent tristique consectetur ex, eu pretium sem placerat non. Vestibulum a nisi sit amet augue facilisis consectetur sit amet et nunc. Integer fermentum ornare cursus. Pellentesque sed ultricies metus, ut egestas metus. Vivamus auctor erat ac sapien vulputate, nec ultricies sem tempor. Quisque leo lorem, faucibus nec pulvinar nec, congue eu velit. Duis sodales massa efficitur imperdiet ultrices. Donec eros ipsum, ornare pharetra purus aliquam, tincidunt elementum nisi. Ut mi tortor, feugiat eget nunc vitae, facilisis interdum dui. Vivamus ullamcorper nunc dui, a dapibus nisi pretium ac. Integer eleifend placerat nibh, maximus malesuada tellus. Cras in justo in ligula scelerisque suscipit vel vitae quam."
			}, ParagraphSettings or {})

			local ParagraphV = {
				Settings = ParagraphSettings
			}

			local Paragraph = Elements.Template.Paragraph:Clone()
			local ParaTitle = LunaFindTitle(Paragraph)
			local ParaText = LunaFindBodyText(Paragraph)
			if ParaTitle then LunaSetText(ParaTitle, ParagraphSettings.Title) end
			if ParaText then LunaSetText(ParaText, ParagraphSettings.Text) end
			Paragraph.Visible = true
			Paragraph.Parent = TabPage

			Paragraph.BackgroundTransparency = 1
			local paraStroke = LunaFindStroke(Paragraph)
			if paraStroke then paraStroke.Transparency = 1 end
			if ParaTitle then ParaTitle.TextTransparency = 1 end
			if ParaText then ParaText.TextTransparency = 1 end

			TweenService:Create(Paragraph, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 1}):Play()
			if paraStroke then
				TweenService:Create(paraStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			end
			if ParaTitle then
				TweenService:Create(ParaTitle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end
			if ParaText then
				TweenService:Create(ParaText, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end

			function ParagraphV:Update()
				if not ParaText then return end
				ParaText.Size = UDim2.new(ParaText.Size.X.Scale, ParaText.Size.X.Offset, 0, math.huge)
				ParaText.Size = UDim2.new(ParaText.Size.X.Scale, ParaText.Size.X.Offset, 0, ParaText.TextBounds.Y)
				tween(Paragraph, {Size = UDim2.new(Paragraph.Size.X.Scale, Paragraph.Size.X.Offset, 0, ParaText.TextBounds.Y + 40)})
			end

			function ParagraphV:Set(NewParagraphSettings)

				NewParagraphSettings = Kwargify({
					Title = ParagraphSettings.Title,
					Text = ParagraphSettings.Text
				}, NewParagraphSettings or {})

				ParagraphV.Settings = NewParagraphSettings

				if ParaTitle and NewParagraphSettings.Title then
					LunaSetText(ParaTitle, NewParagraphSettings.Title)
				end
				if ParaText and NewParagraphSettings.Text ~= nil then
					LunaSetText(ParaText, NewParagraphSettings.Text)
				end

				ParagraphV:Update()

			end

			function ParagraphV:Destroy()
				Paragraph.Visible = false
				Paragraph:Destroy()
			end

			ParagraphV:Update()

			return ParagraphV
		end

		-- Slider
		function Tab:CreateSlider(SliderSettings, Flag)
			local SliderV = { IgnoreConfig = false, Class = "Slider", Settings = SliderSettings }

			SliderSettings = Kwargify({
				Name = "Slider",
				Range = {0, 200},
				Increment = 1,
				CurrentValue = 100,
				Callback = function(Value)

				end,
			}, SliderSettings or {})

			local SLDragging = false
			local Slider = Elements.Template.Slider:Clone()
			RegisterElement(Window, Slider, SliderSettings.Name, "Slider", TabSettings.Name)
			Slider.Title.Text = SliderSettings.Name
			Slider.Visible = true
			Slider.Parent = TabPage

			Slider.BackgroundTransparency = 1
			Slider.UIStroke.Transparency = 1
			Slider.Title.TextTransparency = 1

			TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Slider.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

			Slider.Main.Progress.Size =	UDim2.new(0, Slider.Main.AbsoluteSize.X * ((SliderSettings.CurrentValue + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (SliderSettings.CurrentValue / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)

			Slider.Value.Text = tostring(SliderSettings.CurrentValue)
			SliderV.CurrentValue = Slider.Value.Text

			SliderSettings.Callback(SliderSettings.CurrentValue)

			Slider["MouseEnter"]:Connect(function()
				tween(Slider.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Slider["MouseLeave"]:Connect(function()
				tween(Slider.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			Slider.Interact.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
					SLDragging = true 
				end 
			end)

			Slider.Interact.InputEnded:Connect(function(Input) 
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
					SLDragging = false 
				end 
			end)

			Slider.Interact.MouseButton1Down:Connect(function()
				local Current = Slider.Main.Progress.AbsolutePosition.X + Slider.Main.Progress.AbsoluteSize.X
				local Start = Current
				local Location
				local Loop; Loop = RunService.Stepped:Connect(function()
					if SLDragging then
						Location = UserInputService:GetMouseLocation().X
						Current = Current + 0.025 * (Location - Start)

						if Location < Slider.Main.AbsolutePosition.X then
							Location = Slider.Main.AbsolutePosition.X
						elseif Location > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
							Location = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
						end

						if Current < Slider.Main.AbsolutePosition.X + 5 then
							Current = Slider.Main.AbsolutePosition.X + 5
						elseif Current > Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X then
							Current = Slider.Main.AbsolutePosition.X + Slider.Main.AbsoluteSize.X
						end

						if Current <= Location and (Location - Start) < 0 then
							Start = Location
						elseif Current >= Location and (Location - Start) > 0 then
							Start = Location
						end
						Slider.Main.Progress.Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X, 1, 0)
						local NewValue = SliderSettings.Range[1] + (Location - Slider.Main.AbsolutePosition.X) / Slider.Main.AbsoluteSize.X * (SliderSettings.Range[2] - SliderSettings.Range[1])

						NewValue = math.floor(NewValue / SliderSettings.Increment + 0.5) * (SliderSettings.Increment * 10000000) / 10000000

						Slider.Value.Text = tostring(NewValue)

						if SliderSettings.CurrentValue ~= NewValue then
							local Success, Response = pcall(function()
								SliderSettings.Callback(NewValue)
							end)
							if not Success then
								TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
								TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
								TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
								Slider.Title.Text = "Callback Error"
								LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
								wait(0.5)
								Slider.Title.Text = SliderSettings.Name
								TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
								TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
								TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
							end

							SliderSettings.CurrentValue = NewValue
							SliderV.CurrentValue = SliderSettings.CurrentValue
						end
					else
						TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.1, Enum.EasingStyle.Back, Enum.EasingDirection.In, 0, false), {Size = UDim2.new(0, Location - Slider.Main.AbsolutePosition.X > 5 and Location - Slider.Main.AbsolutePosition.X or 5, 1, 0)}):Play()
						Loop:Disconnect()
					end
				end)
			end)

			local function Set(NewVal, bleh)

				NewVal = NewVal or SliderSettings.CurrentValue

				TweenService:Create(Slider.Main.Progress, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Size = UDim2.new(0, Slider.Main.AbsoluteSize.X * ((NewVal + SliderSettings.Range[1]) / (SliderSettings.Range[2] - SliderSettings.Range[1])) > 5 and Slider.Main.AbsoluteSize.X * (NewVal / (SliderSettings.Range[2] - SliderSettings.Range[1])) or 5, 1, 0)}):Play()
				if not bleh then Slider.Value.Text = tostring(NewVal) end
				local Success, Response = pcall(function()
					SliderSettings.Callback(NewVal)
				end)
				if not Success then
					TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Slider.Title.Text = "Callback Error"
					LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
					wait(0.5)
					Slider.Title.Text = SliderSettings.Name
					TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Slider, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(30, 33, 40)}):Play()
					TweenService:Create(Slider.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end

				SliderSettings.CurrentValue = NewVal
				SliderV.CurrentValue = SliderSettings.CurrentValue

			end

			function SliderV:UpdateValue(Value)
				Set(tonumber(Value))
			end 

			Slider.Value:GetPropertyChangedSignal("Text"):Connect(function()
				local text = Slider.Value.Text
				if not tonumber(text) and text ~= "." then
					Slider.Value.Text = text:match("[0-9.]*") or ""
				end
				if SliderSettings.Range[2] < (tonumber(Slider.Value.Text) or 0) then Slider.Value.Text = SliderSettings.Range[2] end
				Slider.Value.Size = UDim2.fromOffset(Slider.Value.TextBounds.X, 23)
				Set(tonumber(Slider.Value.Text), true)
			end)

			function SliderV:Set(NewSliderSettings)
				NewSliderSettings = Kwargify({
					Name = SliderSettings.Name,
					Range = SliderSettings.Range,
					Increment = SliderSettings.Increment,
					CurrentValue = SliderSettings.CurrentValue,
					Callback = SliderSettings.Callback
				}, NewSliderSettings or {})

				SliderSettings = NewSliderSettings
				SliderV.Settings = NewSliderSettings

				RegisterElement(Window, Slider, SliderSettings.Name, "Slider", TabSettings.Name)
				Slider.Title.Text = SliderSettings.Name

				Set()

			end

			function SliderV:Destroy()
				Slider.Visible = false
				Slider:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = SliderV
			end

			LunaUI.ThemeRemote:GetPropertyChangedSignal("Value"):Connect(function()
				Slider.Main.color.Color = Luna.ThemeGradient
				Slider.Main.UIStroke.color.Color = Luna.ThemeGradient
			end)

			return SliderV

		end

		-- Toggle
		function Tab:CreateToggle(ToggleSettings, Flag)    
			local ToggleV = { IgnoreConfig = false, Class = "Toggle" }

			ToggleSettings = Kwargify({
				Name = "Toggle",
				Description = nil,
				CurrentValue = false,
				Callback = function(Value)
				end,
			}, ToggleSettings or {})


			local Toggle

			if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
				Toggle = Elements.Template.ToggleDesc:Clone()
			else
				Toggle = Elements.Template.Toggle:Clone()
			end

			Toggle.Visible = true
			Toggle.Parent = TabPage

			RegisterElement(Window, Toggle, ToggleSettings.Name, "Toggle", TabSettings.Name)
			LunaSetText(Toggle.Title, ToggleSettings.Name)
			if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" and Toggle:FindFirstChild("Desc") then
				LunaSetText(Toggle.Desc, ToggleSettings.Description)
			elseif Toggle:FindFirstChild("Desc") then
				Toggle.Desc.Visible = false
			end

			Toggle.UIStroke.Transparency = 1
			Toggle.Title.TextTransparency = 1
			if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
				Toggle.Desc.TextTransparency = 1
			end

			TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" then
				TweenService:Create(Toggle.Desc, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end
			TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Toggle.Title, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	

			local function Set(bool)
				if bool then
					Toggle.toggle.color.Enabled = true
					tween(Toggle.toggle, {BackgroundTransparency = 0})

					Toggle.toggle.UIStroke.color.Enabled = true
					tween(Toggle.toggle.UIStroke, {Color = Color3.new(255,255,255)})

					tween(Toggle.toggle.val, {BackgroundColor3 = Color3.fromRGB(255,255,255), Position = UDim2.new(1,-23,0.5,0), BackgroundTransparency = 0.45})
				else
					Toggle.toggle.color.Enabled = false
					Toggle.toggle.UIStroke.color.Enabled = false

					Toggle.toggle.UIStroke.Color = Color3.fromRGB(97,97,97)

					tween(Toggle.toggle, {BackgroundTransparency = 1})

					tween(Toggle.toggle.val, {BackgroundColor3 = Color3.fromRGB(97,97,97), Position = UDim2.new(0,5,0.5,0), BackgroundTransparency = 0})
				end

				ToggleV.CurrentValue = bool
			end

			Toggle.Interact.MouseButton1Click:Connect(function()
				ToggleSettings.CurrentValue = not ToggleSettings.CurrentValue
				Set(ToggleSettings.CurrentValue)

				local Success, Response = pcall(function()
					ToggleSettings.Callback(ToggleSettings.CurrentValue)
				end)
				if not Success then
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Toggle.Title.Text = "Callback Error"
					LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
					wait(0.5)
					Toggle.Title.Text = ToggleSettings.Name
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
			end)

			Toggle["MouseEnter"]:Connect(function()
				tween(Toggle.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Toggle["MouseLeave"]:Connect(function()
				tween(Toggle.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			if ToggleSettings.CurrentValue then
				Set(ToggleSettings.CurrentValue)
				local Success, Response = pcall(function()
					ToggleSettings.Callback(ToggleSettings.CurrentValue)
				end)
				if not Success then
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Toggle.Title.Text = "Callback Error"
					LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
					wait(0.5)
					Toggle.Title.Text = ToggleSettings.Name
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
			end

			function ToggleV:UpdateState(State)
				ToggleSettings.CurrentValue = State
				Set(ToggleSettings.CurrentValue)
			end

			function ToggleV:Set(NewToggleSettings)

				NewToggleSettings = Kwargify({
					Name = ToggleSettings.Name,
					Description = ToggleSettings.Description,
					CurrentValue = ToggleSettings.CurrentValue,
					Callback = ToggleSettings.Callback
				}, NewToggleSettings or {})

				ToggleV.Settings = NewToggleSettings
				ToggleSettings = NewToggleSettings

				RegisterElement(Window, Toggle, ToggleSettings.Name, "Toggle", TabSettings.Name)
				Toggle.Title.Text = ToggleSettings.Name
				if ToggleSettings.Description ~= nil and ToggleSettings.Description ~= "" and Toggle.Desc ~= nil then
					Toggle.Desc.Text = ToggleSettings.Description
				end

				Set(ToggleSettings.CurrentValue)

				ToggleV.CurrentValue = ToggleSettings.CurrentValue

				local Success, Response = pcall(function()
					ToggleSettings.Callback(ToggleSettings.CurrentValue)
				end)
				if not Success then
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0}):Play()
					Toggle.Title.Text = "Callback Error"
					LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
					wait(0.5)
					Toggle.Title.Text = ToggleSettings.Name
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Toggle, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Toggle.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
			end

			function ToggleV:Destroy()
				Toggle.Visible = false
				Toggle:Destroy()
			end

			LunaUI.ThemeRemote:GetPropertyChangedSignal("Value"):Connect(function()
				Toggle.toggle.color.Color = Luna.ThemeGradient
				Toggle.toggle.UIStroke.color.Color = Luna.ThemeGradient
			end)

			if Flag then
				Luna.Options[Flag] = ToggleV
			end

			return ToggleV

		end

		-- Bind
		function Tab:CreateBind(BindSettings, Flag)
			local BindV = { Class = "Keybind", IgnoreConfig = false, Settings = BindSettings, Active = false }

			BindSettings = Kwargify({
				Name = "Bind",
				Description = nil,
				CurrentBind = "Q",
				HoldToInteract = false,
				Callback = function(Bind)
					
				end,

				OnChangedCallback = function(Bind)
					
				end,
			}, BindSettings or {})

			local CheckingForKey = false

			local Bind
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind = Elements.Template.BindDesc:Clone()
			else
				Bind = Elements.Template.Bind:Clone()
			end

			Bind.Visible = true
			Bind.Parent = TabPage

			RegisterElement(Window, Bind, BindSettings.Name, "Bind", TabSettings.Name)
			Bind.Title.Text = BindSettings.Name
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind.Desc.Text = BindSettings.Description
			end

			Bind.Title.TextTransparency = 1
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind.Desc.TextTransparency = 1
			end
			Bind.BindFrame.BackgroundTransparency = 1
			Bind.BindFrame.UIStroke.Transparency = 1
			Bind.BindFrame.BindBox.TextTransparency = 1

			TweenService:Create(Bind, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Bind.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				TweenService:Create(Bind.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end
			TweenService:Create(Bind.BindFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
			TweenService:Create(Bind.BindFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
			TweenService:Create(Bind.BindFrame.BindBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()


			Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
			Bind.BindFrame.BindBox.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 42)

			Bind.BindFrame.BindBox.Focused:Connect(function()
				CheckingForKey = true
				Bind.BindFrame.BindBox.Text = ""
			end)

			Bind.BindFrame.BindBox.FocusLost:Connect(function()
				CheckingForKey = false
				if Bind.BindFrame.BindBox.Text == (nil or "") then
					Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				end
			end)

			Bind["MouseEnter"]:Connect(function()
				tween(Bind.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Bind["MouseLeave"]:Connect(function()
				tween(Bind.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)
			UserInputService.InputBegan:Connect(function(input, processed)

				if CheckingForKey then
					if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Window.Bind then
						local SplitMessage = string.split(tostring(input.KeyCode), ".")
						local NewKeyNoEnum = SplitMessage[3]
						Bind.BindFrame.BindBox.Text = tostring(NewKeyNoEnum)
						BindSettings.CurrentBind = tostring(NewKeyNoEnum)
						local Success, Response = pcall(function()
							BindSettings.OnChangedCallback(BindSettings.CurrentBind)
						end)
						if not Success then
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Bind.Title.Text = "Callback Error"
							LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
							wait(0.5)
							Bind.Title.Text = BindSettings.Name
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
						Bind.BindFrame.BindBox:ReleaseFocus()
					end
				elseif BindSettings.CurrentBind ~= nil and (input.KeyCode == Enum.KeyCode[BindSettings.CurrentBind] and not processed) then -- Test
					local Held = true
					local Connection
					Connection = input.Changed:Connect(function(prop)
						if prop == "UserInputState" then
							Connection:Disconnect()
							Held = false
						end
					end)

					if not BindSettings.HoldToInteract then
						BindV.Active = not BindV.Active
						local Success, Response = pcall(function()
							BindSettings.Callback(BindV.Active)
						end)
						if not Success then
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Bind.Title.Text = "Callback Error"
							LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
							wait(0.5)
							Bind.Title.Text = BindSettings.Name
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
					else
						wait(0.1)
						if Held then
							local Loop; Loop = RunService.Stepped:Connect(function()
								if not Held then
									local Success, Response = pcall(function()
										BindSettings.Callback(false)
									end)
									if not Success then
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
										Bind.Title.Text = "Callback Error"
										LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
										wait(0.5)
										Bind.Title.Text = BindSettings.Name
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
									end 
									Loop:Disconnect()
								else
									local Success, Response = pcall(function()
										BindSettings.Callback(true)
									end)
									if not Success then
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
										Bind.Title.Text = "Callback Error"
										LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
										wait(0.5)
										Bind.Title.Text = BindSettings.Name
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
									end
								end
							end)	
						end
					end
				end
			end)

			Bind.BindFrame.BindBox:GetPropertyChangedSignal("Text"):Connect(function()
				TweenService:Create(Bind.BindFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 30)}):Play()
			end)

			function BindV:Set(NewBindSettings)

				NewBindSettings = Kwargify({
					Name = BindSettings.Name,
					Description = BindSettings.Description,
					CurrentBind =  BindSettings.CurrentBind,
					HoldToInteract = BindSettings.HoldToInteract,
					Callback = BindSettings.Callback
				}, NewBindSettings or {})

				BindV.Settings = NewBindSettings
				BindSettings = NewBindSettings

				RegisterElement(Window, Bind, BindSettings.Name, "Bind", TabSettings.Name)
				Bind.Title.Text = BindSettings.Name
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" and Bind.Desc ~= nil then
					Bind.Desc.Text = BindSettings.Description
				end

				Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				Bind.BindFrame.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 20, 0, 42)


				BindV.CurrentBind = BindSettings.CurrentBind
			end

			function BindV:Destroy()
				Bind.Visible = false
				Bind:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = BindV
			end

			return BindV

		end

		function Tab:CreateKeybind(BindSettings)

			BindSettings = Kwargify({
				Name = "Bind",
				Description = nil,
				CurrentBind = "Q",
				HoldToInteract = false,
				Callback = function(Bind)
					
				end
			}, BindSettings or {})

			local BindV = { Settings = BindSettings, Active = false }
			local CheckingForKey = false

			local Bind
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind = Elements.Template.BindDesc:Clone()
			else
				Bind = Elements.Template.Bind:Clone()
			end

			Bind.Visible = true
			Bind.Parent = TabPage

			RegisterElement(Window, Bind, BindSettings.Name, "Bind", TabSettings.Name)
			Bind.Title.Text = BindSettings.Name
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind.Desc.Text = BindSettings.Description
			end

			Bind.Title.TextTransparency = 1
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				Bind.Desc.TextTransparency = 1
			end
			Bind.BindFrame.BackgroundTransparency = 1
			Bind.BindFrame.UIStroke.Transparency = 1
			Bind.BindFrame.BindBox.TextTransparency = 1

			TweenService:Create(Bind, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Bind.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			if BindSettings.Description ~= nil and BindSettings.Description ~= "" then
				TweenService:Create(Bind.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()
			end
			TweenService:Create(Bind.BindFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
			TweenService:Create(Bind.BindFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
			TweenService:Create(Bind.BindFrame.BindBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

			Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
			Bind.BindFrame.BindBox.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 16, 0, 42)

			Bind.BindFrame.BindBox.Focused:Connect(function()
				CheckingForKey = true
				Bind.BindFrame.BindBox.Text = ""
			end)

			Bind.BindFrame.BindBox.FocusLost:Connect(function()
				CheckingForKey = false
				if Bind.BindFrame.BindBox.Text == (nil or "") then
					Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				end
			end)

			Bind["MouseEnter"]:Connect(function()
				tween(Bind.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Bind["MouseLeave"]:Connect(function()
				tween(Bind.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)
			UserInputService.InputBegan:Connect(function(input, processed)

				if CheckingForKey then
					if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Enum.KeyCode.K then
						local SplitMessage = string.split(tostring(input.KeyCode), ".")
						local NewKeyNoEnum = SplitMessage[3]
						Bind.BindFrame.BindBox.Text = tostring(NewKeyNoEnum)
						BindSettings.CurrentBind = tostring(NewKeyNoEnum)
						Bind.BindFrame.BindBox:ReleaseFocus()
					end
				elseif BindSettings.CurrentBind ~= nil and (input.KeyCode == Enum.KeyCode[BindSettings.CurrentBind] and not processed) then -- Test
					local Held = true
					local Connection
					Connection = input.Changed:Connect(function(prop)
						if prop == "UserInputState" then
							Connection:Disconnect()
							Held = false
						end
					end)

					if not BindSettings.HoldToInteract then
						BindV.Active = not BindV.Active
						local Success, Response = pcall(function()
							BindSettings.Callback(BindV.Active)
						end)
						if not Success then
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Bind.Title.Text = "Callback Error"
							LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
							wait(0.5)
							Bind.Title.Text = BindSettings.Name
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
					else
						wait(0.1)
						if Held then
							local Loop; Loop = RunService.Stepped:Connect(function()
								if not Held then
									local Success, Response = pcall(function()
										BindSettings.Callback(false)
									end)
									if not Success then
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
										Bind.Title.Text = "Callback Error"
										LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
										wait(0.5)
										Bind.Title.Text = BindSettings.Name
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
									end 
									Loop:Disconnect()
								else
									local Success, Response = pcall(function()
										BindSettings.Callback(true)
									end)
									if not Success then
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
										Bind.Title.Text = "Callback Error"
										LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
										wait(0.5)
										Bind.Title.Text = BindSettings.Name
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
										TweenService:Create(Bind, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
										TweenService:Create(Bind.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
									end
								end
							end)	
						end
					end
				end
			end)

			Bind.BindFrame.BindBox:GetPropertyChangedSignal("Text"):Connect(function()
				TweenService:Create(Bind.BindFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 16, 0, 30)}):Play()
			end)

			function BindV:Set(NewBindSettings)

				NewBindSettings = Kwargify({
					Name = BindSettings.Name,
					Description = BindSettings.Description,
					CurrentBind =  BindSettings.CurrentBind,
					HoldToInteract = BindSettings.HoldToInteract,
					Callback = BindSettings.Callback
				}, NewBindSettings or {})

				BindV.Settings = NewBindSettings
				BindSettings = NewBindSettings

				RegisterElement(Window, Bind, BindSettings.Name, "Bind", TabSettings.Name)
				Bind.Title.Text = BindSettings.Name
				if BindSettings.Description ~= nil and BindSettings.Description ~= "" and Bind.Desc ~= nil then
					Bind.Desc.Text = BindSettings.Description
				end

				Bind.BindFrame.BindBox.Text = BindSettings.CurrentBind
				Bind.BindFrame.BindBox.Size = UDim2.new(0, Bind.BindFrame.BindBox.TextBounds.X + 16, 0, 42)

			end

			function BindV:Destroy()
				Bind.Visible = false
				Bind:Destroy()
			end

			return BindV

		end

		-- Dynamic Input
		function Tab:CreateInput(InputSettings, Flag)
			local InputV = { IgnoreConfig = false, Class = "Input", Settings = InputSettings }

			InputSettings = Kwargify({
				Name = "Dynamic Input",
				Description = nil,
				CurrentValue = "",
				PlaceholderText = "Input Placeholder",
				RemoveTextAfterFocusLost = false,
				Numeric = false,
				Enter = false,
				MaxCharacters = nil,
				Callback = function(Text)

				end,
			}, InputSettings or {})

			InputV.CurrentValue = InputSettings.CurrentValue

			local descriptionbool
			if InputSettings.Description ~= nil and InputSettings.Description ~= "" then
				descriptionbool = true
			end

			local Input 
			if descriptionbool then
				Input = Elements.Template.InputDesc:Clone()
			else
				Input = Elements.Template.Input:Clone()
			end

			RegisterElement(Window, Input, InputSettings.Name, "Input", TabSettings.Name)
			Input.Title.Text = InputSettings.Name
			if descriptionbool then LunaSetText(Input.Desc, InputSettings.Description) end
			Input.Visible = true
			Input.Parent = TabPage

			Input.BackgroundTransparency = 1
			Input.UIStroke.Transparency = 1
			Input.Title.TextTransparency = 1
			if descriptionbool then Input.Desc.TextTransparency = 1 end
			Input.InputFrame.BackgroundTransparency = 1
			Input.InputFrame.UIStroke.Transparency = 1
			Input.InputFrame.InputBox.TextTransparency = 1

			TweenService:Create(Input, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
			TweenService:Create(Input.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
			TweenService:Create(Input.Title, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()	
			if descriptionbool then TweenService:Create(Input.Desc, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play() end
			TweenService:Create(Input.InputFrame, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.9}):Play()
			TweenService:Create(Input.InputFrame.UIStroke, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {Transparency = 0.3}):Play()
			TweenService:Create(Input.InputFrame.InputBox, TweenInfo.new(0.3, Enum.EasingStyle.Exponential), {TextTransparency = 0}):Play()

			Input.InputFrame.InputBox.PlaceholderText = InputSettings.PlaceholderText
			Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 30)

			Input.InputFrame.InputBox.FocusLost:Connect(function(bleh)

				if InputSettings.Enter then
					if bleh then
						local Success, Response = pcall(function()
							InputSettings.Callback(Input.InputFrame.InputBox.Text)
							InputV.CurrentValue = Input.InputFrame.InputBox.Text
						end)
						if not Success then
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
							TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
							Input.Title.Text = "Callback Error"
							LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
							wait(0.5)
							Input.Title.Text = InputSettings.Name
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
							TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
							TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
						end
					end
				end

				if InputSettings.RemoveTextAfterFocusLost then
					Input.InputFrame.InputBox.Text = ""
				end

			end)

			if InputSettings.Numeric then
				Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
					local text = Input.InputFrame.InputBox.Text
					if not tonumber(text) and text ~= "." then
						Input.InputFrame.InputBox.Text = text:match("[0-9.]*") or ""
					end
				end)
			end

			Input.InputFrame.InputBox:GetPropertyChangedSignal("Text"):Connect(function()
				if tonumber(InputSettings.MaxCharacters) then
					if (#Input.InputFrame.InputBox.Text - 1) == InputSettings.MaxCharacters then
						Input.InputFrame.InputBox.Text = Input.InputFrame.InputBox.Text:sub(1, InputSettings.MaxCharacters)
					end
				end
				TweenService:Create(Input.InputFrame, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 30)}):Play()
				if not InputSettings.Enter then
					local Success, Response = pcall(function()
						InputSettings.Callback(Input.InputFrame.InputBox.Text)
					end)
					if not Success then
						TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
						TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
						TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
						Input.Title.Text = "Callback Error"
						LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
						wait(0.5)
						Input.Title.Text = InputSettings.Name
						TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
						TweenService:Create(Input, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
						TweenService:Create(Input.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
					end
				end
				InputV.CurrentValue = Input.InputFrame.InputBox.Text				
			end)

			Input["MouseEnter"]:Connect(function()
				tween(Input.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Input["MouseLeave"]:Connect(function()
				tween(Input.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			function InputV:Set(NewInputSettings)

				NewInputSettings = Kwargify(InputSettings, NewInputSettings or {})

				InputV.Settings = NewInputSettings
				InputSettings = NewInputSettings

				RegisterElement(Window, Input, InputSettings.Name, "Input", TabSettings.Name)
				Input.Title.Text = InputSettings.Name
				if InputSettings.Description ~= nil and InputSettings.Description ~= "" and Input.Desc ~= nil then
					Input.Desc.Text = InputSettings.Description
				end

				Input.InputFrame.InputBox:CaptureFocus()
				Input.InputFrame.InputBox.Text = tostring(InputSettings.CurrentValue)
				Input.InputFrame.InputBox:ReleaseFocus()
				Input.InputFrame.Size = UDim2.new(0, Input.InputFrame.InputBox.TextBounds.X + 52, 0, 42)

				InputV.CurrentValue = InputSettings.CurrentValue
			end

			function InputV:Destroy()
				Input.Visible = false
				Input:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = InputV
			end

			return InputV

		end

		-- Dropdown
		function Tab:CreateDropdown(DropdownSettings, Flag)
			local DropdownV = { IgnoreConfig = false, Class = "Dropdown", Settings = DropdownSettings}

			DropdownSettings = Kwargify({
				Name = "Dropdown",
				Description = nil,
				Options = {"Option 1", "Option 2"},
				CurrentOption = {"Option 1"},
				MultipleOptions = false,
				SpecialType = nil,
				Callback = function(Options)
					
				end,
			}, DropdownSettings or {})

			DropdownV.CurrentOption = DropdownSettings.CurrentOption

			local descriptionbool = false
			if DropdownSettings.Description ~= nil and DropdownSettings.Description ~= "" then
				descriptionbool = true
			end
			local closedsize
			local openedsize
			if descriptionbool then
				closedsize = 48
				openedsize = 170
			elseif not descriptionbool then
				closedsize = 38
				openedsize = 160
			end
			local opened = false

			local Dropdown
			if descriptionbool then Dropdown = Elements.Template.DropdownDesc:Clone() else Dropdown = Elements.Template.Dropdown:Clone() end

			RegisterElement(Window, Dropdown, DropdownSettings.Name, "Dropdown", TabSettings.Name)
			Dropdown.Title.Text = DropdownSettings.Name
			if descriptionbool then LunaSetText(Dropdown.Desc, DropdownSettings.Description) end

			Dropdown.Parent = TabPage
			Dropdown.Visible = true

			local function Toggle()
				opened = not opened
				if opened then
					tween(Dropdown.icon, {Rotation = 180})
					tween(Dropdown, {Size = UDim2.new(1, -25, 0, openedsize)})
				else
					tween(Dropdown.icon, {Rotation = 0})
					tween(Dropdown, {Size = UDim2.new(1, -25, 0, closedsize)})
				end
			end

			local function SafeCallback(param, c2)
				local Success, Response = pcall(function()
					DropdownSettings.Callback(param)
				end)
				if not Success then
					TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					Dropdown.Title.Text = "Callback Error"
					LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
					wait(0.5)
					Dropdown.Title.Text = DropdownSettings.Name
					TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(Dropdown, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(Dropdown.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
				if Success and c2 then
					c2()
				end
			end

			-- Fixed By justhey
			Dropdown.Selected:GetPropertyChangedSignal("Text"):Connect(function()
				local text = Dropdown.Selected.Text:lower()
				for _, Item in ipairs(Dropdown.List:GetChildren()) do
					if Item:IsA("TextLabel") and Item.Name ~= "Template" then
						Item.Visible = text == "" or string.find(Item.Name:lower(), text, 1, true) ~= nil
					end
				end
			end)


			local function Clear()
				for _, option in ipairs(Dropdown.List:GetChildren()) do
					if option.ClassName == "TextLabel" and option.Name ~= "Template" then
						option:Destroy()
					end
				end
			end

			local function ActivateColorSingle(name)
				for _, Option in pairs(Dropdown.List:GetChildren()) do
					if Option.ClassName == "TextLabel" and Option.Name ~= "Template" then
						tween(Option, {BackgroundTransparency = 0.98})
					end
				end

				Toggle()
				LunaTweenDropdownOption(Dropdown.List, name, {BackgroundTransparency = 0.95, TextColor3 = Color3.fromRGB(240,240,240)})
			end

			local function Refresh()
				Clear()
				for i,v in pairs(DropdownSettings.Options) do
					local Option = Dropdown.List.Template:Clone()
					local optionhover = false
					Option.Text = v
					if v == "Template" then v = "Template (Name)" end
					Option.Name = v
					Option.Interact.MouseButton1Click:Connect(function()
						local bleh
						if DropdownSettings.MultipleOptions then
							if table.find(DropdownSettings.CurrentOption, v) then
								RemoveTable(DropdownSettings.CurrentOption, v)
								DropdownV.CurrentOption = DropdownSettings.CurrentOption
								if not optionhover then
									tween(Option, {TextColor3 = Color3.fromRGB(200,200,200)})
								end
								tween(Option, {BackgroundTransparency = 0.98})
							else
								table.insert(DropdownSettings.CurrentOption, v)
								DropdownV.CurrentOption = DropdownSettings.CurrentOption
								tween(Option, {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
							end
							bleh = DropdownSettings.CurrentOption
						else
							DropdownSettings.CurrentOption = {v}
							bleh = v
							DropdownV.CurrentOption = bleh
							ActivateColorSingle(v)
						end

						SafeCallback(bleh, function()
							if DropdownSettings.MultipleOptions then
								if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
									if #DropdownSettings.CurrentOption == 1 then
										Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
									elseif #DropdownSettings.CurrentOption == 0 then
										Dropdown.Selected.PlaceholderText = "None"
									else
										Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
									end
								else
									DropdownSettings.CurrentOption = {}
									Dropdown.Selected.PlaceholderText = "None"
								end
							end
							if not DropdownSettings.MultipleOptions then
								Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
							end
							Dropdown.Selected.Text = ""
						end)
					end)
					Option.Visible = true
					Option.Parent = Dropdown.List
					Option.MouseEnter:Connect(function()
						optionhover = true
						if Option.BackgroundTransparency == 0.95 then
							return
						else
							tween(Option, {TextColor3 = Color3.fromRGB(240,240,240)})
						end
					end)
					Option.MouseLeave:Connect(function()
						optionhover = false
						if Option.BackgroundTransparency == 0.95 then
							return
						else
							tween(Option, {TextColor3 = Color3.fromRGB(200,200,200)})
						end
					end)	
				end
			end

			local function PlayerTableRefresh()
				for i,v in pairs(DropdownSettings.Options) do
					table.remove(DropdownSettings.Options, i)
				end

				for i,v in pairs(Players:GetChildren()) do
					table.insert(DropdownSettings.Options, v.Name)
				end
			end

			Dropdown.Interact.MouseButton1Click:Connect(function()
				Toggle()
			end)

			Dropdown["MouseEnter"]:Connect(function()
				tween(Dropdown.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)

			Dropdown["MouseLeave"]:Connect(function()
				tween(Dropdown.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			if DropdownSettings.SpecialType == "Player" then

				for i,v in pairs(DropdownSettings.Options) do
					table.remove(DropdownSettings.Options, i)
				end
				PlayerTableRefresh()
				DropdownSettings.CurrentOption = DropdownSettings.Options[1]

				Players.PlayerAdded:Connect(function() PlayerTableRefresh() end)
				Players.PlayerRemoving:Connect(function() PlayerTableRefresh() end)

			end

			Refresh()

			if DropdownSettings.MultipleOptions then
				DropdownSettings.CurrentOption = LunaSanitizeDropdownCurrent(
					DropdownSettings.Options,
					DropdownSettings.CurrentOption,
					true
				) or {}
			else
				local single = LunaSanitizeDropdownCurrent(
					DropdownSettings.Options,
					DropdownSettings.CurrentOption,
					false
				)
				DropdownSettings.CurrentOption = single and {single} or {}
			end

			local bleh, ind = nil,0
			for i,v in pairs(DropdownSettings.CurrentOption) do
				ind = ind + 1
			end
			if ind == 1 then bleh = DropdownSettings.CurrentOption[1] else bleh = DropdownSettings.CurrentOption end
			pcall(function() SafeCallback(bleh) end)
			for _, Option in pairs(Dropdown.List:GetChildren()) do
				if Option.ClassName == "TextLabel" and Option.Name ~= "Template" then
					tween(Option, {TextColor3 = Color3.fromRGB(200,200,200), BackgroundTransparency = 0.98})
				end
			end
			if DropdownSettings.MultipleOptions then
				for _, name in pairs(DropdownSettings.CurrentOption) do
					LunaTweenDropdownOption(Dropdown.List, name, {TextColor3 = Color3.fromRGB(227,227,227), BackgroundTransparency = 0.95})
				end
			else
				LunaTweenDropdownOption(Dropdown.List, bleh, {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
			end

			if DropdownSettings.MultipleOptions then
				if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
					if #DropdownSettings.CurrentOption == 1 then
						Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
					elseif #DropdownSettings.CurrentOption == 0 then
						Dropdown.Selected.PlaceholderText = "None"
					else
						Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
					end
				else
					DropdownSettings.CurrentOption = {}
					Dropdown.Selected.PlaceholderText = "None"
				end
			else
				Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
			end
			Dropdown.Selected.Text = ""

			function DropdownV:Set(NewDropdownSettings)
				NewDropdownSettings = Kwargify(DropdownSettings, NewDropdownSettings or {})

				DropdownV.Settings = NewDropdownSettings
				DropdownSettings = NewDropdownSettings

				RegisterElement(Window, Dropdown, DropdownSettings.Name, "Dropdown", TabSettings.Name)
				Dropdown.Title.Text = DropdownSettings.Name
				if DropdownSettings.Description ~= nil and DropdownSettings.Description ~= "" and Dropdown.Desc ~= nil then
					Dropdown.Desc.Text = DropdownSettings.Description
				end

				if DropdownSettings.SpecialType == "Player" then

					for i,v in pairs(DropdownSettings.Options) do
						table.remove(DropdownSettings.Options, i)
					end
					PlayerTableRefresh()
					DropdownSettings.CurrentOption = DropdownSettings.Options[1]                    
					Players.PlayerAdded:Connect(function() PlayerTableRefresh() end)
					Players.PlayerRemoving:Connect(function() PlayerTableRefresh() end)

				end

				Refresh()

				if DropdownSettings.MultipleOptions then
					DropdownSettings.CurrentOption = LunaSanitizeDropdownCurrent(
						DropdownSettings.Options,
						DropdownSettings.CurrentOption,
						true
					) or {}
				else
					local single = LunaSanitizeDropdownCurrent(
						DropdownSettings.Options,
						DropdownSettings.CurrentOption,
						false
					)
					DropdownSettings.CurrentOption = single and {single} or {}
				end

				local bleh, ind = nil,0
				for i,v in pairs(DropdownSettings.CurrentOption) do
					ind = ind + 1
				end
				if ind == 1 then bleh = DropdownSettings.CurrentOption[1] else bleh = DropdownSettings.CurrentOption end
				pcall(function() SafeCallback(bleh) end)
				for _, Option in pairs(Dropdown.List:GetChildren()) do
					if Option.ClassName == "TextLabel" and Option.Name ~= "Template" then
						tween(Option, {TextColor3 = Color3.fromRGB(200,200,200), BackgroundTransparency = 0.98})
					end
				end
				if DropdownSettings.MultipleOptions then
					for _, name in pairs(DropdownSettings.CurrentOption) do
						LunaTweenDropdownOption(Dropdown.List, name, {TextColor3 = Color3.fromRGB(227,227,227), BackgroundTransparency = 0.95})
					end
				else
					LunaTweenDropdownOption(Dropdown.List, bleh, {TextColor3 = Color3.fromRGB(240,240,240), BackgroundTransparency = 0.95})
				end

				if DropdownSettings.MultipleOptions then
					if DropdownSettings.CurrentOption and type(DropdownSettings.CurrentOption) == "table" then
						if #DropdownSettings.CurrentOption == 1 then
							Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1]
						elseif #DropdownSettings.CurrentOption == 0 then
							Dropdown.Selected.PlaceholderText = "None"
						else
							Dropdown.Selected.PlaceholderText = unpackt(DropdownSettings.CurrentOption)
						end
					else
						DropdownSettings.CurrentOption = {}
						Dropdown.Selected.PlaceholderText = "None"
					end
				else
					Dropdown.Selected.PlaceholderText = DropdownSettings.CurrentOption[1] or "None"
				end
				Dropdown.Selected.Text = ""

			end

			function DropdownV:Destroy()
				Dropdown.Visible = false
				Dropdown:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = DropdownV
			end

			return DropdownV

		end

		-- Color Picker
		function Tab:CreateColorPicker(ColorPickerSettings, Flag) -- by Rayfield/Throit
			local ColorPickerV = {IgnoreClass = false, Class = "Colorpicker", Settings = ColorPickerSettings}

			ColorPickerSettings = Kwargify({
				Name = "Color Picker",
				Color = Color3.fromRGB(255,255,255),
				Callback = function(Value)
					
				end
			}, ColorPickerSettings or {})

			local function Color3ToHex(color)
				return string.format("#%02X%02X%02X", math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255))
			end

			ColorPickerV.Color = Color3ToHex(ColorPickerSettings.Color)

			local closedsize = UDim2.new(0, 75, 0, 22)
			local openedsize = UDim2.new(0, 219, 0, 129)

			local ColorPicker = Elements.Template.ColorPicker:Clone()
			local Background = ColorPicker.CPBackground
			local Display = Background.Display
			local Main = Background.MainCP
			local Slider = ColorPicker.ColorSlider

			RegisterElement(Window, ColorPicker, ColorPickerSettings.Name, "ColorPicker", TabSettings.Name)
			ColorPicker.Title.Text = ColorPickerSettings.Name
			ColorPicker.Visible = true
			ColorPicker.Parent = TabPage
			ColorPicker.Size = UDim2.new(1.042, -25,0, 38)
			Background.Size = closedsize
			Display.BackgroundTransparency = 0

			ColorPicker["MouseEnter"]:Connect(function()
				tween(ColorPicker.UIStroke, {Color = Color3.fromRGB(87, 84, 104)})
			end)
			ColorPicker["MouseLeave"]:Connect(function()
				tween(ColorPicker.UIStroke, {Color = Color3.fromRGB(64,61,76)})
			end)

			local function SafeCallback(param, c2)
				local Success, Response = pcall(function()
					ColorPickerSettings.Callback(param)
				end)
				if not Success then
					TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0}):Play()
					TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
					TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 1}):Play()
					ColorPicker.Title.Text = "Callback Error"
					LunaCallbackErrorNotification(Response, BindSettings, ButtonSettings, SliderSettings, ToggleSettings, InputSettings, DropdownSettings, ColorPickerSettings)
					wait(0.5)
					ColorPicker.Title.Text = ColorPickerSettings.Name
					TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundTransparency = 0.5}):Play()
					TweenService:Create(ColorPicker, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {BackgroundColor3 = Color3.fromRGB(32, 30, 38)}):Play()
					TweenService:Create(ColorPicker.UIStroke, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {Transparency = 0.5}):Play()
				end
				if Success and c2 then
					c2()
				end
			end

			local opened = false

			local mouse = game.Players.LocalPlayer:GetMouse()
			Main.Image = "http://www.roblox.com/asset/?id=11415645739"
			local mainDragging = false 
			local sliderDragging = false 
			ColorPicker.Interact.MouseButton1Down:Connect(function()
				if not opened then
					opened = true 
					tween(ColorPicker, {Size = UDim2.new( 1.042, -25,0, 165)}, nil, TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
					tween(Background, {Size = openedsize})
					tween(Display, {BackgroundTransparency = 1})
				else
					opened = false
					tween(ColorPicker, {Size = UDim2.new(1.042, -25,0, 38)}, nil, TweenInfo.new(0.6, Enum.EasingStyle.Exponential))
					tween(Background, {Size = closedsize})
					tween(Display, {BackgroundTransparency = 0})
				end
			end)
			UserInputService.InputEnded:Connect(function(input, gameProcessed) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
					mainDragging = false
					sliderDragging = false
				end end)
			Main.MouseButton1Down:Connect(function()
				if opened then
					mainDragging = true 
				end
			end)
			Main.MainPoint.MouseButton1Down:Connect(function()
				if opened then
					mainDragging = true 
				end
			end)
			Slider.MouseButton1Down:Connect(function()
				sliderDragging = true 
			end)
			Slider.SliderPoint.MouseButton1Down:Connect(function()
				sliderDragging = true 
			end)
			local h,s,v = ColorPickerSettings.Color:ToHSV()
			local color = Color3.fromHSV(h,s,v) 
			local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
			local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
			ColorPicker.HexInput.InputBox.Text = hex
			local function setDisplay(hp,sp,vp)
				--Main
				Main.MainPoint.Position = UDim2.new(s,-Main.MainPoint.AbsoluteSize.X/2,1-v,-Main.MainPoint.AbsoluteSize.Y/2)
				Main.MainPoint.ImageColor3 = Color3.fromHSV(hp,sp,vp)
				Background.BackgroundColor3 = Color3.fromHSV(hp,1,1)
				Display.BackgroundColor3 = Color3.fromHSV(hp,sp,vp)
				--Slider 
				local x = hp * Slider.AbsoluteSize.X
				Slider.SliderPoint.Position = UDim2.new(0,x-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
				Slider.SliderPoint.ImageColor3 = Color3.fromHSV(hp,1,1)
				local color = Color3.fromHSV(hp,sp,vp) 
				local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				ColorPicker.RInput.InputBox.Text = tostring(r)
				ColorPicker.GInput.InputBox.Text = tostring(g)
				ColorPicker.BInput.InputBox.Text = tostring(b)
				hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
			end
			setDisplay(h,s,v)
			ColorPicker.HexInput.InputBox.FocusLost:Connect(function()
				if not pcall(function()
						local r, g, b = string.match(ColorPicker.HexInput.InputBox.Text, "^#?(%w%w)(%w%w)(%w%w)$")
						local rgbColor = Color3.fromRGB(tonumber(r, 16),tonumber(g, 16), tonumber(b, 16))
						h,s,v = rgbColor:ToHSV()
						hex = ColorPicker.HexInput.InputBox.Text
						setDisplay()
						ColorPickerSettings.Color = rgbColor
					end) 
				then 
					ColorPicker.HexInput.InputBox.Text = hex 
				end
				local r,g,b = math.floor((h*255)+0.5),math.floor((s*255)+0.5),math.floor((v*255)+0.5)
				ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
				SafeCallback( Color3.fromRGB(r,g,b))
			end)
			--RGB
			local function rgbBoxes(box,toChange)
				local value = tonumber(box.Text) 
				local color = Color3.fromHSV(h,s,v) 
				local oldR,oldG,oldB = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				local save 
				if toChange == "R" then save = oldR;oldR = value elseif toChange == "G" then save = oldG;oldG = value else save = oldB;oldB = value end
				if value then 
					value = math.clamp(value,0,255)
					h,s,v = Color3.fromRGB(oldR,oldG,oldB):ToHSV()
					setDisplay()
				else 
					box.Text = tostring(save)
				end
				local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
			end
			ColorPicker.RInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.RInput.InputBox,"R")
				SafeCallback(Color3.fromRGB(r,g,b))
			end)
			ColorPicker.GInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.GInput.InputBox,"G")
				SafeCallback(Color3.fromRGB(r,g,b))
			end)
			ColorPicker.BInput.InputBox.FocusLost:connect(function()
				rgbBoxes(ColorPicker.BInput.InputBox,"B")
				SafeCallback(Color3.fromRGB(r,g,b))
			end)
			RunService.RenderStepped:connect(function()
				if mainDragging then 
					local localX = math.clamp(mouse.X-Main.AbsolutePosition.X,0,Main.AbsoluteSize.X)
					local localY = math.clamp(mouse.Y-Main.AbsolutePosition.Y,0,Main.AbsoluteSize.Y)
					Main.MainPoint.Position = UDim2.new(0,localX-Main.MainPoint.AbsoluteSize.X/2,0,localY-Main.MainPoint.AbsoluteSize.Y/2)
					s = localX / Main.AbsoluteSize.X
					v = 1 - (localY / Main.AbsoluteSize.Y)
					Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
					Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RInput.InputBox.Text = tostring(r)
					ColorPicker.GInput.InputBox.Text = tostring(g)
					ColorPicker.BInput.InputBox.Text = tostring(b)
					ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					SafeCallback(Color3.fromRGB(r,g,b))
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					ColorPickerV.Color = ColorPickerSettings.Color
				end
				if sliderDragging then 
					local localX = math.clamp(mouse.X-Slider.AbsolutePosition.X,0,Slider.AbsoluteSize.X)
					h = localX / Slider.AbsoluteSize.X
					Display.BackgroundColor3 = Color3.fromHSV(h,s,v)
					Slider.SliderPoint.Position = UDim2.new(0,localX-Slider.SliderPoint.AbsoluteSize.X/2,0.5,0)
					Slider.SliderPoint.ImageColor3 = Color3.fromHSV(h,1,1)
					Background.BackgroundColor3 = Color3.fromHSV(h,1,1)
					Main.MainPoint.ImageColor3 = Color3.fromHSV(h,s,v)
					local color = Color3.fromHSV(h,s,v) 
					local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
					ColorPicker.RInput.InputBox.Text = tostring(r)
					ColorPicker.GInput.InputBox.Text = tostring(g)
					ColorPicker.BInput.InputBox.Text = tostring(b)
					ColorPicker.HexInput.InputBox.Text = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
					SafeCallback(Color3.fromRGB(r,g,b))
					ColorPickerSettings.Color = Color3.fromRGB(r,g,b)
					ColorPickerV.Color = ColorPickerSettings.Color
				end
			end)

			function ColorPickerV:Set(NewColorPickerSettings)

				NewColorPickerSettings = Kwargify(ColorPickerSettings, NewColorPickerSettings or {})

				ColorPickerV.Settings = NewColorPickerSettings
				ColorPickerSettings = NewColorPickerSettings

				RegisterElement(Window, ColorPicker, ColorPickerSettings.Name, "ColorPicker", TabSettings.Name)
				ColorPicker.Title.Text = ColorPickerSettings.Name
				ColorPicker.Visible = true

				local h,s,v = ColorPickerSettings.Color:ToHSV()
				local color = Color3.fromHSV(h,s,v) 
				local r,g,b = math.floor((color.R*255)+0.5),math.floor((color.G*255)+0.5),math.floor((color.B*255)+0.5)
				local hex = string.format("#%02X%02X%02X",color.R*0xFF,color.G*0xFF,color.B*0xFF)
				ColorPicker.HexInput.InputBox.Text = hex
				setDisplay(h,s,v)
				SafeCallback(Color3.fromRGB(r,g,b))

				ColorPickerV.Color = ColorPickerSettings.Color
			end

			function ColorPickerV:Destroy()
				ColorPicker:Destroy()
			end

			if Flag then
				Luna.Options[Flag] = ColorPickerV
			end

			SafeCallback(ColorPickerSettings.Color)

			return ColorPickerV
		end

		function Tab:BuildConfigSection()
			if isStudio then
				Tab:CreateLabel({Text = "Config system unavailable. (Environment isStudio)", Style = 3})
				return "Config system unavailable." 
			end

			local inputPath = nil
			local selectedConfig = nil

			local Title = Elements.Template.Title:Clone()
			Title.Text = "Configurations"
			Title.Visible = true
			Title.Parent = TabPage
			Title.TextTransparency = 1
			TweenService:Create(Title, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()

			Tab:CreateSection("Config Creator")

			Tab:CreateInput({
				Name = "Config Name",
				Description = "Insert a name for your to be created config.",
				PlaceholderText = "Name",
				CurrentValue = "",
				Numeric = false,
				MaxCharacters = nil,
				Enter = false,
				Callback = function(input)
					inputPath = input
				end,
			})

			local configSelection

			Tab:CreateButton({
				Name = "Create Config",
				Description = "Create a config with all of your current settings.",
				Callback = function()
					if not inputPath or string.gsub(inputPath, " ", "") == "" then
						Luna:Notification({
							Title = "Interface",
							Icon = "warning",
							ImageSource = "Material",
							Content = "Config name cannot be empty."
						})
						return
					end

					local success, returned = Luna:SaveConfig(inputPath)
					if not success then
						Luna:Notification({
							Title = "Interface",
							Icon = "error",
							ImageSource = "Material",
							Content = "Unable to save config, return error: " .. returned
						})
					end

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = string.format("Created config %q", inputPath),
					})

					configSelection:Set({ Options = Luna:RefreshConfigList() })
				end
			})

			Tab:CreateSection("Config Load/Settings")

			configSelection = Tab:CreateDropdown({
				Name = "Select Config",
				Description = "Select a config to load your settings on.",
				Options = Luna:RefreshConfigList(),
				CurrentOption = {},
				MultipleOptions = false,
				SpecialType = nil,
				Callback = function(Value)
					selectedConfig = Value
				end,
			})

			Tab:CreateButton({
				Name = "Load Config",
				Description = "Load your saved config settings.",
				Callback = function()
					local success, returned = Luna:LoadConfig(selectedConfig)
					if not success then
						Luna:Notification({
							Title = "Interface",
							Icon = "error",
							ImageSource = "Material",
							Content = "Unable to load config, return error: " .. returned
						})
						return
					end

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = string.format("Loaded config %q", selectedConfig),
					})
				end
			})

			Tab:CreateButton({
				Name = "Overwrite Config",
				Description = "Overwrite your current config settings.",
				Callback = function()
					local success, returned = Luna:SaveConfig(selectedConfig)
					if not success then
						Luna:Notification({
							Title = "Interface",
							Icon = "error",
							ImageSource = "Material",
							Content = "Unable to overwrite config, return error: " .. returned
						})
						return
					end

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = string.format("Overwrote config %q", selectedConfig),
					})
				end
			})

			Tab:CreateButton({
				Name = "Refresh Config List",
				Description = "Refresh the current config list.",
				Callback = function()
					configSelection:Set({ Options = Luna:RefreshConfigList() })
				end,
			})

			local loadlabel
			Tab:CreateButton({
				Name = "Set as autoload",
				Description = "Set a config to auto load setting in your next session.",
				Callback = function()
					local name = selectedConfig
					writefile(Luna.Folder .. "/settings/autoload.txt", name)
					loadlabel:Set({ Text = "Current autoload config: " .. name })

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = string.format("Set %q to auto load", name),
					})
				end,
			})

			loadlabel = Tab:CreateParagraph({
				Title = "Current Auto Load",
				Text = "None"
			})

			Tab:CreateButton({
				Name = "Delete Autoload",
				Description = "Delete The Autoload File",
				Callback = function()
					local name = selectedConfig
					delfile(Luna.Folder .. "/settings/autoload.txt")
					loadlabel:Set({ Text = "None" })

					Luna:Notification({
						Title = "Interface",
						Icon = "info",
						ImageSource = "Material",
						Content = "Deleted Autoload",
					})
				end,
			})

			if isfile(Luna.Folder .. "/settings/autoload.txt") then
				local name = readfile(Luna.Folder .. "/settings/autoload.txt")
				loadlabel:Set( { Text = "Current autoload config: " .. name })
			end     
		end

		local ClassParser = {
			["Toggle"] = {
				Save = function(Flag, data)
					return {
						type = "Toggle", 
						flag = Flag, 
						state = data.CurrentValue or false
					}
				end,
				Load = function(Flag, data)
					if Luna.Options[Flag] then
						Luna.Options[Flag]:Set({ CurrentValue = data.state })
					end
				end
			},
			["Slider"] = {
				Save = function(Flag, data)
					return {
						type = "Slider", 
						flag = Flag, 
						value = (data.CurrentValue and tostring(data.CurrentValue)),
					}
				end,
				Load = function(Flag, data)
					if Luna.Options[Flag] and data.value then
						Luna.Options[Flag]:Set({ CurrentValue = data.value })
					end
				end
			},
			["Input"] = {
				Save = function(Flag, data)
					return {
						type = "Input", 
						flag = Flag, 
						text = data.CurrentValue
					}
				end,
				Load = function(Flag, data)
					if Luna.Options[Flag] and data.text and type(data.text) == "string" then
						Luna.Options[Flag]:Set({ CurrentValue = data.text })
					end
				end
			},
			["Dropdown"] = {
				Save = function(Flag, data)
					return {
						type = "Dropdown", 
						flag = Flag, 
						value = data.CurrentOption
					}
				end,
				Load = function(Flag, data)
					if Luna.Options[Flag] and data.value then
						Luna.Options[Flag]:Set({ CurrentOption = data.value })
					end
				end
			},
			-- buggy as hell still
			["Colorpicker"] = {
				Save = function(Flag, data)
					local function Color3ToHex(color)
						return string.format("#%02X%02X%02X", math.floor(color.R * 255), math.floor(color.G * 255), math.floor(color.B * 255))
					end

					return {
						type = "Colorpicker", 
						flag = Flag, 
						color = Color3ToHex(data.Color) or nil,
						alpha = data.Alpha
					}
				end,
				Load = function(Flag, data)
					local function HexToColor3(hex)
						local r = tonumber(hex:sub(2, 3), 16) / 255
						local g = tonumber(hex:sub(4, 5), 16) / 255
						local b = tonumber(hex:sub(6, 7), 16) / 255
						return Color3.new(r, g, b)
					end

					if Luna.Options[Flag] and data.color then
						Luna.Options[Flag]:Set({Color = HexToColor3(data.color)})
					end
				end
			}
		}

		function Tab:BuildThemeSection()

			local Title = Elements.Template.Title:Clone()
			Title.Text = "Theming"
			Title.Visible = true
			Title.Parent = TabPage
			Title.TextTransparency = 1
			TweenService:Create(Title, TweenInfo.new(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()

			Tab:CreateSection("Custom Editor")

			local c1cp = Tab:CreateColorPicker({
				Name = "Color 1",
				Color = Color3.fromRGB(117, 164, 206),
			}, "LunaInterfaceSuitePrebuiltCPC1") -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

			local c2cp = Tab:CreateColorPicker({
				Name = "Color 2",
				Color = Color3.fromRGB(123, 201, 201),
			}, "LunaInterfaceSuitePrebuiltCPC2")

			local c3cp = Tab:CreateColorPicker({
				Name = "Color 3",
				Color = Color3.fromRGB(224, 138, 184),
			}, "LunaInterfaceSuitePrebuiltCPC3") 

			task.wait(1)

			c1cp:Set({
				Callback = function(Value)
					if c2cp and c3cp then
						Luna.ThemeGradient = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Value or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(0.50, c2cp.Color or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1.00, c3cp.Color or Color3.fromRGB(255,255,255))}
						LunaUI.ThemeRemote.Value = not LunaUI.ThemeRemote.Value
					end
				end
			})

			c2cp:Set({
				Callback = function(Value)
					if c1cp and c3cp then
						Luna.ThemeGradient = ColorSequence.new{ColorSequenceKeypoint.new(0.00, c1cp.Color or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(0.50, Value or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1.00, c3cp.Color or Color3.fromRGB(255,255,255))}
						LunaUI.ThemeRemote.Value = not LunaUI.ThemeRemote.Value
					end
				end
			})

			c3cp:Set({
				Callback = function(Valuex)
					if c2cp and c1cp then
						Luna.ThemeGradient = ColorSequence.new{ColorSequenceKeypoint.new(0.00, c1cp.Color or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(0.50, c2cp.Color or Color3.fromRGB(255,255,255)), ColorSequenceKeypoint.new(1.00, Valuex or Color3.fromRGB(255,255,255))}
						LunaUI.ThemeRemote.Value = not LunaUI.ThemeRemote.Value
					end
				end
			})

			Tab:CreateSection("Preset Gradients")

			for i,v in pairs(PresetGradients) do
				Tab:CreateButton({
					Name = tostring(i),
					Callback = function()
						c1cp:Set({ Color = v[1] })
						c2cp:Set({ Color = v[2] })
						c3cp:Set({ Color = v[3] })
					end,
				})
			end

		end

		local function BuildFolderTree()
			if isStudio then return "Config system unavailable." end
			local paths = {
				Luna.Folder,
				Luna.Folder .. "/settings"
			}

			for i = 1, #paths do
				local str = paths[i]
				if not isfolder(str) then
					makefolder(str)
				end
			end
		end

		local function SetFolder()

			if isStudio then return "Config system unavailable." end

			if WindowSettings.ConfigSettings.RootFolder ~= nil and WindowSettings.ConfigSettings.RootFolder ~= "" then
				Luna.Folder = WindowSettings.ConfigSettings.RootFolder .. "/" .. WindowSettings.ConfigSettings.ConfigFolder
			else
				Luna.Folder = WindowSettings.ConfigSettings.ConfigFolder
			end

			BuildFolderTree()
		end

		SetFolder()

		function Luna:SaveConfig(Path)
			if isStudio then return "Config system unavailable." end

			if (not Path) then
				return false, "Please select a config file."
			end

			local fullPath = Luna.Folder .. "/settings/" .. Path .. ".luna"

			local data = {
				objects = {}
			}

			for flag, option in next, Luna.Options do
				if not ClassParser[option.Class] then continue end
				if option.IgnoreConfig then continue end

				table.insert(data.objects, ClassParser[option.Class].Save(flag, option))
			end	

			local success, encoded = pcall(HttpService.JSONEncode, HttpService, data)
			if not success then
				return false, "Unable to encode into JSON data"
			end

			writefile(fullPath, encoded)
			return true
		end

		function Luna:LoadConfig(Path)
			if isStudio then return "Config system unavailable." end

			if (not Path) then
				return false, "Please select a config file."
			end

			local file = Luna.Folder .. "/settings/" .. Path .. ".luna"
			if not isfile(file) then return false, "Invalid file" end

			local success, decoded = pcall(HttpService.JSONDecode, HttpService, readfile(file))
			if not success then return false, "Unable to decode JSON data." end

			for _, option in next, decoded.objects do
				if ClassParser[option.type] then
					task.spawn(function() 
						ClassParser[option.type].Load(option.flag, option) 
					end)
				end
			end

			return true
		end

		function Luna:LoadAutoloadConfig()
			if isfile(Luna.Folder .. "/settings/autoload.txt") then

				if isStudio then return "Config system unavailable." end

				local name = readfile(Luna.Folder .. "/settings/autoload.txt")

				local success, err = Luna:LoadConfig(name)
				if not success then
					return Luna:Notification({
						Title = "Interface",
						Icon = "sparkle",
						ImageSource = "Material",
						Content = "Failed to load autoload config: " .. err,
					})
				end

				Luna:Notification({
					Title = "Interface",
					Icon = "sparkle",
					ImageSource = "Material",
					Content = string.format("Auto loaded config %q", name),
				})

			end 
		end

		function Luna:RefreshConfigList()
			if isStudio then return "Config system unavailable." end

			local list = listfiles(Luna.Folder .. "/settings")

			local out = {}
			for i = 1, #list do
				local file = list[i]
				if file:sub(-5) == ".luna" then
					local pos = file:find(".luna", 1, true)
					local start = pos

					local char = file:sub(pos, pos)
					while char ~= "/" and char ~= "\\" and char ~= "" do
						pos = pos - 1
						char = file:sub(pos, pos)
					end

					if char == "/" or char == "\\" then
						local name = file:sub(pos + 1, start - 1)
						if name ~= "options" then
							table.insert(out, name)
						end
					end
				end
			end

			return out
		end
		return Tab
	end

	-- ============================================================
	-- AI Chat tab (powered by pollinations.ai, no API key required)
	-- ============================================================
	-- Creates a new tab with a chat UI: a scrollable message history, an input
	-- bar, and an animated "thinking..." indicator while the request is in
	-- flight. Returns a table with helper methods (:Send, :Clear, etc).
	function Window:CreateAiTab(opts)
		opts = Kwargify({
			Name = "Solara Hub AI",
			Icon = "bot",
			ImageSource = "Material",
			SystemPrompt = nil,         -- if set, replaces the default Solara-aware prompt
			Knowledge = nil,            -- extra context block injected into the system prompt
			Model = "openai",
			ShowTitle = true,
			Endpoint = "https://text.pollinations.ai/openai",
			Webhook = nil,              -- Discord webhook URL for "Send script request" flow
			SaveFile = "LunaAI_chat.json", -- where to persist chat history
			AutoSave = true,
		}, opts or {})

		local hostTab = self:CreateTab({
			Name = opts.Name,
			Icon = opts.Icon,
			ImageSource = opts.ImageSource,
			ShowTitle = false, -- our own header looks cleaner
		})

		local Page = hostTab.Page

		-- The chat fills the whole page; remove the standard UIListLayout for this
		-- tab so absolute positioning works as expected, and clear residual padding.
		local existingList = Page:FindFirstChildOfClass("UIListLayout")
		if existingList then existingList:Destroy() end
		local existingPadding = Page:FindFirstChildOfClass("UIPadding")
		if existingPadding then existingPadding:Destroy() end
		-- Also kill any auto canvas so our absolute layout decides the size.
		if Page:IsA("ScrollingFrame") then
			Page.CanvasSize = UDim2.new(0, 0, 0, 0)
			Page.AutomaticCanvasSize = Enum.AutomaticSize.None
			Page.ScrollingEnabled = false
		end

		-- Default system prompt - rich enough that the model picks up tone/format
		-- expectations and the Solara Hub context without callers having to repeat it.
		local function buildSystemPrompt()
			-- NOTE: level-2 long string `[==[ ... ]==]` so the `[[SCRIPT_REQUEST: ...]]`
			-- marker inside this prompt doesn't close the literal early.
			local base = opts.SystemPrompt or [==[You are **Solara Hub AI** — a general-purpose Luau/Roblox scripting assistant built into Solara Hub. You help with Solara Hub itself AND with writing/fixing/explaining exploit scripts. Always reply in the same language the user writes in (Russian → Russian, English → English, etc.).

## What you can do
1. **Solara Hub help** — games supported, which tab to open, settings (SearchBar, Language, Zoom, theme), executors, how to load scripts from the hub.
2. **Write Luau scripts** — ESP, aimbot, autofarm, GUIs, remotes, hooks, file IO, etc. Put runnable code in ```lua ... ``` fences (the UI adds Copy / Execute under blocks).
3. **Debug & improve code** — explain errors, suggest fixes, optimize, add feature checks.
4. **Executor APIs** — use functions from the "Executor API" section below when relevant. Always guard: `if typeof(fn) == "function" then` or `pcall` — never assume every executor has Potassium-only APIs.

## Anti-hallucination (strict)
- Do NOT invent Solara Hub buttons, tabs, or features not listed under "Solara Hub UI facts".
- Do NOT invent game support: use only the "Supported games" list from host context when present.
- Do NOT invent executor functions: only suggest APIs from the reference below or standard Roblox (`game`, `Players`, `RunService`, etc.).
- Do NOT claim you ran code, opened UI, or sent Discord messages — the host UI does that.
- If unsure, say you are unsure and offer the script-request flow.

## Solara Hub UI facts (only these exist)
- Maintainer: **Samuraa1**. Discord: **discord.gg/DPCKQRJmdF**
- Tabs: **Home** (dashboard), **Universal Scripts** (sections below), **FE Scripts**, **Executors UI**, per-game tab when supported, **Hub Settings And More**
- Universal sections: Main Scripts, Aimbots + Silent Aim, ESP, Animations, Automization, Tools and Utilities, Trolling, Performance, DEV Tools, Admin, Visual, Backdoor Scanners
- Settings: Auto Execute, Destroy Hub, interface bind, SearchBar (Ctrl+F), Language, Zoom (Ctrl+/−/0), Interface Accent, Feedback, FPS slider, Credits
- Window: draggable, resizable (PC), search icon, minimize/close, white rescue drag bar below window when off-screen, notifications, this AI tab

## Script-request flow (missing hub scripts only)
- If the user wants a script the hub likely lacks, ask once if they want to forward to developers.
- If they confirm on the **next** message, append exactly one line:
  [[SCRIPT_REQUEST: short summary]]
- Never fake delivery; the UI shows a Send button.

## Coding standards for Luau you output
- Prefer `task.wait` over `wait`; use `game:GetService("ServiceName")`.
- LocalPlayer: `game.Players.LocalPlayer` — check it exists.
- For exploit-only calls, wrap in `pcall` or existence checks; mention if a feature needs a specific executor (e.g. Potassium).
- Keep scripts focused; comment only non-obvious logic.
- Never use `loadstring` on untrusted URLs unless the user explicitly asked.

## Executor API reference (guard every call)
**Closures:** checkcaller, clonefunction, hookfunction, restorefunction, newcclosure, loadstring, isexecutorclosure, islclosure, iscclosure
**Debug:** debug.getupvalue(s), debug.setupvalue, debug.getconstant(s), debug.setconstant, debug.getproto(s), debug.getstack, debug.getinfo
**Environment:** getgenv, getrenv, getsenv(script), getgc, filtergc, getreg
**Filesystem:** readfile, writefile, appendfile, isfile, isfolder, makefolder, listfiles, delfile, loadfile, getcustomasset
**Instances:** gethui, cloneref, getinstances, getnilinstances, fireclickdetector, fireproximityprompt, firetouchinterest, getcallbackvalue
**Metatable:** getrawmetatable, setrawmetatable, hookmetamethod, getnamecallmethod, setnamecallmethod (Potassium), setreadonly
**Reflection:** gethiddenproperty, sethiddenproperty, setscriptable, isscriptable, getthreadidentity, setthreadidentity
**Scripts:** getscripts, getloadedmodules, getscriptclosure, getscriptbytecode, decompile (Potassium)
**Signals:** getconnections, firesignal, replicatesignal
**HTTP / misc:** request({Url, Method, Headers, Body}), identifyexecutor, HttpService (game service), setclipboard, getfpscap, setfpscap, queueonteleport
**Drawing (Potassium):** Drawing.new("Line"|"Text"|...), cleardrawcache, isrenderobj
**WebSocket:** WebSocket.connect(url)
**Crypt (Potassium):** crypt.hash, crypt.encrypt, crypt.decrypt, base64encode/decode via crypt or global aliases

Compatibility: tags like [sUNC] mean widely supported; Potassium-only APIs may be missing on Solara/Xeno/Wave — always note that and offer a fallback using Roblox services.

## Formatting
- **bold**, *italic*, `inline code`, bullet lists, short ### headers when needed.
- Default length: under 280 words unless the user wants a full script or deep explanation.
- Be friendly and practical, not overly formal.
]==]
			if opts.Knowledge and type(opts.Knowledge) == "string" and opts.Knowledge ~= "" then
				base = base .. "\n\nExtra context provided by the host script:\n" .. opts.Knowledge
			end
			return base
		end

		-- ---------- header ----------
		local Header = Instance.new("Frame")
		Header.Name = RandomName()
		Header.BackgroundTransparency = 1
		Header.BorderSizePixel = 0
		Header.Position = UDim2.new(0, 12, 0, 6)
		Header.Size = UDim2.new(1, -24, 0, 28)
		Header.Parent = Page

		local headerTitle = Instance.new("TextLabel")
		headerTitle.BackgroundTransparency = 1
		headerTitle.Size = UDim2.new(1, -120, 1, 0)
		headerTitle.Position = UDim2.new(0, 0, 0, 0)
		headerTitle.Text = "Solara Hub AI"
		headerTitle.TextColor3 = Color3.fromRGB(245, 240, 255)
		headerTitle.Font = Enum.Font.GothamBold
		headerTitle.TextSize = 16
		headerTitle.TextXAlignment = Enum.TextXAlignment.Left
		headerTitle.TextYAlignment = Enum.TextYAlignment.Center
		headerTitle:SetAttribute("LunaNoTranslate", true)
		headerTitle.Parent = Header

		local function makeHeaderBtn(parent, iconName, tooltip, xOffset)
			local btn = Instance.new("ImageButton")
			btn.Name = RandomName()
			btn.AnchorPoint = Vector2.new(1, 0.5)
			btn.Position = UDim2.new(1, xOffset, 0.5, 0)
			btn.Size = UDim2.fromOffset(26, 22)
			btn.BackgroundColor3 = Color3.fromRGB(45, 40, 60)
			btn.BackgroundTransparency = 0.2
			btn.ImageColor3 = Color3.fromRGB(225, 220, 240)
			btn.AutoButtonColor = false
			btn.Parent = parent
			local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0, 6); c.Parent = btn
			local s = Instance.new("UIStroke"); s.Color = Color3.fromRGB(120, 110, 170); s.Transparency = 0.55; s.Parent = btn
			ApplyIcon(btn, GetIcon(iconName, "Material"))
			btn.MouseEnter:Connect(function() tween(btn, {BackgroundTransparency = 0.05}) end)
			btn.MouseLeave:Connect(function() tween(btn, {BackgroundTransparency = 0.2}) end)
			return btn
		end

		local SaveBtn  = makeHeaderBtn(Header, "save",          "Save chat",  -0)
		local LoadBtn  = makeHeaderBtn(Header, "folder_open",   "Load chat",  -32)
		local ClearBtn = makeHeaderBtn(Header, "delete",        "Clear chat", -64)

		-- ---------- chat container ----------
		local Container = Instance.new("Frame")
		Container.Name = RandomName()
		Container.BackgroundTransparency = 1
		Container.BorderSizePixel = 0
		Container.AnchorPoint = Vector2.new(0, 0)
		Container.Position = UDim2.new(0, 8, 0, 40)
		Container.Size = UDim2.new(1, -16, 1, -48)
		Container.Parent = Page

		-- Messages history (scrollable). Marked non-translatable so user/AI
		-- conversation text isn't sent through Google Translate.
		local Messages = Instance.new("ScrollingFrame")
		Messages.Name = RandomName()
		Messages.BackgroundTransparency = 1
		Messages.BorderSizePixel = 0
		Messages.Position = UDim2.new(0, 0, 0, 0)
		Messages.Size = UDim2.new(1, 0, 1, -56)
		Messages.ScrollBarThickness = 3
		Messages.ScrollBarImageColor3 = Color3.fromRGB(140, 130, 180)
		Messages.CanvasSize = UDim2.new(0, 0, 0, 0)
		Messages.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Messages.ScrollingDirection = Enum.ScrollingDirection.Y
		Messages:SetAttribute("LunaNoTranslate", true)
		Messages.Parent = Container

		local msgList = Instance.new("UIListLayout")
		msgList.SortOrder = Enum.SortOrder.LayoutOrder
		msgList.Padding = UDim.new(0, 10)
		msgList.Parent = Messages

		local msgPad = Instance.new("UIPadding")
		msgPad.PaddingLeft = UDim.new(0, 4)
		msgPad.PaddingRight = UDim.new(0, 4)
		msgPad.PaddingBottom = UDim.new(0, 4)
		msgPad.Parent = Messages

		-- ---------- input area ----------
		local InputBar = Instance.new("Frame")
		InputBar.Name = RandomName()
		InputBar.BackgroundColor3 = Color3.fromRGB(40, 36, 54)
		InputBar.BackgroundTransparency = 0.2
		InputBar.BorderSizePixel = 0
		InputBar.AnchorPoint = Vector2.new(0, 1)
		InputBar.Position = UDim2.new(0, 0, 1, 0)
		InputBar.Size = UDim2.new(1, 0, 0, 46)
		InputBar.Parent = Container

		local inputCorner = Instance.new("UICorner"); inputCorner.CornerRadius = UDim.new(0, 12); inputCorner.Parent = InputBar
		local inputStroke = Instance.new("UIStroke"); inputStroke.Color = Color3.fromRGB(130, 120, 170); inputStroke.Transparency = 0.55; inputStroke.Parent = InputBar
		local inputGradient = Instance.new("UIGradient"); inputGradient.Rotation = 90; inputGradient.Transparency = NumberSequence.new(0.1, 0.35); inputGradient.Parent = InputBar

		local InputBox = Instance.new("TextBox")
		InputBox.Name = RandomName()
		InputBox.BackgroundTransparency = 1
		InputBox.Position = UDim2.new(0, 14, 0, 0)
		InputBox.Size = UDim2.new(1, -64, 1, 0)
		InputBox.PlaceholderText = "Ask anything..."
		InputBox.PlaceholderColor3 = Color3.fromRGB(170, 165, 195)
		InputBox.Text = ""
		InputBox.TextColor3 = Color3.fromRGB(245, 245, 250)
		InputBox.Font = Enum.Font.GothamMedium
		InputBox.TextSize = 15
		InputBox.TextXAlignment = Enum.TextXAlignment.Left
		InputBox.TextYAlignment = Enum.TextYAlignment.Center
		InputBox.ClearTextOnFocus = false
		InputBox.MultiLine = false
		InputBox.Parent = InputBar

		local SendButton = Instance.new("ImageButton")
		SendButton.Name = RandomName()
		SendButton.AnchorPoint = Vector2.new(1, 0.5)
		SendButton.Position = UDim2.new(1, -8, 0.5, 0)
		SendButton.Size = UDim2.fromOffset(40, 30)
		SendButton.BackgroundColor3 = Color3.fromRGB(110, 90, 220)
		SendButton.BackgroundTransparency = 0.05
		SendButton.AutoButtonColor = false
		SendButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
		SendButton.Parent = InputBar
		ApplyIcon(SendButton, GetIcon("send", "Material"))
		local sendCorner = Instance.new("UICorner"); sendCorner.CornerRadius = UDim.new(0, 8); sendCorner.Parent = SendButton

		-- Conversation state. Includes the system prompt to keep replies on-topic.
		local conversation = {}
		table.insert(conversation, { role = "system", content = buildSystemPrompt() })

		-- ---------- markdown / rich text ----------
		-- Returns a list of segments: {kind="text"|"code", lang?, content}
		local function splitCodeBlocks(text)
			local segments = {}
			local cursor = 1
			while cursor <= #text do
				local s, e, lang, code = string.find(text, "```([%w_+%-]*)%s*\n?(.-)```", cursor)
				if not s then
					table.insert(segments, { kind = "text", content = text:sub(cursor) })
					break
				end
				if s > cursor then
					table.insert(segments, { kind = "text", content = text:sub(cursor, s - 1) })
				end
				table.insert(segments, { kind = "code", lang = (lang ~= "" and lang) or nil, content = code or "" })
				cursor = e + 1
			end
			if #segments == 0 then segments[1] = { kind = "text", content = text } end
			return segments
		end

		-- Light markdown -> RichText. Handles headers (#/##/###), bullets (- *),
		-- numbered lists (intact), inline bold/italic/strike/code, quotes (>).
		-- Inline code spans are extracted first so their contents survive the
		-- header / bullet / italic passes.
		local function richText(t)
			if type(t) ~= "string" then return tostring(t) end
			local placeholders = {}
			local function stash(s)
				table.insert(placeholders, s)
				return "\0CODE" .. #placeholders .. "\0"
			end
			-- Pull inline code FIRST so its content isn't mangled.
			t = t:gsub("`([^`\n]+)`", function(c) return stash("<font color=\"rgb(255,180,140)\">" .. c .. "</font>") end)
			-- HTML-escape what's left.
			t = t:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")
			-- Per-line transforms (headers, bullets, quotes).
			local lines = {}
			for raw in (t .. "\n"):gmatch("([^\n]*)\n") do
				local line = raw
				local h3 = line:match("^###%s+(.+)$")
				local h2 = not h3 and line:match("^##%s+(.+)$")
				local h1 = not h3 and not h2 and line:match("^#%s+(.+)$")
				local bullet = not (h1 or h2 or h3) and line:match("^[%-%*]%s+(.+)$")
				local quote = not (h1 or h2 or h3 or bullet) and line:match("^&gt;%s+(.+)$")
				if h1 then
					line = "<b><font size=\"22\">" .. h1 .. "</font></b>"
				elseif h2 then
					line = "<b><font size=\"19\">" .. h2 .. "</font></b>"
				elseif h3 then
					line = "<b><font size=\"16\">" .. h3 .. "</font></b>"
				elseif bullet then
					line = "  • " .. bullet
				elseif quote then
					line = "<i><font color=\"rgb(180,180,200)\">  " .. quote .. "</font></i>"
				end
				table.insert(lines, line)
			end
			t = table.concat(lines, "\n")
			-- Inline emphasis (after headers so we don't conflict with bullets).
			t = t:gsub("%*%*([^%*\n]+)%*%*", "<b>%1</b>")
			t = t:gsub("__([^_\n]+)__", "<b>%1</b>")
			t = t:gsub("%*([^%*\n]+)%*", "<i>%1</i>")
			t = t:gsub("~~([^~\n]+)~~", "<s>%1</s>")
			-- Restore code spans.
			t = t:gsub("\0CODE(%d+)\0", function(n) return placeholders[tonumber(n)] or "" end)
			return t
		end

		-- ---------- HTTP helpers ----------
		local function getHttpFn()
			return (syn and syn.request) or (http and http.request) or http_request or request
		end

		-- ---------- copying & clipboard ----------
		local function copyToClipboard(text)
			local ok = pcall(function()
				if setclipboard then setclipboard(text) end
				if toclipboard then toclipboard(text) end
			end)
			return ok
		end

		-- ---------- bubble / code-block builders ----------
		local function bubbleFor(role, parent)
			local Bubble = Instance.new("Frame")
			Bubble.Name = RandomName()
			Bubble.BorderSizePixel = 0
			Bubble.Size = UDim2.new(1, 0, 0, 0)
			Bubble.AutomaticSize = Enum.AutomaticSize.Y
			Bubble.BackgroundTransparency = 0.15
			if role == "user" then
				Bubble.BackgroundColor3 = Color3.fromRGB(95, 75, 200)
			else
				Bubble.BackgroundColor3 = Color3.fromRGB(38, 34, 52)
			end
			local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0, 12); c.Parent = Bubble
			local s = Instance.new("UIStroke"); s.Color = Color3.fromRGB(255, 255, 255); s.Transparency = 0.88; s.Parent = Bubble
			local pad = Instance.new("UIPadding")
			pad.PaddingTop = UDim.new(0, 10); pad.PaddingBottom = UDim.new(0, 10)
			pad.PaddingLeft = UDim.new(0, 14); pad.PaddingRight = UDim.new(0, 14)
			pad.Parent = Bubble
			Bubble.Parent = parent
			return Bubble
		end

		local function bubbleTextLabel(parent, text)
			local Label = Instance.new("TextLabel")
			Label.Name = "Text"
			Label.BackgroundTransparency = 1
			Label.Size = UDim2.new(1, 0, 0, 0)
			Label.AutomaticSize = Enum.AutomaticSize.Y
			Label.RichText = true
			Label.Text = richText(text)
			Label.TextColor3 = Color3.fromRGB(245, 245, 250)
			Label.TextSize = 14
			Label.Font = Enum.Font.GothamMedium
			Label.TextXAlignment = Enum.TextXAlignment.Left
			Label.TextYAlignment = Enum.TextYAlignment.Top
			Label.TextWrapped = true
			Label:SetAttribute("LunaNoTranslate", true)
			Label.Parent = parent
			return Label
		end

		-- Renders a fenced ```lua ... ``` block as its own card with copy + execute buttons.
		local function makeCodeBlock(parent, code, lang)
			local Block = Instance.new("Frame")
			Block.Name = RandomName()
			Block.BackgroundColor3 = Color3.fromRGB(18, 16, 26)
			Block.BackgroundTransparency = 0
			Block.BorderSizePixel = 0
			Block.Size = UDim2.new(1, 0, 0, 0)
			Block.AutomaticSize = Enum.AutomaticSize.Y
			Block.Parent = parent
			local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0, 8); c.Parent = Block
			local s = Instance.new("UIStroke"); s.Color = Color3.fromRGB(110, 95, 180); s.Transparency = 0.6; s.Parent = Block

			local TitleBar = Instance.new("Frame")
			TitleBar.BackgroundTransparency = 1
			TitleBar.Size = UDim2.new(1, 0, 0, 26)
			TitleBar.Parent = Block

			local langLabel = Instance.new("TextLabel")
			langLabel.BackgroundTransparency = 1
			langLabel.Position = UDim2.new(0, 12, 0, 0)
			langLabel.Size = UDim2.new(1, -120, 1, 0)
			langLabel.Text = (lang or "code"):lower()
			langLabel.Font = Enum.Font.GothamMedium
			langLabel.TextSize = 12
			langLabel.TextColor3 = Color3.fromRGB(180, 170, 220)
			langLabel.TextXAlignment = Enum.TextXAlignment.Left
			langLabel.TextYAlignment = Enum.TextYAlignment.Center
			langLabel:SetAttribute("LunaNoTranslate", true)
			langLabel.Parent = TitleBar

			local function smallBtn(text, xOffset)
				local b = Instance.new("TextButton")
				b.AnchorPoint = Vector2.new(1, 0.5)
				b.Position = UDim2.new(1, xOffset, 0.5, 0)
				b.Size = UDim2.fromOffset(54, 20)
				b.BackgroundColor3 = Color3.fromRGB(70, 60, 130)
				b.BackgroundTransparency = 0.1
				b.Text = text
				b.Font = Enum.Font.GothamSemibold
				b.TextSize = 11
				b.TextColor3 = Color3.fromRGB(240, 235, 255)
				b.AutoButtonColor = false
				b:SetAttribute("LunaNoTranslate", true)
				b.Parent = TitleBar
				local bc = Instance.new("UICorner"); bc.CornerRadius = UDim.new(0, 5); bc.Parent = b
				local bs = Instance.new("UIStroke"); bs.Color = Color3.fromRGB(160, 145, 230); bs.Transparency = 0.5; bs.Parent = b
				b.MouseEnter:Connect(function() tween(b, {BackgroundTransparency = 0}) end)
				b.MouseLeave:Connect(function() tween(b, {BackgroundTransparency = 0.1}) end)
				return b
			end

			local copyBtn = smallBtn("Copy", -8)
			local execBtn = smallBtn("Execute", -68)

			local code_pad = Instance.new("UIPadding")
			code_pad.PaddingLeft = UDim.new(0, 12)
			code_pad.PaddingRight = UDim.new(0, 12)
			code_pad.PaddingBottom = UDim.new(0, 10)
			code_pad.PaddingTop = UDim.new(0, 30) -- below TitleBar
			code_pad.Parent = Block

			local codeLabel = Instance.new("TextLabel")
			codeLabel.BackgroundTransparency = 1
			codeLabel.Size = UDim2.new(1, 0, 0, 0)
			codeLabel.AutomaticSize = Enum.AutomaticSize.Y
			codeLabel.Text = code
			codeLabel.Font = Enum.Font.Code
			codeLabel.TextSize = 13
			codeLabel.TextColor3 = Color3.fromRGB(220, 215, 240)
			codeLabel.TextXAlignment = Enum.TextXAlignment.Left
			codeLabel.TextYAlignment = Enum.TextYAlignment.Top
			codeLabel.TextWrapped = true
			codeLabel:SetAttribute("LunaNoTranslate", true)
			codeLabel.Parent = Block

			copyBtn.MouseButton1Click:Connect(function()
				if copyToClipboard(code) then
					copyBtn.Text = "Copied!"
					task.delay(1.2, function() if copyBtn and copyBtn.Parent then copyBtn.Text = "Copy" end end)
				end
			end)
			execBtn.MouseButton1Click:Connect(function()
				local ok, err = pcall(function()
					local fn, perr = loadstring(code)
					if not fn then error(perr or "loadstring failed", 0) end
					task.spawn(fn)
				end)
				if ok then
					execBtn.Text = "Running"
					task.delay(1.6, function() if execBtn and execBtn.Parent then execBtn.Text = "Execute" end end)
				else
					Luna:Notification({ Title = "Execute failed", Content = tostring(err), Icon = "error", ImageSource = "Material", Duration = 6 })
				end
			end)
			return Block
		end

		-- ---------- assemble a single chat row ----------
		-- We build BOTH the row layout (left/right alignment) AND populate the
		-- bubble with text/code segments. Returns helpers for in-place editing
		-- (used by the streaming "thinking" indicator).
		local function appendMessage(role, text)
			local Row = Instance.new("Frame")
			Row.Name = RandomName()
			Row.BackgroundTransparency = 1
			Row.BorderSizePixel = 0
			Row.Size = UDim2.new(1, 0, 0, 0)
			Row.AutomaticSize = Enum.AutomaticSize.Y
			Row.LayoutOrder = #Messages:GetChildren()
			Row.Parent = Messages

			-- Per-row layout. UIListLayout keeps the bubble + meta-row stacked.
			local rowList = Instance.new("UIListLayout")
			rowList.SortOrder = Enum.SortOrder.LayoutOrder
			rowList.Padding = UDim.new(0, 4)
			rowList.HorizontalAlignment = (role == "user") and Enum.HorizontalAlignment.Right or Enum.HorizontalAlignment.Left
			rowList.Parent = Row

			-- Width-limited holder so user / AI bubbles get a hard maximum that
			-- TextWrapped can use. UISizeConstraint MaxSize.X = ~75% of container.
			local Holder = Instance.new("Frame")
			Holder.Name = "Holder"
			Holder.BackgroundTransparency = 1
			Holder.BorderSizePixel = 0
			Holder.Size = UDim2.new(0, 0, 0, 0)
			Holder.AutomaticSize = Enum.AutomaticSize.XY
			Holder.LayoutOrder = 1
			Holder.Parent = Row

			local function refreshMax()
				local maxX = math.max(160, math.floor(Messages.AbsoluteSize.X * 0.85) - 12)
				Holder:FindFirstChildOfClass("UISizeConstraint").MaxSize = Vector2.new(maxX, math.huge)
			end
			local sc = Instance.new("UISizeConstraint")
			sc.MaxSize = Vector2.new(360, math.huge)
			sc.Parent = Holder
			task.defer(refreshMax)
			Messages:GetPropertyChangedSignal("AbsoluteSize"):Connect(refreshMax)

			-- Inner list so the bubble + any code blocks stack vertically inside Holder.
			local innerList = Instance.new("UIListLayout")
			innerList.SortOrder = Enum.SortOrder.LayoutOrder
			innerList.Padding = UDim.new(0, 6)
			innerList.HorizontalAlignment = (role == "user") and Enum.HorizontalAlignment.Right or Enum.HorizontalAlignment.Left
			innerList.Parent = Holder

			-- Main bubble holds the prose. Code blocks render OUTSIDE the bubble
			-- below it (full Holder width) so monospaced text never wraps weird.
			local Bubble = bubbleFor(role, Holder)

			local Label = bubbleTextLabel(Bubble, "")

			-- Tiny meta row with Copy button (AI bubbles only - copying our own
			-- messages back to ourselves is silly).
			local metaRow
			if role == "assistant" then
				metaRow = Instance.new("Frame")
				metaRow.BackgroundTransparency = 1
				metaRow.Size = UDim2.new(0, 60, 0, 16)
				metaRow.LayoutOrder = 999
				metaRow.Parent = Holder

				local cpy = Instance.new("TextButton")
				cpy.BackgroundColor3 = Color3.fromRGB(52, 46, 78)
				cpy.BackgroundTransparency = 0.25
				cpy.Size = UDim2.new(1, 0, 1, 0)
				cpy.Text = "Copy"
				cpy.Font = Enum.Font.GothamMedium
				cpy.TextSize = 11
				cpy.TextColor3 = Color3.fromRGB(220, 215, 240)
				cpy.AutoButtonColor = false
				cpy:SetAttribute("LunaNoTranslate", true)
				cpy.Parent = metaRow
				local cc = Instance.new("UICorner"); cc.CornerRadius = UDim.new(0, 5); cc.Parent = cpy
				cpy.MouseEnter:Connect(function() tween(cpy, {BackgroundTransparency = 0.05}) end)
				cpy.MouseLeave:Connect(function() tween(cpy, {BackgroundTransparency = 0.25}) end)
				cpy.MouseButton1Click:Connect(function()
					-- Copy the raw, unrendered text so it pastes nicely elsewhere.
					if copyToClipboard(Label:GetAttribute("LunaRawText") or text or "") then
						cpy.Text = "Copied!"
						task.delay(1.2, function() if cpy and cpy.Parent then cpy.Text = "Copy" end end)
					end
				end)
			end

			-- Replace the bubble + code blocks with the given raw text. Used both
			-- by streaming (think bubble update) and the initial draw.
			local function setContent(raw)
				Label:SetAttribute("LunaRawText", raw)
				-- Tear down any prior code blocks (keep Bubble + metaRow).
				for _, child in ipairs(Holder:GetChildren()) do
					if child:IsA("Frame") and child ~= Bubble and child ~= metaRow then
						child:Destroy()
					end
				end
				local segments = splitCodeBlocks(raw)
				-- Text segments are merged into the bubble; code segments become cards.
				local proseChunks = {}
				local order = 2
				for _, seg in ipairs(segments) do
					if seg.kind == "text" then
						table.insert(proseChunks, seg.content)
					else
						-- Flush any accumulated prose first so order is correct.
						Label.Text = richText(table.concat(proseChunks, ""))
						proseChunks = {}
						local codeBlock = makeCodeBlock(Holder, seg.content, seg.lang)
						codeBlock.LayoutOrder = order
						order = order + 1
						-- Add a fresh empty bubble for any text AFTER this code block.
						local follow = bubbleFor(role, Holder)
						follow.LayoutOrder = order
						order = order + 1
						local newLabel = bubbleTextLabel(follow, "")
						Label = newLabel
					end
				end
				if #proseChunks > 0 then
					Label.Text = richText(table.concat(proseChunks, ""))
				end
				-- Hide empty trailing bubbles (happens when the message ENDS with a code block).
				if Label.Text == "" then
					Label.Parent.Visible = false
				end
				-- Auto-scroll to the latest message.
				task.defer(function()
					task.wait()
					Messages.CanvasPosition = Vector2.new(0, Messages.AbsoluteCanvasSize.Y)
				end)
			end

			setContent(text or "")

			-- Soft fade-in.
			Bubble.BackgroundTransparency = 1
			Label.TextTransparency = 1
			TweenService:Create(Bubble, TweenInfo.new(0.2), {BackgroundTransparency = 0.15}):Play()
			TweenService:Create(Label, TweenInfo.new(0.25), {TextTransparency = 0}):Play()

			return Row, Bubble, Label, setContent
		end

		-- ---------- script request flow ----------
		-- Adds a "Send request to developers" card below the AI's bubble. Pressing
		-- it fires the webhook with userinfo + a short description; the card then
		-- collapses into a small confirmation pill.
		local function addScriptRequestCard(holder, description)
			local Card = Instance.new("Frame")
			Card.Name = RandomName()
			Card.BackgroundColor3 = Color3.fromRGB(30, 90, 50)
			Card.BackgroundTransparency = 0.1
			Card.Size = UDim2.new(1, 0, 0, 64)
			Card.LayoutOrder = 998
			Card.Parent = holder
			local c = Instance.new("UICorner"); c.CornerRadius = UDim.new(0, 10); c.Parent = Card
			local s = Instance.new("UIStroke"); s.Color = Color3.fromRGB(120, 220, 150); s.Transparency = 0.5; s.Parent = Card

			local title = Instance.new("TextLabel")
			title.BackgroundTransparency = 1
			title.Position = UDim2.new(0, 14, 0, 6)
			title.Size = UDim2.new(1, -28, 0, 18)
			title.Text = "Send script request to developers?"
			title.Font = Enum.Font.GothamBold
			title.TextSize = 13
			title.TextColor3 = Color3.fromRGB(245, 250, 240)
			title.TextXAlignment = Enum.TextXAlignment.Left
			title:SetAttribute("LunaNoTranslate", true)
			title.Parent = Card

			local desc = Instance.new("TextLabel")
			desc.BackgroundTransparency = 1
			desc.Position = UDim2.new(0, 14, 0, 24)
			desc.Size = UDim2.new(1, -110, 0, 18)
			desc.Text = description
			desc.Font = Enum.Font.GothamMedium
			desc.TextSize = 12
			desc.TextColor3 = Color3.fromRGB(220, 235, 220)
			desc.TextXAlignment = Enum.TextXAlignment.Left
			desc.TextWrapped = true
			desc:SetAttribute("LunaNoTranslate", true)
			desc.Parent = Card

			local sendBtn = Instance.new("TextButton")
			sendBtn.AnchorPoint = Vector2.new(1, 0.5)
			sendBtn.Position = UDim2.new(1, -8, 0.5, 0)
			sendBtn.Size = UDim2.fromOffset(86, 30)
			sendBtn.BackgroundColor3 = Color3.fromRGB(60, 170, 90)
			sendBtn.BackgroundTransparency = 0.1
			sendBtn.Text = "Send"
			sendBtn.Font = Enum.Font.GothamBold
			sendBtn.TextSize = 13
			sendBtn.TextColor3 = Color3.fromRGB(245, 255, 240)
			sendBtn.AutoButtonColor = false
			sendBtn:SetAttribute("LunaNoTranslate", true)
			sendBtn.Parent = Card
			local bc = Instance.new("UICorner"); bc.CornerRadius = UDim.new(0, 7); bc.Parent = sendBtn

			sendBtn.MouseButton1Click:Connect(function()
				if not opts.Webhook or opts.Webhook == "" then
					Luna:Notification({ Title = "No webhook", Content = "Host script didn't configure AiSettings.Webhook.", Icon = "warning", ImageSource = "Material", Duration = 5 })
					return
				end
				sendBtn.Text = "Sending..."
				sendBtn.AutoButtonColor = false
				task.spawn(function()
					local user = Players.LocalPlayer
					local gameName = "Unknown"
					pcall(function()
						local info = MarketplaceService:GetProductInfo(game.PlaceId)
						if info and info.Name then gameName = info.Name end
					end)
					local payload = HttpService:JSONEncode({
						username = "Solara Hub AI",
						embeds = { {
							title = "Script Request",
							description = description,
							color = 6906105,
							fields = {
								{ name = "User",  value = (Window._AnonymousMode and "Anonymous (hidden)") or string.format("%s (@%s, id=%d)", user.DisplayName, user.Name, user.UserId), inline = true },
								{ name = "Game",  value = string.format("%s (placeId=%d)", gameName, game.PlaceId), inline = true },
								{ name = "Time",  value = os.date("!%Y-%m-%d %H:%M:%S UTC"), inline = false },
							},
						} },
					})
					local fn = getHttpFn()
					local ok = false
					if fn then
						local res
						ok, res = pcall(fn, { Url = opts.Webhook, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = payload })
						if ok and res and type(res) == "table" and res.StatusCode and res.StatusCode >= 400 then ok = false end
					end
					if ok then
						sendBtn.Text = "Sent ✓"
						sendBtn.BackgroundColor3 = Color3.fromRGB(45, 130, 70)
						Luna:Notification({ Title = "Request sent", Content = "Devs will see your request soon.", Icon = "check_circle", ImageSource = "Material", Duration = 4 })
					else
						sendBtn.Text = "Failed"
						sendBtn.BackgroundColor3 = Color3.fromRGB(140, 60, 60)
						Luna:Notification({ Title = "Send failed", Content = "Webhook didn't accept the request.", Icon = "error", ImageSource = "Material", Duration = 5 })
					end
				end)
			end)
		end

		-- Strips the [[SCRIPT_REQUEST: ...]] marker (case-insensitive) and returns
		-- (cleaned_text, description_or_nil). The marker survives across newlines.
		local function extractScriptRequest(text)
			local desc = text:match("%[%[SCRIPT_REQUEST:%s*(.-)%]%]")
			if not desc then desc = text:match("%[%[script_request:%s*(.-)%]%]") end
			if not desc then return text, nil end
			local cleaned = text:gsub("%[%[SCRIPT_REQUEST:.-%]%]", ""):gsub("%[%[script_request:.-%]%]", "")
			cleaned = (cleaned:gsub("%s+$", ""))
			return cleaned, desc:gsub("^%s+", ""):gsub("%s+$", "")
		end

		-- ---------- main API ----------
		local AiTab = { Messages = Messages, Conversation = conversation }
		local isGenerating = false

		local function setSendEnabled(enabled)
			SendButton.AutoButtonColor = enabled
			SendButton.BackgroundColor3 = enabled and Color3.fromRGB(110, 90, 220) or Color3.fromRGB(60, 55, 80)
		end

		local function saveChat()
			if not opts.AutoSave or not writefile then return end
			pcall(function()
				writefile(opts.SaveFile, HttpService:JSONEncode({
					system = conversation[1] and conversation[1].content or "",
					conv   = conversation,
				}))
			end)
		end

		function AiTab:Send(prompt)
			prompt = tostring(prompt or "")
			if prompt == "" or isGenerating then return end
			isGenerating = true
			setSendEnabled(false)

			table.insert(conversation, { role = "user", content = prompt })
			appendMessage("user", prompt)

			-- Thinking bubble with an animated ellipsis until the response arrives.
			local _, thinkBubble, thinkLabel, thinkSet = appendMessage("assistant", "Thinking")
			task.spawn(function()
				local dots = 0
				while isGenerating and thinkBubble.Parent do
					dots = (dots % 3) + 1
					thinkLabel.Text = richText("*Thinking" .. string.rep(".", dots) .. "*")
					task.wait(0.35)
				end
			end)

			task.spawn(function()
				local payload = HttpService:JSONEncode({ messages = conversation, model = opts.Model })
				local fn = getHttpFn()
				local replyText

				if fn then
					local ok, res = pcall(fn, {
						Url = opts.Endpoint,
						Method = "POST",
						Headers = { ["Content-Type"] = "application/json" },
						Body = payload,
					})
					if ok and res and res.Body then
						local okDec, decoded = pcall(function() return HttpService:JSONDecode(res.Body) end)
						if okDec and decoded and decoded.choices and decoded.choices[1] then
							replyText = decoded.choices[1].message and decoded.choices[1].message.content
						end
					end
				end

				if not replyText then
					replyText = "_(Unable to reach the AI service. Make sure your executor supports HTTP POST.)_"
				end

				isGenerating = false
				setSendEnabled(true)

				table.insert(conversation, { role = "assistant", content = replyText })
				saveChat()

				-- Pull out the [[SCRIPT_REQUEST: ...]] marker if present.
				local visibleText, reqDescription = extractScriptRequest(replyText)

				-- Replace the thinking bubble with the actual reply (with markdown / code blocks).
				if thinkSet and thinkLabel and thinkLabel.Parent then
					thinkSet(visibleText)
				else
					appendMessage("assistant", visibleText)
				end

				if reqDescription then
					-- The Holder for the assistant bubble is the parent of thinkBubble.
					local holder = thinkBubble and thinkBubble.Parent
					if holder then addScriptRequestCard(holder, reqDescription) end
				end

				task.defer(function()
					task.wait()
					Messages.CanvasPosition = Vector2.new(0, Messages.AbsoluteCanvasSize.Y)
				end)
			end)
		end

		function AiTab:Clear()
			for _, child in ipairs(Messages:GetChildren()) do
				if child:IsA("Frame") then child:Destroy() end
			end
			conversation = {}
			table.insert(conversation, { role = "system", content = buildSystemPrompt() })
			AiTab.Conversation = conversation
			saveChat()
		end

		function AiTab:Save()
			saveChat()
			Luna:Notification({ Title = "Chat saved", Content = opts.SaveFile, Icon = "check_circle", ImageSource = "Material", Duration = 3 })
		end

		function AiTab:Load()
			if not isfile or not readfile then return end
			if not isfile(opts.SaveFile) then
				Luna:Notification({ Title = "No saved chat", Content = "Nothing to load yet.", Icon = "info", ImageSource = "Material", Duration = 3 })
				return
			end
			local ok, data = pcall(function() return HttpService:JSONDecode(readfile(opts.SaveFile)) end)
			if not ok or not data or not data.conv then
				Luna:Notification({ Title = "Load failed", Content = "Could not read saved chat.", Icon = "error", ImageSource = "Material", Duration = 4 })
				return
			end
			AiTab:Clear()
			conversation = {}
			for _, m in ipairs(data.conv) do
				table.insert(conversation, m)
				if m.role == "user" or m.role == "assistant" then
					appendMessage(m.role, m.content)
				end
			end
			AiTab.Conversation = conversation
			Luna:Notification({ Title = "Chat loaded", Content = "Restored " .. (#conversation - 1) .. " messages.", Icon = "check_circle", ImageSource = "Material", Duration = 3 })
		end

		InputBox.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local t = InputBox.Text
				InputBox.Text = ""
				AiTab:Send(t)
			end
		end)
		SendButton.MouseButton1Click:Connect(function()
			local t = InputBox.Text
			InputBox.Text = ""
			AiTab:Send(t)
		end)
		SaveBtn.MouseButton1Click:Connect(function() AiTab:Save() end)
		LoadBtn.MouseButton1Click:Connect(function() AiTab:Load() end)
		ClearBtn.MouseButton1Click:Connect(function() AiTab:Clear() end)

		-- Subtle hover for the send button
		SendButton.MouseEnter:Connect(function() tween(SendButton, {BackgroundTransparency = -0.05}) end)
		SendButton.MouseLeave:Connect(function() tween(SendButton, {BackgroundTransparency = 0.05}) end)

		-- Friendly opening line so the tab doesn't feel empty.
		task.defer(function()
			appendMessage("assistant", "Hey! I'm **Solara Hub AI**. I can help with **Solara Hub**, write/fix **Luau scripts**, explain **executor APIs**, and answer Roblox questions. Paste code or describe what you need — I'll use ```lua blocks with *Copy* / *Execute* buttons.")
		end)

		Window._AiTab = AiTab
		return AiTab
	end

	function Window:CreateScriptSearcherTab(opts)
		opts = Kwargify({
			Name = "Scripts",
			Icon = "search",
			ImageSource = "Lucide",
			ShowTitle = false,
		}, opts or {})

		local hostTab = self:CreateTab({
			Name = opts.Name,
			Icon = opts.Icon,
			ImageSource = opts.ImageSource,
			ShowTitle = false,
		})
		local Page = hostTab.Page

		local source = "ScriptBlox"
		local pageNum = 1
		local loading = false
		local filters = {
			verifiedOnly = false,
			notPaid = false,
			unpatched = false,
			noKeySystem = false,
			key = false,
			universal = false,
			verified = false,
			patched = false,
		}

		local statusLabel
		local runSearch

		local function setStatus(msg)
			if statusLabel then statusLabel:Set(tostring(msg)) end
		end

		local searchSec = hostTab:CreateSection("Search")
		local queryInput = searchSec:CreateInput({
			Name = "Query",
			PlaceholderText = "e.g. infinite yield, arsenal, universal",
			Enter = true,
			Flag = "SS_Query",
			Callback = function()
				runSearch()
			end,
		})
		local sourceDropdown = searchSec:CreateDropdown({
			Name = "API Source",
			Options = {"ScriptBlox", "RScripts"},
			CurrentOption = "ScriptBlox",
			Flag = "SS_Source",
			Callback = function(opt)
				local v = opt
				if type(v) == "table" then v = v[1] end
				if type(v) == "string" and v ~= "" then source = v end
				setStatus("Source: " .. source)
			end,
		})
		searchSec:CreateButton({
			Name = "Search",
			Description = "ScriptBlox / RScripts APIs",
			Callback = function()
				runSearch()
			end,
		})

		statusLabel = searchSec:CreateLabel({
			Text = "Enter a query and press Search (needs HttpService / request).",
			Style = 2,
		})

		local resultsHost = Instance.new("Frame")
		resultsHost.Name = "ScriptSearcherResults"
		resultsHost.BackgroundColor3 = Color3.fromRGB(20, 19, 26)
		resultsHost.BackgroundTransparency = 0.15
		resultsHost.BorderSizePixel = 0
		resultsHost.Size = UDim2.new(1, 0, 0, 340)
		resultsHost.LayoutOrder = 4
		resultsHost.Parent = Page
		local hostCorner = Instance.new("UICorner")
		hostCorner.CornerRadius = UDim.new(0, 8)
		hostCorner.Parent = resultsHost
		local hostStroke = Instance.new("UIStroke")
		hostStroke.Color = Color3.fromRGB(70, 68, 85)
		hostStroke.Transparency = 0.6
		hostStroke.Parent = resultsHost

		local Scroll = Instance.new("ScrollingFrame")
		Scroll.Name = "ResultsScroll"
		Scroll.BackgroundTransparency = 1
		Scroll.BorderSizePixel = 0
		Scroll.Size = UDim2.new(1, -8, 1, -8)
		Scroll.Position = UDim2.new(0, 4, 0, 4)
		Scroll.ScrollBarThickness = 5
		Scroll.ScrollBarImageColor3 = Color3.fromRGB(110, 102, 153)
		Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
		Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Scroll.ScrollingDirection = Enum.ScrollingDirection.Y
		Scroll.Parent = resultsHost
		local listLayout = Instance.new("UIListLayout")
		listLayout.Padding = UDim.new(0, 6)
		listLayout.SortOrder = Enum.SortOrder.LayoutOrder
		listLayout.Parent = Scroll
		local scrollPad = Instance.new("UIPadding")
		scrollPad.PaddingTop = UDim.new(0, 4)
		scrollPad.PaddingBottom = UDim.new(0, 8)
		scrollPad.PaddingLeft = UDim.new(0, 4)
		scrollPad.PaddingRight = UDim.new(0, 4)
		scrollPad.Parent = Scroll

		local function cardWidth()
			return math.max(Scroll.AbsoluteSize.X - 12, 220)
		end

		local function scrollToResults()
			if not Page:IsA("ScrollingFrame") then return end
			task.defer(function()
				task.wait(0.15)
				local pageY = Page.AbsolutePosition.Y
				local hostY = resultsHost.AbsolutePosition.Y
				local target = hostY - pageY + Page.CanvasPosition.Y - 12
				Page.CanvasPosition = Vector2.new(0, math.max(0, target))
			end)
		end

		local sbSec = hostTab:CreateSection("ScriptBlox filters")
		local function sbToggle(name, key)
			sbSec:CreateToggle({
				Name = name,
				CurrentValue = false,
				Callback = function(v) filters[key] = v end,
			})
		end
		sbToggle("Key system", "key")
		sbToggle("Universal", "universal")
		sbToggle("Verified", "verified")
		sbToggle("Patched", "patched")

		local rsSec = hostTab:CreateSection("RScripts filters")
		local function rsToggle(name, key)
			rsSec:CreateToggle({
				Name = name,
				CurrentValue = false,
				Callback = function(v) filters[key] = v end,
			})
		end
		rsToggle("Verified only", "verifiedOnly")
		rsToggle("Free only", "notPaid")
		rsToggle("Unpatched", "unpatched")
		rsToggle("No key system", "noKeySystem")

		local function setSectionLayoutOrder(sectionTitle, order)
			for _, ch in ipairs(Page:GetChildren()) do
				if ch:IsA("TextLabel") and ch.Text == sectionTitle then
					ch.LayoutOrder = order
					break
				end
			end
		end
		setSectionLayoutOrder("Search", 1)
		setSectionLayoutOrder("ScriptBlox filters", 20)
		setSectionLayoutOrder("RScripts filters", 21)

		local function clearResults()
			for _, ch in ipairs(Scroll:GetChildren()) do
				if ch:IsA("Frame") then ch:Destroy() end
			end
		end

		local function notifyCopy(text)
			Luna:Notification({Title = "Script Searcher", Content = text, Icon = "content_copy"})
		end

		local function makeCard(data, order)
			local card = Instance.new("Frame")
			card.BackgroundColor3 = Color3.fromRGB(26, 25, 32)
			card.BackgroundTransparency = 0.05
			card.Size = UDim2.fromOffset(cardWidth(), 88)
			card.LayoutOrder = order
			card.ZIndex = 2
			card.Parent = Scroll
			local cCorner = Instance.new("UICorner")
			cCorner.CornerRadius = UDim.new(0, 10)
			cCorner.Parent = card
			local cStroke = Instance.new("UIStroke")
			cStroke.Color = Color3.fromRGB(70, 68, 85)
			cStroke.Transparency = 0.75
			cStroke.Parent = card

			local title = Instance.new("TextLabel")
			title.BackgroundTransparency = 1
			title.Position = UDim2.new(0, 10, 0, 8)
			title.Size = UDim2.new(1, -20, 0, 36)
			title.Font = Enum.Font.GothamSemibold
			title.TextSize = 13
			title.TextColor3 = Color3.fromRGB(245, 245, 250)
			title.TextWrapped = true
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.TextYAlignment = Enum.TextYAlignment.Top
			title.Text = data.title or "Untitled"
			title.Parent = card

			local meta = Instance.new("TextLabel")
			meta.BackgroundTransparency = 1
			meta.Position = UDim2.new(0, 10, 0, 44)
			meta.Size = UDim2.new(1, -20, 0, 32)
			meta.Font = Enum.Font.Gotham
			meta.TextSize = 11
			meta.TextColor3 = Color3.fromRGB(160, 160, 170)
			meta.TextWrapped = true
			meta.TextXAlignment = Enum.TextXAlignment.Left
			meta.TextYAlignment = Enum.TextYAlignment.Top
			meta.Text = (data.game or "Unknown") .. "\n" .. (data.author or data.owner or "—")
			meta.Parent = card

			local btnRow = Instance.new("Frame")
			btnRow.BackgroundTransparency = 1
			btnRow.Position = UDim2.new(0, 8, 1, -34)
			btnRow.Size = UDim2.new(1, -16, 0, 26)
			btnRow.Parent = card
			local btnLayout = Instance.new("UIListLayout")
			btnLayout.FillDirection = Enum.FillDirection.Horizontal
			btnLayout.Padding = UDim.new(0, 6)
			btnLayout.Parent = btnRow

			local function miniBtn(text, orderB, cb)
				local b = Instance.new("TextButton")
				b.BackgroundColor3 = Color3.fromRGB(110, 102, 153)
				b.Size = UDim2.new(0.5, -3, 1, 0)
				b.Font = Enum.Font.GothamSemibold
				b.TextSize = 11
				b.TextColor3 = Color3.new(1, 1, 1)
				b.Text = text
				b.LayoutOrder = orderB
				b.AutoButtonColor = false
				b.Parent = btnRow
				local bc = Instance.new("UICorner")
				bc.CornerRadius = UDim.new(0, 6)
				bc.Parent = b
				b.MouseButton1Click:Connect(cb)
				b.Activated:Connect(cb)
				return b
			end

			miniBtn("Execute", 1, function()
				if data.raw and data.raw ~= "" then
					local ok, err = pcall(function() loadstring(data.raw)() end)
					if not ok then
						Luna:Notification({Title = "Execute Error", Content = tostring(err), Icon = "error"})
					end
				elseif data.fetchUrl then
					task.spawn(function()
						local body = LunaHttpGet(data.fetchUrl)
						if body then
							local ok2, err = pcall(function() loadstring(body)() end)
							if not ok2 then
								Luna:Notification({Title = "Execute Error", Content = tostring(err), Icon = "error"})
							end
						else
							Luna:Notification({Title = "Script Searcher", Content = "Could not fetch script.", Icon = "error"})
						end
					end)
				end
			end)
			miniBtn("Copy", 2, function()
				if setclipboard and data.link then
					setclipboard(data.link)
					notifyCopy("Link copied.")
				elseif setclipboard and data.raw and data.raw ~= "" then
					setclipboard(data.raw)
					notifyCopy("Script copied.")
				elseif setclipboard and data.fetchUrl then
					setclipboard(data.fetchUrl)
					notifyCopy("URL copied.")
				end
			end)

			card.MouseEnter:Connect(function() tween(cStroke, {Transparency = 0.35}) end)
			card.MouseLeave:Connect(function() tween(cStroke, {Transparency = 0.75}) end)
		end

		local function getQuery()
			if queryInput and queryInput.CurrentValue then
				local t = tostring(queryInput.CurrentValue)
				t = t:gsub("^%s+", ""):gsub("%s+$", "")
				if t ~= "" then return t end
			end
			local opt = Luna.Options and Luna.Options["SS_Query"]
			if opt and opt.CurrentValue then
				return tostring(opt.CurrentValue):gsub("^%s+", ""):gsub("%s+$", "")
			end
			return ""
		end

		Scroll:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			local w = cardWidth()
			for _, ch in ipairs(Scroll:GetChildren()) do
				if ch:IsA("Frame") then
					ch.Size = UDim2.fromOffset(w, ch.Size.Y.Offset)
				end
			end
		end)

		local function syncSource()
			if sourceDropdown and sourceDropdown.CurrentOption then
				local v = sourceDropdown.CurrentOption
				if type(v) == "table" then v = v[1] end
				if type(v) == "string" and v ~= "" then
					source = v
					return
				end
			end
			local opt = Luna.Options and Luna.Options["SS_Source"]
			if opt and opt.CurrentOption then
				local v = opt.CurrentOption
				if type(v) == "table" then v = v[1] end
				if type(v) == "string" and v ~= "" then source = v end
			end
		end

		local function buildRScriptsUrl(q)
			local params = {
				page = tostring(pageNum),
				q = q,
				orderBy = "date",
				sort = "desc",
			}
			if filters.verifiedOnly then params.verifiedOnly = "true" end
			if filters.notPaid then params.notPaid = "true" end
			if filters.unpatched then params.unpatched = "true" end
			if filters.noKeySystem then params.noKeySystem = "true" end
			local parts = {}
			for k, v in pairs(params) do
				if v and v ~= "" then
					table.insert(parts, HttpService:UrlEncode(k) .. "=" .. HttpService:UrlEncode(tostring(v)))
				end
			end
			return "https://rscripts.net/api/v2/scripts?" .. table.concat(parts, "&")
		end

		local function buildScriptBloxUrl(q)
			local url = "https://scriptblox.com/api/script/search?q=" .. HttpService:UrlEncode(q)
				.. "&mode=free&page=" .. tostring(pageNum) .. "&max=20"
			if filters.key then url = url .. "&key=1" end
			if filters.universal then url = url .. "&universal=1" end
			if filters.verified then url = url .. "&verified=1" end
			if filters.patched then url = url .. "&patched=1" end
			return url
		end

		local function parseRScripts(data)
			if not data then return {} end
			local list = data.scripts or (data.data and data.data.scripts)
			if type(list) ~= "table" then return {} end
			local cards = {}
			for _, s in ipairs(list) do
				local id = s._id or s.slug or s.id
				table.insert(cards, {
					title = s.title or "Untitled",
					game = s.game and (s.game.title or s.game.name) or "Universal",
					author = s.user and s.user.username or "—",
					link = id and ("https://rscripts.net/script/" .. tostring(id)) or nil,
					fetchUrl = s.rawScript,
					raw = nil,
				})
			end
			return cards
		end

		local function parseScriptBlox(data)
			if not data then return {} end
			local list = data.result and data.result.scripts
			if type(list) ~= "table" then return {} end
			local cards = {}
			for _, s in ipairs(list) do
				local slug = s.slug or s._id
				table.insert(cards, {
					title = s.title or "Untitled",
					game = s.game and (s.game.name or s.game.title) or "Universal",
					author = tostring(s.views or 0) .. " views",
					link = slug and ("https://scriptblox.com/script/" .. tostring(slug)) or nil,
					fetchUrl = nil,
					raw = s.script,
				})
			end
			return cards
		end

		runSearch = function()
			if loading then return end
			syncSource()
			local query = getQuery()
			if query == "" then
				setStatus("Enter a search term.")
				return
			end
			loading = true
			pageNum = 1
			setStatus("Searching " .. source .. "...")
			clearResults()

			task.spawn(function()
				local cards = {}
				local errMsg = nil
				if source == "RScripts" then
					local data, err = LunaHttpJSON(buildRScriptsUrl(query))
					errMsg = err
					if data then
						cards = parseRScripts(data)
						if #cards == 0 and data.message then
							errMsg = tostring(data.message)
						end
					end
				else
					task.wait(1.05)
					local data, err = LunaHttpJSON(buildScriptBloxUrl(query))
					errMsg = err
					if data then
						cards = parseScriptBlox(data)
						if #cards == 0 and data.message then
							errMsg = tostring(data.message)
						end
					end
				end

				task.defer(function()
					for i, c in ipairs(cards) do
						makeCard(c, i)
					end
					local w = cardWidth()
					for _, ch in ipairs(Scroll:GetChildren()) do
						if ch:IsA("Frame") then
							ch.Size = UDim2.fromOffset(w, ch.Size.Y.Offset)
						end
					end
				end)
				if #cards > 0 then
					setStatus(#cards .. " results (" .. source .. ")")
					scrollToResults()
				elseif errMsg then
					setStatus(errMsg)
				else
					setStatus("No scripts found.")
				end
				loading = false
			end)
		end

		setStatus("Ready — use Search or press Enter in Query.")

		Window._ScriptSearcherTab = hostTab
		return hostTab
	end

	Elements.Parent.Visible = true
	tween(Elements.Parent, {BackgroundTransparency = 0.1})
	Navigation.Visible = true
	tween(Navigation.Line, {BackgroundTransparency = 0})

	for _, TopbarButton in ipairs(Main.Controls:GetChildren()) do
		if TopbarButton.ClassName == "Frame" and TopbarButton.Name ~= "Theme" then
			TopbarButton.Visible = true
			tween(TopbarButton, {BackgroundTransparency = 0.25})
			tween(TopbarButton.UIStroke, {Transparency = 0.5})
			tween(TopbarButton.ImageLabel, {ImageTransparency = 0.25})
		end
	end

	Main.Controls.Close.ImageLabel.MouseButton1Click:Connect(function()
		Hide(Main, Window.Bind, true)
		dragBar.Visible = false
		Window.State = false
		if Window._ResizeHandle then Window._ResizeHandle.Visible = false end
		if UserInputService.KeyboardEnabled == false then
			LunaUI.MobileSupport.Visible = true
		end
	end)
	Main.Controls.Close["MouseEnter"]:Connect(function()
		tween(Main.Controls.Close.ImageLabel, {ImageColor3 = Color3.new(1,1,1)})
	end)
	Main.Controls.Close["MouseLeave"]:Connect(function()
		tween(Main.Controls.Close.ImageLabel, {ImageColor3 = Color3.fromRGB(195,195,195)})
	end)

	UserInputService.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if Window.State then return end
		if input.KeyCode == Window.Bind then
			Unhide(Main, Window.CurrentTab)
			LunaUI.MobileSupport.Visible = false
			dragBar.Visible = true
			task.defer(function() syncDragBarPosition(Main) end)
			Window.State = true
			if Window._ResizeHandle and Window.Size == false then
				Window._ResizeHandle.Visible = true
			end
		end
	end)

	Main.Logo.MouseButton1Click:Connect(function()
		if Navigation.Size.X.Offset == 205 then
			tween(Elements.Parent, {Size = UDim2.new(1, -55, Elements.Parent.Size.Y.Scale, Elements.Parent.Size.Y.Offset)})
			tween(Navigation, {Size = UDim2.new(Navigation.Size.X.Scale, 55, Navigation.Size.Y.Scale, Navigation.Size.Y.Offset)})
		else
			tween(Elements.Parent, {Size = UDim2.new(1, -205, Elements.Parent.Size.Y.Scale, Elements.Parent.Size.Y.Offset)})
			tween(Navigation, {Size = UDim2.new(Navigation.Size.X.Scale, 205, Navigation.Size.Y.Scale, Navigation.Size.Y.Offset)})
		end
	end)

	Main.Controls.ToggleSize.ImageLabel.MouseButton1Click:Connect(function()
		Window.Size = not Window.Size
		if Window.Size then
			Minimize(Main)
			dragBar.Visible = false
			if Window._ResizeHandle then Window._ResizeHandle.Visible = false end
		else
			Maximise(Main)
			dragBar.Visible = true
			task.defer(function() syncDragBarPosition(Main) end)
			if Window._ResizeHandle then Window._ResizeHandle.Visible = true end
		end
	end)
	Main.Controls.ToggleSize["MouseEnter"]:Connect(function()
		tween(Main.Controls.ToggleSize.ImageLabel, {ImageColor3 = Color3.new(1,1,1)})
	end)
	Main.Controls.ToggleSize["MouseLeave"]:Connect(function()
		tween(Main.Controls.ToggleSize.ImageLabel, {ImageColor3 = Color3.fromRGB(195,195,195)})
	end)

	Main.Controls.Theme.ImageLabel.MouseButton1Click:Connect(function()
		if Window.Settings then
			Window.Settings:Activate()
			Elements.Settings.CanvasPosition = Vector2.new(0,698)
		end
	end)
	Main.Controls.Theme["MouseEnter"]:Connect(function()
		tween(Main.Controls.Theme.ImageLabel, {ImageColor3 = Color3.new(1,1,1)})
	end)
	Main.Controls.Theme["MouseLeave"]:Connect(function()
		tween(Main.Controls.Theme.ImageLabel, {ImageColor3 = Color3.fromRGB(195,195,195)})
	end)	


	LunaUI.MobileSupport.Interact.MouseButton1Click:Connect(function()
		Unhide(Main, Window.CurrentTab)
		dragBar.Visible = true
		task.defer(function() syncDragBarPosition(Main) end)
		Window.State = true
		if Window._ResizeHandle and Window.Size == false then
			Window._ResizeHandle.Visible = true
		end
		LunaUI.MobileSupport.Visible = false
	end)

	if dragBar then
		dragBar.Active = true
		if dragInteract then
			dragInteract.Active = true
		end
		task.defer(function()
			task.wait(0.1)
			if dragBar.Visible then syncDragBarPosition(Main) end
		end)
	end

	-- ============================================================
	-- SearchBar feature (opt-in via WindowSettings.SearchBar)
	-- ============================================================
	if WindowSettings.SearchBar then
		-- Search icon in the top-right controls: clone Close's frame to match style.
		local SearchControl = Main.Controls.Close:Clone()
		SearchControl.Name = RandomName()
		SearchControl.Parent = Main.Controls
		ApplyIcon(SearchControl.ImageLabel, GetIcon("search", "Material"))

		-- Position the search slot next to ToggleSize (minimize). We support two layouts:
		--   1) UIListLayout-managed Controls -> set LayoutOrder so it sorts just before ToggleSize
		--   2) Absolutely positioned Controls -> compute a position one slot to the left of ToggleSize
		local listLayout = Main.Controls:FindFirstChildOfClass("UIListLayout")
		if listLayout then
			SearchControl.LayoutOrder = (Main.Controls.ToggleSize.LayoutOrder or 0) - 1
		else
			local slotWidth = SearchControl.AbsoluteSize.X
			if slotWidth <= 0 then slotWidth = 28 end
			local toggleSize = Main.Controls.ToggleSize
			SearchControl.AnchorPoint = toggleSize.AnchorPoint
			SearchControl.Position = UDim2.new(
				toggleSize.Position.X.Scale,
				toggleSize.Position.X.Offset - slotWidth - 4,
				toggleSize.Position.Y.Scale,
				toggleSize.Position.Y.Offset
			)
		end

		-- The modal lives at the LunaUI (ScreenGui) root so it overlays the SmartWindow,
		-- dragBar, and every other UI element. We use a backdrop frame for click-outside
		-- close + a dim effect, with the actual panel anchored to the window's bounds.
		local SearchLayer = Instance.new("Frame")
		SearchLayer.Name = RandomName()
		SearchLayer.AnchorPoint = Vector2.new(0, 0)
		SearchLayer.Position = UDim2.fromScale(0, 0)
		SearchLayer.Size = UDim2.fromScale(1, 1)
		SearchLayer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		SearchLayer.BackgroundTransparency = 1
		SearchLayer.BorderSizePixel = 0
		SearchLayer.Visible = false
		SearchLayer.ZIndex = 5000
		SearchLayer.Parent = LunaUI

		-- Dim backdrop: dark with a faint vignette gradient instead of solid white.
		local Backdrop = Instance.new("TextButton")
		Backdrop.Name = RandomName()
		Backdrop.AutoButtonColor = false
		Backdrop.Text = ""
		Backdrop.Size = UDim2.fromScale(1, 1)
		Backdrop.BackgroundColor3 = Color3.fromRGB(8, 8, 14)
		Backdrop.BackgroundTransparency = 1
		Backdrop.BorderSizePixel = 0
		Backdrop.ZIndex = 5000
		Backdrop.Parent = SearchLayer

		-- Subtle radial-ish vignette so the modal pops without making the bg solid.
		local backdropGradient = Instance.new("UIGradient")
		backdropGradient.Rotation = 90
		backdropGradient.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.15),
			NumberSequenceKeypoint.new(0.5, 0.05),
			NumberSequenceKeypoint.new(1, 0.15),
		})
		backdropGradient.Parent = Backdrop

		local SearchModal = Instance.new("Frame")
		SearchModal.Name = RandomName()
		SearchModal.AnchorPoint = Vector2.new(0.5, 0.5)
		-- Slight cool tint behind the glass.
		SearchModal.BackgroundColor3 = Color3.fromRGB(28, 26, 38)
		SearchModal.BackgroundTransparency = 0.08
		SearchModal.BorderSizePixel = 0
		SearchModal.ZIndex = 5010
		SearchModal.Parent = SearchLayer

		-- Liquid-glass: layered diagonal gradient gives the milky highlight.
		local modalGradient = Instance.new("UIGradient")
		modalGradient.Rotation = 135
		modalGradient.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(60, 56, 82)),
			ColorSequenceKeypoint.new(0.5, Color3.fromRGB(28, 26, 38)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 18, 28)),
		})
		modalGradient.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.15),
			NumberSequenceKeypoint.new(1, 0.05),
		})
		modalGradient.Parent = SearchModal

		-- Re-anchor the modal to Main so it tracks the window (position + size).
		local function repositionModal()
			local pos = Main.AbsolutePosition
			local sz = Main.AbsoluteSize
			SearchModal.Position = UDim2.fromOffset(pos.X + sz.X * 0.5, pos.Y + sz.Y * 0.5)
			SearchModal.Size = UDim2.fromOffset(math.min(sz.X * 0.72, 560), math.min(sz.Y * 0.72, 420))
		end
		repositionModal()
		Main:GetPropertyChangedSignal("AbsolutePosition"):Connect(repositionModal)
		Main:GetPropertyChangedSignal("AbsoluteSize"):Connect(repositionModal)

		local modalCorner = Instance.new("UICorner")
		modalCorner.CornerRadius = UDim.new(0, 14)
		modalCorner.Parent = SearchModal

		local modalStroke = Instance.new("UIStroke")
		modalStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		modalStroke.Color = Color3.fromRGB(120, 110, 160)
		modalStroke.Thickness = 1.2
		modalStroke.Transparency = 0.4
		modalStroke.Parent = SearchModal

		-- A second, faint inner highlight stroke - completes the glass look.
		local highlightStroke = Instance.new("UIStroke")
		highlightStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		highlightStroke.Color = Color3.fromRGB(255, 255, 255)
		highlightStroke.Thickness = 1
		highlightStroke.Transparency = 0.9
		highlightStroke.Parent = SearchModal

		local modalPadding = Instance.new("UIPadding")
		modalPadding.PaddingTop = UDim.new(0, 14)
		modalPadding.PaddingBottom = UDim.new(0, 14)
		modalPadding.PaddingLeft = UDim.new(0, 16)
		modalPadding.PaddingRight = UDim.new(0, 16)
		modalPadding.Parent = SearchModal

		-- ============================================================
		-- Header row: search icon + input
		-- ============================================================
		local InputRow = Instance.new("Frame")
		InputRow.Name = RandomName()
		InputRow.Size = UDim2.new(1, 0, 0, 42)
		InputRow.BackgroundColor3 = Color3.fromRGB(40, 36, 54)
		InputRow.BackgroundTransparency = 0.25
		InputRow.BorderSizePixel = 0
		InputRow.ZIndex = 5011
		InputRow.Parent = SearchModal

		local rowCornerHdr = Instance.new("UICorner")
		rowCornerHdr.CornerRadius = UDim.new(0, 10)
		rowCornerHdr.Parent = InputRow

		local inputRowGradient = Instance.new("UIGradient")
		inputRowGradient.Rotation = 90
		inputRowGradient.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.1),
			NumberSequenceKeypoint.new(1, 0.3),
		})
		inputRowGradient.Parent = InputRow

		local SearchIconLeft = Instance.new("ImageLabel")
		SearchIconLeft.Name = RandomName()
		SearchIconLeft.AnchorPoint = Vector2.new(0, 0.5)
		SearchIconLeft.Position = UDim2.new(0, 12, 0.5, 0)
		SearchIconLeft.Size = UDim2.fromOffset(18, 18)
		SearchIconLeft.BackgroundTransparency = 1
		SearchIconLeft.ImageColor3 = Color3.fromRGB(190, 185, 210)
		SearchIconLeft.ImageTransparency = 0.2
		SearchIconLeft.ZIndex = 5012
		SearchIconLeft.Parent = InputRow
		ApplyIcon(SearchIconLeft, GetIcon("search", "Material"))

		local SearchInput = Instance.new("TextBox")
		SearchInput.Name = RandomName()
		SearchInput.AnchorPoint = Vector2.new(0, 0.5)
		SearchInput.Position = UDim2.new(0, 38, 0.5, 0)
		SearchInput.Size = UDim2.new(1, -50, 1, -8)
		SearchInput.BackgroundTransparency = 1
		SearchInput.BorderSizePixel = 0
		SearchInput.PlaceholderText = "Search here..."
		SearchInput.PlaceholderColor3 = Color3.fromRGB(170, 165, 195)
		SearchInput.Text = ""
		SearchInput.TextColor3 = Color3.fromRGB(245, 245, 250)
		SearchInput.Font = Enum.Font.GothamMedium
		SearchInput.TextSize = 16
		SearchInput.TextXAlignment = Enum.TextXAlignment.Left
		SearchInput.ClearTextOnFocus = false
		SearchInput.ZIndex = 5012
		SearchInput.Parent = InputRow

		local inputStroke = Instance.new("UIStroke")
		inputStroke.Color = Color3.fromRGB(130, 120, 170)
		inputStroke.Transparency = 0.6
		inputStroke.Parent = InputRow

		local Results = Instance.new("ScrollingFrame")
		Results.Name = RandomName()
		Results.Position = UDim2.new(0, 0, 0, 54)
		Results.Size = UDim2.new(1, 0, 1, -54)
		Results.BackgroundTransparency = 1
		Results.BorderSizePixel = 0
		Results.ScrollBarThickness = 3
		Results.ScrollBarImageColor3 = Color3.fromRGB(140, 130, 180)
		Results.CanvasSize = UDim2.new(0, 0, 0, 0)
		Results.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Results.ZIndex = 5011
		Results.Parent = SearchModal

		local resultsList = Instance.new("UIListLayout")
		resultsList.SortOrder = Enum.SortOrder.LayoutOrder
		resultsList.Padding = UDim.new(0, 6)
		resultsList.Parent = Results

		local EmptyLabel = Instance.new("TextLabel")
		EmptyLabel.Name = RandomName()
		EmptyLabel.Size = UDim2.new(1, 0, 0, 36)
		EmptyLabel.BackgroundTransparency = 1
		EmptyLabel.Text = "Start typing to search elements..."
		EmptyLabel.TextColor3 = Color3.fromRGB(170, 165, 195)
		EmptyLabel.Font = Enum.Font.Gotham
		EmptyLabel.TextSize = 13
		EmptyLabel.TextTransparency = 0.2
		EmptyLabel.ZIndex = 5011
		EmptyLabel.Parent = Results

		-- Cache to avoid rebuilding the result rows for identical queries.
		local lastQuery = nil

		local function clearResults()
			for _, child in ipairs(Results:GetChildren()) do
				if child:IsA("TextButton") then
					child:Destroy()
				end
			end
		end

		local function createResultRow(entry, layoutOrder)
			local Row = Instance.new("TextButton")
			Row.Name = RandomName()
			Row.AutoButtonColor = false
			Row.Size = UDim2.new(1, -4, 0, 42)
			Row.BackgroundColor3 = Color3.fromRGB(48, 42, 64)
			Row.BackgroundTransparency = 0.35
			Row.BorderSizePixel = 0
			Row.Text = ""
			Row.LayoutOrder = layoutOrder
			Row.ZIndex = 5012
			Row.Parent = Results

			local rowCorner = Instance.new("UICorner")
			rowCorner.CornerRadius = UDim.new(0, 8)
			rowCorner.Parent = Row

			local rowGradient = Instance.new("UIGradient")
			rowGradient.Rotation = 90
			rowGradient.Transparency = NumberSequence.new({
				NumberSequenceKeypoint.new(0, 0.15),
				NumberSequenceKeypoint.new(1, 0.4),
			})
			rowGradient.Parent = Row

			local rowStroke = Instance.new("UIStroke")
			rowStroke.Color = Color3.fromRGB(150, 140, 200)
			rowStroke.Transparency = 0.7
			rowStroke.Parent = Row

			local title = Instance.new("TextLabel")
			title.Name = "Title"
			title.BackgroundTransparency = 1
			title.Position = UDim2.new(0, 12, 0, 5)
			title.Size = UDim2.new(1, -24, 0, 18)
			title.Text = entry.Name
			title.TextColor3 = Color3.fromRGB(245, 245, 250)
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.Font = Enum.Font.GothamMedium
			title.TextSize = 14
			title.ZIndex = 5013
			title.Parent = Row

			local sub = Instance.new("TextLabel")
			sub.Name = "Sub"
			sub.BackgroundTransparency = 1
			sub.Position = UDim2.new(0, 12, 0, 23)
			sub.Size = UDim2.new(1, -24, 0, 14)
			sub.Text = entry.Type .. (entry.Tab ~= "" and (" • " .. entry.Tab) or "")
			sub.TextColor3 = Color3.fromRGB(180, 175, 205)
			sub.TextXAlignment = Enum.TextXAlignment.Left
			sub.Font = Enum.Font.Gotham
			sub.TextSize = 11
			sub.ZIndex = 5013
			sub.Parent = Row

			Row.MouseEnter:Connect(function()
				tween(rowStroke, {Transparency = 0.25})
				tween(Row, {BackgroundTransparency = 0.15})
			end)
			Row.MouseLeave:Connect(function()
				tween(rowStroke, {Transparency = 0.7})
				tween(Row, {BackgroundTransparency = 0.35})
			end)

			Row.MouseButton1Click:Connect(function()
				local tabRef = Window._Tabs[entry.Tab]
				if tabRef and tabRef.Activate then
					tabRef.Activate()
				end

				Window.CloseSearch()

				-- Highlight the target element briefly
				local frame = entry.Frame
				if frame and frame.Parent then
					local origStroke = frame:FindFirstChild("UIStroke")
					local origColor = origStroke and origStroke.Color or nil
					if origStroke then
						origStroke.Color = Color3.fromRGB(180, 170, 220)
					end
					task.delay(1.2, function()
						if origStroke and origColor then
							origStroke.Color = origColor
						end
					end)

					-- Scroll the containing ScrollingFrame to make the element visible.
					local container = frame.Parent
					local guard = 0
					while container and not container:IsA("ScrollingFrame") and container.Parent and guard < 8 do
						container = container.Parent
						guard += 1
					end
					if container and container:IsA("ScrollingFrame") then
						local relY = frame.AbsolutePosition.Y - container.AbsolutePosition.Y + container.CanvasPosition.Y
						local target = math.max(0, relY - 30)
						pcall(function()
							TweenService:Create(container, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CanvasPosition = Vector2.new(0, target)}):Play()
						end)
					end
				end
			end)
		end

		local function refreshResults()
			local query = (SearchInput.Text or ""):lower()
			if query == lastQuery then return end
			lastQuery = query

			clearResults()

			if query == "" then
				EmptyLabel.Text = "Start typing to search elements..."
				EmptyLabel.Visible = true
				return
			end

			local matches = 0
			for _, entry in ipairs(Window._SearchIndex) do
				if entry.Frame and entry.Frame.Parent then
					if string.find(string.lower(entry.Name), query, 1, true) then
						matches += 1
						createResultRow(entry, matches)
						if matches >= 60 then break end -- cap rendering cost
					end
				end
			end

			EmptyLabel.Visible = matches == 0
			if matches == 0 then
				EmptyLabel.Text = "No results for \"" .. SearchInput.Text .. "\""
			end
		end

		SearchInput:GetPropertyChangedSignal("Text"):Connect(refreshResults)

		-- Smooth, slightly springy open / quick fade close.
		local OPEN_INFO = TweenInfo.new(0.28, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
		local OPEN_FADE = TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local CLOSE_INFO = TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.In)

		-- Scale-from-0 pop in. Done via a child UIScale we add on first open.
		local modalScale = Instance.new("UIScale")
		modalScale.Scale = 0.85
		modalScale.Parent = SearchModal

		local function applyVisible(open)
			if open then
				SearchLayer.Visible = true
				Backdrop.BackgroundTransparency = 1
				SearchModal.BackgroundTransparency = 1
				InputRow.BackgroundTransparency = 1
				SearchInput.TextTransparency = 1
				modalStroke.Transparency = 1
				highlightStroke.Transparency = 1
				inputStroke.Transparency = 1
				EmptyLabel.TextTransparency = 1
				SearchIconLeft.ImageTransparency = 1
				modalScale.Scale = 0.92

				TweenService:Create(Backdrop, OPEN_FADE, {BackgroundTransparency = 0.5}):Play()
				TweenService:Create(SearchModal, OPEN_FADE, {BackgroundTransparency = 0.08}):Play()
				TweenService:Create(InputRow, OPEN_FADE, {BackgroundTransparency = 0.25}):Play()
				TweenService:Create(SearchInput, OPEN_FADE, {TextTransparency = 0}):Play()
				TweenService:Create(modalStroke, OPEN_FADE, {Transparency = 0.4}):Play()
				TweenService:Create(highlightStroke, OPEN_FADE, {Transparency = 0.85}):Play()
				TweenService:Create(inputStroke, OPEN_FADE, {Transparency = 0.6}):Play()
				TweenService:Create(EmptyLabel, OPEN_FADE, {TextTransparency = 0.2}):Play()
				TweenService:Create(SearchIconLeft, OPEN_FADE, {ImageTransparency = 0.2}):Play()
				TweenService:Create(modalScale, OPEN_INFO, {Scale = 1}):Play()
			else
				TweenService:Create(Backdrop, CLOSE_INFO, {BackgroundTransparency = 1}):Play()
				TweenService:Create(SearchModal, CLOSE_INFO, {BackgroundTransparency = 1}):Play()
				TweenService:Create(InputRow, CLOSE_INFO, {BackgroundTransparency = 1}):Play()
				TweenService:Create(SearchInput, CLOSE_INFO, {TextTransparency = 1}):Play()
				TweenService:Create(modalStroke, CLOSE_INFO, {Transparency = 1}):Play()
				TweenService:Create(highlightStroke, CLOSE_INFO, {Transparency = 1}):Play()
				TweenService:Create(inputStroke, CLOSE_INFO, {Transparency = 1}):Play()
				TweenService:Create(EmptyLabel, CLOSE_INFO, {TextTransparency = 1}):Play()
				TweenService:Create(SearchIconLeft, CLOSE_INFO, {ImageTransparency = 1}):Play()
				TweenService:Create(modalScale, CLOSE_INFO, {Scale = 0.94}):Play()
				task.delay(0.2, function()
					-- Don't hide if user reopened in the meantime
					if not Window._SearchOpen then
						SearchLayer.Visible = false
					end
				end)
			end
		end

		Window._SearchOpen = false
		Window._SearchEnabled = true

		local function setOpen(open)
			if not Window._SearchEnabled then open = false end
			if Window._SearchOpen == open then return end
			Window._SearchOpen = open

			if open then
				-- If minimized, expand first so the modal lines up visibly with the window.
				if Window.Size then
					Maximise(Main)
					Window.Size = false
					if dragBar then dragBar.Visible = true end
				end
				-- If hidden by keybind, restore first.
				if not Window.State then
					Unhide(Main, Window.CurrentTab)
					Window.State = true
				end
				repositionModal()
				applyVisible(true)
				SearchInput.Text = ""
				lastQuery = nil
				refreshResults()
				task.defer(function()
					pcall(function() SearchInput:CaptureFocus() end)
				end)
			else
				applyVisible(false)
				SearchInput:ReleaseFocus()
			end
		end

		SearchControl.ImageLabel.MouseButton1Click:Connect(function()
			setOpen(not Window._SearchOpen)
		end)
		SearchControl["MouseEnter"]:Connect(function()
			tween(SearchControl.ImageLabel, {ImageColor3 = Color3.new(1,1,1)})
		end)
		SearchControl["MouseLeave"]:Connect(function()
			tween(SearchControl.ImageLabel, {ImageColor3 = Color3.fromRGB(195,195,195)})
		end)

		-- Click outside (backdrop) closes the modal.
		Backdrop.MouseButton1Click:Connect(function()
			setOpen(false)
		end)

		-- Default keybind: configurable, defaults to Ctrl+F. Esc closes regardless.
		Window._SearchKeybind = WindowSettings.SearchKeybind or Enum.KeyCode.F
		Window._SearchKeybindRequiresCtrl = WindowSettings.SearchKeybindRequiresCtrl ~= false

		-- IMPORTANT: We must accept Esc even when `gpe` is true, because while typing
		-- in the SearchInput TextBox, all key events get marked as game-processed.
		-- Without this branch the modal cannot be closed with Escape while focused.
		UserInputService.InputBegan:Connect(function(input, gpe)
			if input.KeyCode == Enum.KeyCode.Escape and Window._SearchOpen then
				setOpen(false)
				return
			end
			if gpe then return end
			if not Window._SearchEnabled then return end
			if input.KeyCode == Window._SearchKeybind then
				if Window._SearchKeybindRequiresCtrl then
					if not (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)) then
						return
					end
				end
				setOpen(not Window._SearchOpen)
			end
		end)


		Window._SearchControl = SearchControl
		Window._SearchLayer = SearchLayer
		Window._SearchModal = SearchModal

		Window.OpenSearch = function() setOpen(true) end
		Window.CloseSearch = function() setOpen(false) end
		Window.IsSearchOpen = function() return Window._SearchOpen end

		-- Runtime control: toggle SearchBar on/off without rebuilding the window.
		Window.SetSearchEnabled = function(enabled)
			Window._SearchEnabled = enabled and true or false
			if not Window._SearchEnabled and Window._SearchOpen then
				setOpen(false)
			end
			if SearchControl then
				SearchControl.Visible = Window._SearchEnabled
			end
		end

		-- Runtime control: change the keybind. Accepts an Enum.KeyCode or a single
		-- uppercase letter string (e.g. "F"). `requireCtrl` is a boolean (default true).
		Window.SetSearchKeybind = function(key, requireCtrl)
			if typeof(key) == "EnumItem" then
				Window._SearchKeybind = key
			elseif type(key) == "string" then
				local kc = Enum.KeyCode[key:upper()]
				if kc then Window._SearchKeybind = kc end
			end
			if requireCtrl ~= nil then
				Window._SearchKeybindRequiresCtrl = requireCtrl and true or false
			end
		end
	end

	-- ============================================================
	-- Resize handle (PC only, opt-in via WindowSettings.Resizable)
	-- ============================================================
	if WindowSettings.Resizable and IsDesktop() then
		-- Small backing chip so the icon stays visible against any background.
		local HandleBack = Instance.new("Frame")
		HandleBack.Name = RandomName()
		HandleBack.AnchorPoint = Vector2.new(1, 1)
		HandleBack.Position = UDim2.new(1, -8, 1, -8)
		HandleBack.Size = UDim2.fromOffset(24, 24)
		HandleBack.BackgroundColor3 = Color3.fromRGB(32, 30, 38)
		HandleBack.BackgroundTransparency = 0.3
		HandleBack.BorderSizePixel = 0
		HandleBack.ZIndex = 30
		HandleBack.Parent = Main

		local backCorner = Instance.new("UICorner")
		backCorner.CornerRadius = UDim.new(0, 6)
		backCorner.Parent = HandleBack

		local backStroke = Instance.new("UIStroke")
		backStroke.Color = Color3.fromRGB(120, 117, 140)
		backStroke.Transparency = 0.5
		backStroke.Parent = HandleBack

		local Handle = Instance.new("ImageButton")
		Handle.Name = RandomName()
		Handle.AnchorPoint = Vector2.new(0.5, 0.5)
		Handle.Position = UDim2.fromScale(0.5, 0.5)
		Handle.Size = UDim2.fromOffset(16, 16)
		Handle.BackgroundTransparency = 1
		-- Material "open_in_full" - diagonal expansion arrows
		ApplyIcon(Handle, GetIcon("open_in_full", "Material"))
		Handle.ImageColor3 = Color3.fromRGB(235, 235, 245)
		Handle.ImageTransparency = 0
		Handle.AutoButtonColor = false
		Handle.ZIndex = 31
		Handle.Parent = HandleBack

		HandleBack.MouseEnter:Connect(function()
			tween(HandleBack, {BackgroundTransparency = 0.05})
			tween(backStroke, {Transparency = 0.1})
		end)
		HandleBack.MouseLeave:Connect(function()
			tween(HandleBack, {BackgroundTransparency = 0.3})
			tween(backStroke, {Transparency = 0.5})
		end)

		local resizing = false
		local startMouse, startSize

		Handle.InputBegan:Connect(function(input)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
			resizing = true
			startMouse = UserInputService:GetMouseLocation()
			startSize = Main.AbsoluteSize
		end)

		UserInputService.InputChanged:Connect(function(input)
			if not resizing then return end
			if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
			local cur = UserInputService:GetMouseLocation()
			local delta = cur - startMouse
			local nx = math.clamp(startSize.X + delta.X, ResizeMin.X, ResizeMax.X)
			local ny = math.clamp(startSize.Y + delta.Y, ResizeMin.Y, ResizeMax.Y)
			Main.Size = UDim2.fromOffset(nx, ny)
			MainSize = Main.Size
			syncDragBarPosition(Main)
		end)

		UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				resizing = false
			end
		end)

		-- Re-sync on every Main size/position change too so toggling minimize,
		-- maximise, or restoring from a hide always keeps the dragBar in line.
		Window._ResizeHandle = HandleBack

		-- Hide the resize handle when the window is minimized or hidden, restore otherwise.
		local function syncHandleVisibility()
			HandleBack.Visible = (Window.Size == false) and Window.State
		end
		-- Mirror visibility on size/state changes by observing Main visually.
		Main:GetPropertyChangedSignal("Size"):Connect(function()
			-- Heuristic: if Main is in the minimized state we shrink the height below 60px.
			if Main.AbsoluteSize.Y < 60 then
				HandleBack.Visible = false
			else
				syncHandleVisibility()
			end
		end)
		Main:GetPropertyChangedSignal("Visible"):Connect(function()
			if not Main.Visible then HandleBack.Visible = false end
		end)
	end

	-- ============================================================
	-- UI Zoom (Ctrl + / Ctrl - / Ctrl 0)
	-- ============================================================
	-- A UIScale on the main SmartWindow lets us scale the whole UI without
	-- breaking the asset's internal layout. Bound to standard browser-style
	-- shortcuts; opt-out via WindowSettings.ZoomEnabled = false.
	do
		local mainScale = Main:FindFirstChildOfClass("UIScale")
		if not mainScale then
			mainScale = Instance.new("UIScale")
			mainScale.Scale = 1
			mainScale.Parent = Main
		end
		-- ShadowHolder is a sibling of Main (not a descendant), so it doesn't
		-- inherit Main's UIScale. Mirror it manually so the drop-shadow grows
		-- and shrinks together with the window when the user zooms.
		local shadowScale
		if Main.Parent and Main.Parent:FindFirstChild("ShadowHolder") then
			shadowScale = Main.Parent.ShadowHolder:FindFirstChildOfClass("UIScale")
			if not shadowScale then
				shadowScale = Instance.new("UIScale")
				shadowScale.Scale = mainScale.Scale
				shadowScale.Parent = Main.Parent.ShadowHolder
			end
		end
		Window._UIScale = mainScale
		Window._ShadowScale = shadowScale
		Window._ZoomEnabled = WindowSettings.ZoomEnabled ~= false
		Window._ZoomMin = 0.6
		Window._ZoomMax = 1.6
		Window._ZoomStep = 0.1

		Window.SetZoom = function(scale)
			scale = math.clamp(tonumber(scale) or 1, Window._ZoomMin, Window._ZoomMax)
			local info = TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			TweenService:Create(mainScale, info, {Scale = scale}):Play()
			if shadowScale then
				TweenService:Create(shadowScale, info, {Scale = scale}):Play()
			end
		end
		Window.SetZoomEnabled = function(enabled)
			Window._ZoomEnabled = enabled and true or false
		end
		Window.ZoomIn = function()
			if not Window._ZoomEnabled then return end
			Window.SetZoom(mainScale.Scale + Window._ZoomStep)
		end
		Window.ZoomOut = function()
			if not Window._ZoomEnabled then return end
			Window.SetZoom(mainScale.Scale - Window._ZoomStep)
		end
		Window.ZoomReset = function()
			if not Window._ZoomEnabled then return end
			Window.SetZoom(1)
		end

		UserInputService.InputBegan:Connect(function(input, gpe)
			-- gpe matters less here because the keys aren't typing-related, but we
			-- still honour it to play nice with focused TextBoxes.
			if gpe then return end
			if not Window._ZoomEnabled then return end
			if not (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.RightControl)) then
				return
			end
			-- "=" share key with "+" on most keyboards; KeypadPlus is the numpad variant.
			if input.KeyCode == Enum.KeyCode.Equals or input.KeyCode == Enum.KeyCode.Plus or input.KeyCode == Enum.KeyCode.KeypadPlus then
				Window.ZoomIn()
			elseif input.KeyCode == Enum.KeyCode.Minus or input.KeyCode == Enum.KeyCode.KeypadMinus then
				Window.ZoomOut()
			elseif input.KeyCode == Enum.KeyCode.Zero or input.KeyCode == Enum.KeyCode.KeypadZero then
				Window.ZoomReset()
			end
		end)
	end

	-- ============================================================
	-- Auto-create optional tabs + startup tab focus (after host script finishes)
	-- ============================================================
	task.defer(function()
		local aiName = (WindowSettings.AiSettings and WindowSettings.AiSettings.Name) or "Solara Hub AI"
		local ssName = (WindowSettings.ScriptSearcherSettings and WindowSettings.ScriptSearcherSettings.Name) or "Scripts"
		if WindowSettings.AiTab then
			pcall(function() Window:CreateAiTab(WindowSettings.AiSettings) end)
		end
		if WindowSettings.ScriptSearcherTab then
			pcall(function() Window:CreateScriptSearcherTab(WindowSettings.ScriptSearcherSettings) end)
		end
		if WindowSettings.AiTab or WindowSettings.ScriptSearcherTab then
			pcall(function()
				local navOrder = WindowSettings.NavTabOrder
				if type(navOrder) ~= "table" then
					navOrder = {"Home", aiName, ssName}
				end
				Window:ApplyNavTabOrder(navOrder)
			end)
		end
		local function focusStartup()
			Window:ActivateStartupTab(WindowSettings.StartupTab)
		end
		pcall(focusStartup)
		task.delay(0.2, function() pcall(focusStartup) end)
		task.delay(0.65, function() pcall(focusStartup) end)
		task.defer(function()
			task.wait(0.05)
			Window:NotifyTabsChanged()
		end)
	end)

	-- ============================================================
	-- Theme API (recolour the whole UI from the host script)
	-- ============================================================
	-- We expose a couple of small helpers that re-skin the UI at runtime. They
	-- walk LunaUI once per call and only touch strokes / specific frames, so
	-- they're cheap enough to wire to a colour-picker callback.
	do
		Window._Theme = {
			Accent = Color3.fromRGB(110, 102, 153),
			Background = nil, -- nil = keep the original frame colour
		}
		Window._StrokeOriginals = {}

		-- Returns true if a UIStroke / Frame is part of the "chrome" we want to
		-- recolour. We deliberately skip the AI chat code-blocks, the search
		-- modal accent (it has its own picker) and anything explicitly opted out
		-- via the LunaNoTheme attribute.
		local function shouldRecolour(obj)
			local cur = obj
			while cur and cur ~= game do
				if cur:GetAttribute("LunaNoTheme") then return false end
				cur = cur.Parent
			end
			return true
		end

		local function cacheStrokeColor(stroke)
			if not Window._StrokeOriginals[stroke] then
				Window._StrokeOriginals[stroke] = stroke.Color
			end
		end

		local function forEachThemeStroke(callback)
			local roots = {LunaUI, Main, dragBar}
			for _, root in ipairs(roots) do
				if root and root.Parent then
					for _, d in ipairs(root:GetDescendants()) do
						if d:IsA("UIStroke") and shouldRecolour(d) and d.Transparency < 0.9 then
							callback(d)
						end
					end
					if root:IsA("GuiObject") then
						local direct = root:FindFirstChildOfClass("UIStroke")
						if direct and shouldRecolour(direct) and direct.Transparency < 0.9 then
							callback(direct)
						end
					end
				end
			end
		end

		Window.SetThemeAccent = function(color)
			if typeof(color) ~= "Color3" then return end
			Window._Theme.Accent = color
			task.spawn(function()
				forEachThemeStroke(function(stroke)
					cacheStrokeColor(stroke)
					stroke.Color = color
				end)
			end)
		end

		Window.ClearThemeAccent = function()
			for stroke, original in pairs(Window._StrokeOriginals) do
				if stroke.Parent then
					stroke.Color = original
				end
			end
		end

		Window.SetThemeBackground = function(color)
			if typeof(color) ~= "Color3" then return end
			Window._Theme.Background = color
			-- Apply to the few "big" backgrounds users would expect to recolour.
			pcall(function() Main.BackgroundColor3 = color end)
			pcall(function() Elements.Parent.BackgroundColor3 = color end)
			pcall(function() Navigation.BackgroundColor3 = color end)
		end

		Window.GetTheme = function() return Window._Theme end

		Window.ResetTheme = function()
			Window.ClearThemeAccent()
			Window._Theme.Accent = Color3.fromRGB(110, 102, 153)
		end

		Window.SetThemeGradient = function(c1, c2, c3)
			if typeof(c1) == "ColorSequence" then
				Luna.ThemeGradient = c1
			elseif typeof(c1) == "Color3" and typeof(c2) == "Color3" and typeof(c3) == "Color3" then
				Luna.ThemeGradient = ColorSequence.new{
					ColorSequenceKeypoint.new(0, c1),
					ColorSequenceKeypoint.new(0.5, c2),
					ColorSequenceKeypoint.new(1, c3),
				}
			end
			pcall(function() LunaUI.ThemeRemote.Value = not LunaUI.ThemeRemote.Value end)
		end

		Window.ApplyGradientPreset = function(presetName)
			local preset = PresetGradients[presetName]
			if preset then
				Window.SetThemeGradient(preset[1], preset[2], preset[3])
			end
		end

		Window.GetGradientPresets = function()
			local names = {}
			for name in pairs(PresetGradients) do
				table.insert(names, name)
			end
			table.sort(names)
			return names
		end

		Window.GetTabNames = function()
			local entries = {}
			local seen = {}

			local function addEntry(name, order)
				if not name or name == "" or seen[name] then return end
				if name == "Home" then
					name = "Dashboard"
				end
				seen[name] = true
				table.insert(entries, {
					name = name,
					order = order or 9999,
				})
			end

			if Window._HomeTabButton then
				addEntry("Dashboard", Window._HomeTabButton.LayoutOrder or 1)
			end

			if Navigation and Navigation.Tabs then
				for _, child in ipairs(Navigation.Tabs:GetChildren()) do
					if child.ClassName == "Frame" and child.Name ~= "InActive Template" then
						local tabName = child:GetAttribute("LunaTabName")
						if tabName and tabName ~= "" then
							addEntry(tabName, child.LayoutOrder)
						end
					end
				end
			end

			for name, reg in pairs(Window._TabRegistry or {}) do
				if reg.Button then
					addEntry(name, reg.Button.LayoutOrder or (Window._TabCreationOrder and Window._TabCreationOrder[name]) or 9999)
				end
			end

			table.sort(entries, function(a, b)
				if a.order ~= b.order then
					return a.order < b.order
				end
				return a.name < b.name
			end)

			local names = {}
			for _, entry in ipairs(entries) do
				table.insert(names, entry.name)
			end
			if #names == 0 then
				names = {"Dashboard"}
			end
			return names
		end

		Window.NotifyTabsChanged = function()
			if Window._TabListRefreshHook then
				pcall(Window._TabListRefreshHook)
			end
		end

		local function getAnonymousIcon()
			return GetIcon("venetian-mask", "Lucide")
		end

		Window.GetAnonymousIcon = getAnonymousIcon
		task.defer(function()
			pcall(getAnonymousIcon)
		end)

		local function snapshotImageLabel(label)
			if not label then return nil end
			return {
				Image = label.Image,
				ImageRectSize = label.ImageRectSize,
				ImageRectOffset = label.ImageRectOffset,
			}
		end

		local function restoreImageLabel(label, snap)
			if not label or not snap then return end
			label.Image = snap.Image
			label.ImageRectSize = snap.ImageRectSize
			label.ImageRectOffset = snap.ImageRectOffset
		end

		local ANON_DISPLAY = "Anonymous"
		local ANON_USER = "hidden_user"

		local function setAnonLabelsNoTranslate(refs, enabled)
			local labels = {
				refs.NavDisplay, refs.NavUser, refs.HomeGreeting, refs.HomeUserLine, refs.ServerRegion,
			}
			for _, label in ipairs(labels) do
				if label then
					if enabled then
						label:SetAttribute("LunaNoTranslate", true)
					else
						label:SetAttribute("LunaNoTranslate", nil)
					end
				end
			end
		end

		Window.CaptureProfileOriginals = function()
			if Window._ProfileOriginals or not Window._ProfileRefs then return end
			local refs = Window._ProfileRefs
			local lp = Players.LocalPlayer
			local regionName = ""
			pcall(function()
				regionName = Localization:GetCountryRegionForPlayerAsync(lp)
			end)
			Window._ProfileOriginals = {
				navIcon = snapshotImageLabel(refs.NavIcon),
				homeIcon = snapshotImageLabel(refs.HomeIcon),
				navDisplay = lp.DisplayName,
				navUser = lp.Name,
				homeGreeting = "Hello, " .. lp.DisplayName,
				homeUserLine = lp.Name .. " - " .. WindowSettings.Name,
				serverRegion = regionName,
			}
		end

		Window.ResetProfileOriginals = function()
			Window._ProfileOriginals = nil
		end

		Window.GetAnonymousMode = function()
			return Window._AnonymousMode == true
		end

		local function ensureProfileRefs()
			if Window._ProfileRefs then return Window._ProfileRefs end
			local ok, refs = pcall(function()
				local home = Elements and Elements:FindFirstChild("Home")
				local dash = home and home:FindFirstChild("detailsholder") and home.detailsholder:FindFirstChild("dashboard")
				if not Navigation or not Navigation:FindFirstChild("Player") or not home or not dash then
					return nil
				end
				return {
					NavIcon = Navigation.Player.icon.ImageLabel,
					NavDisplay = Navigation.Player.Namez,
					NavUser = Navigation.Player.TextLabel,
					HomeIcon = home.icon.ImageLabel,
					HomeGreeting = home.player.Text,
					HomeUserLine = home.player.user,
					FriendsAll = dash.Friends.All.Value,
					FriendsOffline = dash.Friends.Offline.Value,
					FriendsOnline = dash.Friends.Online.Value,
					FriendsInGame = dash.Friends.InGame.Value,
					ServerRegion = dash.Server.Region.Value,
					ServerLatency = dash.Server.Latency.Value,
				}
			end)
			if ok and refs then
				Window._ProfileRefs = refs
			end
			return Window._ProfileRefs
		end

		Window.SetAnonymousMode = function(enabled)
			enabled = enabled == true
			local refs = ensureProfileRefs()
			if not refs then
				return false
			end
			if not enabled then
				Window:ResetProfileOriginals()
			end
			Window:CaptureProfileOriginals()

			local o = Window._ProfileOriginals
			Window._AnonymousMode = enabled

			if enabled then
				local anonIcon = getAnonymousIcon()
				Window._AnonIconData = anonIcon
				if anonIcon and refs.NavIcon then
					pcall(function() ApplyIcon(refs.NavIcon, anonIcon) end)
				end
				if anonIcon and refs.HomeIcon then
					pcall(function() ApplyIcon(refs.HomeIcon, anonIcon) end)
				end
				if refs.NavDisplay then refs.NavDisplay.Text = ANON_DISPLAY end
				if refs.NavUser then refs.NavUser.Text = ANON_USER end
				if refs.HomeGreeting then refs.HomeGreeting.Text = "Hello, " .. ANON_DISPLAY end
				if refs.HomeUserLine then refs.HomeUserLine.Text = ANON_USER .. " - " .. WindowSettings.Name end
				if refs.ServerRegion then refs.ServerRegion.Text = "Hidden" end
				setAnonLabelsNoTranslate(refs, true)
			else
				if refs.NavIcon and o.navIcon then
					pcall(function() restoreImageLabel(refs.NavIcon, o.navIcon) end)
				end
				if refs.HomeIcon and o.homeIcon then
					pcall(function() restoreImageLabel(refs.HomeIcon, o.homeIcon) end)
				end
				if refs.NavDisplay then refs.NavDisplay.Text = o.navDisplay end
				if refs.NavUser then refs.NavUser.Text = o.navUser end
				if refs.HomeGreeting then refs.HomeGreeting.Text = o.homeGreeting end
				if refs.HomeUserLine then refs.HomeUserLine.Text = o.homeUserLine end
				if refs.ServerRegion then
					local regionText = o.serverRegion
					if regionText == "" or regionText == "Hidden" then
						pcall(function()
							regionText = Localization:GetCountryRegionForPlayerAsync(Players.LocalPlayer)
						end)
					end
					refs.ServerRegion.Text = regionText
				end
				setAnonLabelsNoTranslate(refs, false)
			end
			return true
		end

		local function setDashboardVisible(visible)
			local btn = Window._HomeTabButton
			if btn then btn.Visible = visible end
		end

		Window.SetTabVisible = function(tabName, visible)
			if tabName == "Dashboard" or tabName == "Home" then
				setDashboardVisible(visible)
				return
			end
			local entry = Window._TabRegistry and Window._TabRegistry[tabName]
			if not entry or not entry.Button then return end
			entry.Hidden = not visible
			entry.Button.Visible = visible
		end

		Window.ApplyHiddenTabs = function(hiddenList)
			if type(hiddenList) ~= "table" then return end
			local hideSet = {}
			for _, n in ipairs(hiddenList) do hideSet[n] = true end
			local hideDash = hideSet["Dashboard"] == true or hideSet["Home"] == true
			setDashboardVisible(not hideDash)
			for name, entry in pairs(Window._TabRegistry or {}) do
				if name ~= "Home" then
					local hide = hideSet[name] == true
					entry.Hidden = hide
					if entry.Button then entry.Button.Visible = not hide end
				end
			end
		end
	end

	Window._Main = Main
	Window.GetMain = function()
		return Main
	end

	return Window
end

function Luna:Destroy()
	Main.Visible = false
	for _, Notification in ipairs(Notifications:GetChildren()) do
		if Notification.ClassName == "Frame" then
			Notification.Visible = false
			Notification:Destroy()
		end
	end
	LunaUI:Destroy()
end

-- ============================================================
-- Translator public API
-- ============================================================
-- Sets the UI language. `targetCode` is an ISO code such as "ru", "fr",
-- "pt", "es", "en". Pass "en" to restore originals. Optionally pass a
-- custom translator function `(text, target) -> string`; if provided it
-- replaces the built-in Google Translate fetcher. Translation is async
-- and won't block; expect a brief delay while strings stream in.
function Luna:SetLanguage(targetCode, customTranslator)
	targetCode = tostring(targetCode or "en"):lower()
	LunaTranslator.Target = targetCode
	if customTranslator ~= nil then
		LunaTranslator.External = customTranslator
	end
	if targetCode ~= "en" then
		_watchNewText(LunaUI)
	end
	_translateTree(LunaUI, targetCode)
	-- Second pass clears stale template originals (e.g. "But with description", lorem ipsum)
	-- that were snapshotted before host scripts finished assigning real text.
	if targetCode ~= "en" then
		task.delay(0.4, function()
			for _, obj in ipairs(LunaUI:GetDescendants()) do
				if _isTranslatableText(obj) then
					local orig = obj:GetAttribute("LunaOriginalText")
					if _isStaleTemplateOriginal(orig, obj.Text) then
						obj:SetAttribute("LunaOriginalText", nil)
						obj:SetAttribute("LunaTranslated", nil)
					end
				end
			end
			_translateTree(LunaUI, targetCode)
		end)
	end
end

-- Direct translate-a-string helper (sync; will yield while waiting for HTTP).
function Luna:Translate(text, target)
	return LunaTranslate(text, target or LunaTranslator.Target)
end

-- Returns the active language code, default "en".
function Luna:GetLanguage()
	return LunaTranslator.Target or "en"
end

if isStudio then
	local Window = Luna:CreateWindow({
		Name = "Nebula Client - Luna Hub | Blade Ball",
		Subtitle = "by Nebula Softworks",
		LogoID = "123795201100198",
		LoadingEnabled = true,
		LoadingTitle = "Nebula Client (Luna Hub)",
		LoadingSubtitle = "Loading script for Blade Ball",
		SearchBar = true,
		Resizable = true,
		AiTab = true,
		ZoomEnabled = true,
		KeySystem = true,
		KeySettings = {
			Title = "Nebula Client | Key System",
			Subtitle = "Blade Ball",
			Note = "Please Enter Your Key To Use Nebula Client",
			FileName = "Key",
			SaveKey = true,
			Key = {"Example Key"},
			SecondAction = {
				Enabled = true,
				Type = "Link",
				Parameter = ""
			}
		}
	})
	
	--[[local Window = Luna:CreateWindow({
		Name = "Luna Example Window",
		Subtitle = "Test",
		LogoID = "6031097225",
		LoadingEnabled = true,
		LoadingTitle = "Luna Interface Suite",
		LoadingSubtitle = "by Nebula Softworks",
		KeySystem = true,
		KeySettings = {
			Title = "Luna Example Key",
			Subtitle = "Key System",
			Note = "Please Enter Your Key To Use Example Hub",
			FileName = "Key", -- the name of the key file. this will be saved in ur RootFolder. However, if you don't have one, it'll save in ur config folder instead
			SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
			Key = {"Example Key"} -- List of keys that will be accepted by the system, please use a system like Pelican or Luarmor that provide key strings based on your HWID since putting a simple string is very easy to bypass
		}
	})

	Luna:Notification({ 
		Title = "Welcome to Luna",
		Icon = "sparkle",
		ImageSource = "Material",
		Content = "Welcome to the Luna Interface Suite. This Is an Amazing Quality Freemium UI Library For Roblox Exploiting Made By Nebula Softworks. Luna was Created in hopes of improving the standard of UI Library designs by being the golden standard for it. Luna Has Amazing Features like a key system, notification and perfection in aesthetics and design. So, What Are You Waiting For? Start Using Luna Today at " .. website
	})

	local Tabs = {
		Main = Window:CreateTab({
			Name = "Tab Example 1",
			Icon = "view_in_ar",
			ImageSource = "Material",
			ShowTitle = true
		}),
		Main2 = Window:CreateTab({
			Name = "Tab Example 2",
			Icon = "location_searching",
			ImageSource = "Material",
			ShowTitle = false
		}),
		Premium = Window:CreateTab({
			Name = "Premium Tab",
			Icon = "sparkle",
			ImageSource = "Material",
			ShowTitle = true
		}),
		Debug = Window:CreateTab({
			Name = "Debug",
			Icon = "settings"
		})
	}

	Window:CreateHomeTab()
	local bleh =Tabs.Debug:CreateColorPicker()
	Tabs.Debug:CreateButton({
		Callback = function()
			bleh:Set({
				Color = Color3.fromRGB(0,0,0)
			})
		end,
	})

	Tabs.Main:CreateSection("Section Example")
	Tabs.Main:CreateButton({
		Name = "Button Example!",
		Description = "Every Element Except For Sliders Can Have a description like this"
	})
	Tabs.Main:CreateLabel({
		Text = "Label Example",
		Style = 1
	})
	Tabs.Main:CreateLabel({
		Text = "Information Example",
		Style = 2
	})
	Tabs.Main:CreateLabel({
		Text = "Warning Example",
		Style = 3
	})
	Tabs.Main:CreateParagraph({
		Title = "Paragraph Example ",
		Text = "This Is A Paragraph. You Can Type Very Long Strings Here And They'll Automatically Fit! This Counts As A Description Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text?"
	})
	Tabs.Main:CreateSlider({
		Name = "Slider Example",
		Range = {0, 200},
		Increment = 0.1,
		CurrentValue = 100,
		Flag = "Slider",
	})
	Tabs.Main:CreateToggle({
		Name = "Toggle Example",
		Description = "This Is A Toggle. See I Was Right? Sliders Don't Have Descriptions!",
		CurrentValue = false,
	})

	Tabs.Main:CreateBind({
		Name = "Bind Example",
		Description = "Btw Using CreateKeybind is deprecated, use CreateBind For Future Binds :)",
		CurrentKeybind = "Q",
		HoldToInteract = false,
	})
	Tabs.Main:CreateInput({
		Name = "Dynamic Input Example",
		Description = "Every Element has :Set(). Sadly this one is broken;the text wont update :(",
		PlaceholderText = "Input Placeholder",
		CurrentValue = "",
		Numeric = false,
		MaxCharacters = nil,
		Enter = false
	})
	Tabs.Main:CreateDropdown({
		Name = "Dropdown Example",
		Description = "U can access a element's values using .Settings!",
		Options = {"Option 1","Option 2","Option 3","Option 4","Option 5","Option 6"},
		CurrentOption = "Option 1",
		MultipleOptions = false,
		SpecialType = nil
	})

	Tabs.Main:CreateColorPicker({
		Name = "Color Picker Example",
		Color = Color3.fromRGB(86, 171, 128),
		Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
		Callback = function(Value)
			-- The function that takes place every time the color picker is moved/changed
			-- The variable (Value) is a Color3fromRGB value based on which color is selected
		end
	})

	Tabs.Main2:CreateSection("The Elements Here Are To Show Unique Features")
	Tabs.Main2:CreateToggle({
		Name = "Toggle - Default On",
		Description = "Toggles Can be Onned By Default!",
		CurrentValue = true
	})
	Tabs.Main2:CreateBind({
		Name = "Hold To Interact - Walkspeed Example",
		Description = "Binds Can Be Made to only Callback when held",
		HoldToInteract = true,
		CurrentBind = "E",
		Callback = function(v)
			if v then 
				Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
			else
				Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
			end
		end,
	})
	Tabs.Main2:CreateInput({
		Name = "Numeric And 12 Max Characters",
		Description = "You Can Limit The Max Characters or Allow Only Numbers",
		Numeric = true,
		MaxCharacters = 12
	})
	Tabs.Main2:CreateInput({
		Name = "Require Enter",
		Description = "You Can Only make the callback happen after user hits enter",
		Enter = true
	})
	Tabs.Main2:CreateLabel({
		Text = "Every Element Can be Destroyed as well!"
	})
	Tabs.Main2:CreateDropdown({
		Name = "Dropdown - Multi Options",
		Description = "Multiple Special Features can be used on the same element!",
		Options = {"Option 1","Option 2","Option 3","Option 4","Option 5","Option 6"},
		CurrentOption = {"Option 1","Option 3","Option 6"},
		MultipleOptions = true
	})
	Tabs.Main2:CreateDropdown({
		Name = "Dropdown - Players",
		Description = "Luna's Dropdowns Has a built in Player Dropdown!",
		Options = {"u can put anything here, it wont be shown anyway"},
		CurrentOption = {"same here, itll be the first option"},
		MultipleOptions = false,
		SpecialType = "Player"
	})

	local s = Tabs.Premium:CreateSection("You can add elements inside section too")
	s:CreateButton()
	s:CreateLabel()
	s:CreateDivider()
	s:CreateDropdown()

	Tabs.Premium:BuildConfigSection()
	Tabs.Premium:BuildThemeSection()]]
end

-- THIS IS THE DEBUG DEMO, ONLY USED WHEN TESTING NEW ELEMENTS AND CODE
--[[if isStudio then
    window = Luna:CreateWindow({LoadingEnabled = false})
    t1 = window:CreateTab()
    t2 = window:CreateTab({ Name = "Tab 2", Icon = "location_searching"})
    Luna:Notification({ 
        Title = "Welcome to Luna",
        Icon = "sparkle",
        ImageSource = "Material",
        Content = "Welcome to the Luna Interface Suite. This Is an Amazing Quality Freemium UI Library For Roblox Exploiting Made By Nebula Softworks. Luna was Created in hopes of improving the standard of UI Library designs by being the golden standard for it. Luna Has Amazing Features like a key system, notification and perfection in aesthetics and design. So, What Are You Waiting For? Start Using Luna Today at " .. website
    })
    t1:CreateSection()
    local btn = t1:CreateButton({Callback = "", Description = "This Is A Description"})
    local l = t1:CreateLabel({ Style = 2})
    local l2 = t1:CreateLabel({ Text = "Another Label" })
    t2:CreateButton({ Callback = function() 
        l:Destroy()
        l2:Set("New Text")
    end})
    t2:CreateLabel({Style = 3})
    t1:CreateParagraph({Text = "Single String"})
    t1:CreateParagraph({Text = "Welcome to the Luna Interface Suite. This Is an Amazing Quality Freemium UI Library For Roblox Exploiting Made By Nebula Softworks. Luna was Created in hopes of improving the standard of UI Library designs by being the golden standard for it. Luna Has Amazing Features like a key system, notification and perfection in aesthetics and design. So, What Are You Waiting For? Start Using Luna Today at " .. website})
    s = t2:CreateSlider({ Callback = function(v) print(v) end })	
    t1:CreateButton({ Callback = function()
        s:Set({Name = "new name", Callback = ""})
        wait(5)
        s:Destroy()
    end})
    t1:CreateColorPicker()
    local toggle = t1:CreateToggle({Name = "test", Description = "test", CurrentValue = true, Callback = ""}, "toggle2")
    t1:CreateToggle({Callback = function(Value) toggle:Destroy() print(Value) end})
    local bind = t2:CreateBind({Name = "test", Description = "test", CurrentBind = "E", HoldToInteract = false, Callback = ""})
    t2:CreateKeybind({HoldToInteract = true, Callback = function(v)
        if v then
            Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        else
            Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end,})
    local input = t2:CreateInput({Name = "test",ClearTextAfterFocusLost = false, Description = "Numbers only, 8 max characters and enter required.",MaxCharacters = 8 ,Numeric = true, Enter = true, Callback = ""})
    t2:CreateInput({Callback = function(text) print(text) end})
    local d = t1:CreateDropdown({Name = "test", Options = {"Apples", "Bananas", "Strawberries", "Elixir"}, Description = "MultiOptions", MultipleOptions = true, Callback = function(t) print(t) end, CurrentOption = {"Apples", "Elixir"}})
    t1:CreateDropdown({Callback = function(t) print(unpack(t)) end})
    t1:CreateDropdown({Description = "Special Type - Player", Callback = "", SpecialType = "Player"})
end]]--
return Luna
