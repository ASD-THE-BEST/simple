-- fully made by ASD

txt = nil -- 표지판 텍스트 변수임 ㅋㅋ

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
	Title = "sign.lua",
	SubTitle = "ㅣonly coded by ASD",
	TabWidth = 160,
	Size = UDim2.fromOffset(750, 500),
	Acrylic = true,
	Theme = "Amethyst",
	MinimizeKey = Enum.KeyCode.LeftControl
})
Fluent:Notify({
	Title = "이걸 왜 돈 받고 파냐",
	Content = "ㅋㅋ",
	SubContent = nil,
	Duration = 5
})

a = Window:AddTab({
	Title = "Main",
	Icon = "radio"
})
b = Window:AddTab({
	Title = "Miscellaneous",
	Icon = "infinity"
})
Window:SelectTab(1)
a:AddParagraph({
	Title = "only coded by ASD",
	Content = "discord : im.asd"
})
a:AddInput("Input", {
	Title = "표지판 텍스트",
	Description = ":)",
	Default = "",
	Placeholder = "text",
	Numeric = false,
	Finished = false,
	Callback = function(Value)
		txt = Value
	end
})

a:AddToggle("MyToggle", 
{
	Title = "시작",
	Description = "ㅋㅋ",
	Default = false,
	Callback = function(state)
		getfenv().hahaha = state
		while getfenv().hahaha do
			for i, v in pairs(game.Players:GetChildren()) do
				pcall(function()
					local superimportantremote = v.Character:FindFirstChild("UpdateSign", true)
					if superimportantremote then
						superimportantremote:FireServer(txt)
					end
				end)
			end
			task.wait()
		end
	end 
})

b:AddSection("Others")

b:AddButton({
	Title = "CuteSpy",
	Description = "intercept Httprequest",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ASD-THE-BEST/cutespy/refs/heads/main/main.luau"))()
	end
})

b:AddButton({
	Title = "Cobalt",
	Description = "RemoteSpy",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/notpoiu/cobalt/releases/latest/download/Cobalt.luau"))()
	end
})

InterfaceManager:SetLibrary(Fluent)
InterfaceManager:BuildInterfaceSection(b)
