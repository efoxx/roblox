local Players = game:GetService("Players")

--print("BIG PLAYER",Players)

-- LocalPlayer will be nil in a regular Script.
local player = Players.LocalPlayer

--print("playersss", player)

local currencyGUI = script.Parent
local currencyHolderFrame = currencyGUI:FindFirstChild("CurrencyHolder")

-- YOU ARE MISSING A "FOOD" ITEM IN THE EXPLORER. There is nothing under CurrencyHolder
-- make sure the rest of these folder items exist.
local foodHolderFrame = currencyHolderFrame:FindFirstChild("Food")
local foodAmountFrame = foodHolderFrame:FindFirstChild("Amount")
local foodFrame = currencyHolderFrame:FindFirstChild("Food") 
local coinsFrame = currencyHolderFrame:FindFirstChild("Coins")

local function changeValue(name: string, amount: number)
	if name == "Food" then
		foodFrame.Amount.Text = amount.."/50"
	elseif name == "Coins" then
		coinsFrame.Amount.Text = amount
	end
end

--print("player", player)

repeat wait(1) until player.leaderstats

changeValue("Food", player.leaderstats.Food.Value)
changeValue("Coins", player.leaderstats.Coins.Value)

player.leaderstats.Food.Changed:Connect(changeValue("Food", player.leaderstats.Food.Value))
player.leaderstats.Coins.Changed:Connect(changeValue("Coins", player.leaderstats.Coins.Value))