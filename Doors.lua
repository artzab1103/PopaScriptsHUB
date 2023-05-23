local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Popa Scripts | Doors",
    LoadingTitle = "Popa Scripts",
    LoadingSubtitle = "by ArtZab",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = popascripts, -- Create a custom folder for your hub/game
       FileName = "popascripts"
    },
    Discord = {
       Enabled = true,
       Invite = "9r5r6hyTnh", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = True, -- Set this to true to use our key system
    KeySettings = {
       Title = "Popa Scripts",
       Subtitle = "Key System",
       Note = "Key in discord: 9r5r6hyTnh",
       FileName = "popascriptskey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"9q0lzdpu2f467i8blc98"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local Tab = Window:CreateTab("Crucifix", 13525349010) -- Title, Image
 local Section = Tab:CreateSection("Settings")

local Input = Tab:CreateInput({
   Name = "Uses",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = false,
   Callback = function(Uses)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})
local Input = Tab:CreateInput({
   Name = "Range",
   PlaceholderText = "Number",
   RemoveTextAfterFocusLost = false,
   Callback = function(Range)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "On Anything",
   CurrentValue = false,
   Flag = "OnAnything", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(OnAnything)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Fail on Seek/Figure",
   CurrentValue = false,
   Flag = "Fail", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Fail)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local Section = Tab:CreateSection("Execute")

local Button = Tab:CreateButton({
   Name = "Execute",
   Callback = function(Execute)
   if Execute then
    _G.Uses = (Uses)
    _G.Range = (Range)
    _G.OnAnything = (OnAnything)
    _G.Fail = (Fail)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
   end
   end,
})