local players = game:GetService("Players")

print("players",players)

local function giveplayerCurrency(player:player)
	while true do 
		task.wait(1)
		player.leaderstats.Food.Value += 1
		player.leaderstats.Coins.Value += 1
	end
end
	

local function SetUpPlayerData(player:player) 

	local leaderstats = Instance.new("Folder",player)
	leaderstats.Name = "leaderstats"
	
	local food = Instance.new("IntValue",leaderstats)
	food.Name = "Food"
	food.Value = 0 
	
	local coins = Instance.new("IntValue",leaderstats)
	coins.Name = "Coins"
	coins.Value = 0
	
	-- You Could call the giveplayerCurrency function here
	giveplayerCurrency(player) 
	
	-- Or remove the function  giveplayerCurrency and just have the code below, it is the same thing.
	--while true do 
	--	task.wait(1)
	--	player.leaderstats.Food.Value += 1
	--	player.leaderstats.Coins.Value += 1
	--end
	
end

players.PlayerAdded:Connect(SetUpPlayerData)

