--==================================================
-- FOZIL HUB | Case Paradise (YOUR GAME)
--==================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

--================ GUI =================
local gui = Instance.new("ScreenGui")
gui.Name = "FozilHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- FOZIL label (prawy górny róg)
local title = Instance.new("TextLabel")
title.Parent = gui
title.Text = "FOZIL"
title.Font = Enum.Font.GothamBold
title.TextSize = 26
title.TextColor3 = Color3.fromRGB(255,255,255)
title.BackgroundTransparency = 1
title.AnchorPoint = Vector2.new(1,0)
title.Position = UDim2.new(1,-10,0,10)
title.Size = UDim2.new(0,120,0,40)

-- Main frame
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0,220,0,200)
frame.Position = UDim2.new(0,20,0.35,0)
frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
frame.BorderSizePixel = 0

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0,12)

--================ UTIL =================
local function createButton(text, y)
	local btn = Instance.new("TextButton")
	btn.Parent = frame
	btn.Size = UDim2.new(1,-20,0,40
)
	btn.Position = UDim2.new(0,10,0,y)
	btn.Text = text
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 16
	btn.TextColor3 = Color3.fromRGB(255,255,255)
	btn.BackgroundColor3 = Color3.fromRGB(40,40,40)
	btn.BorderSizePixel = 0
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0,8)
	return btn
end

--================ BUTTONS =================
local autoQuest = false
local autoOpen = false

local btn
