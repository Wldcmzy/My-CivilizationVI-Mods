-- HollowNest_Civilization_Trait
-- Author: wldcmzy
-- DateCreated: 7/23/2023 9:06:22 PM
--------------------------------------------------------------
 
function Randomly_Make_Unit_Create_Relic(killedPlayerID, killedUnitID, playerID, unitID)
	--[[
			(0) I wanna add a new kind of relics(Hollow Knight Charms), 
			But i have not find where to define a new kind. so randomly give
			player relic in kinds list:
			[RELIC_SOURCE_TRIBAL_VILLAGE, RELIC_SOURCE_RELIGIOUS_UNIT, RELIC_SOURCE_GOVERNOR]

			(1) if player haven't choose the void secret society, 
			the code of give player a void secret society's relic do nothing.

			(2) I wanna use pPlayer:PlayerGovernors():GetGovernorList() to judge
			whether player use the void secret society, but I don't know how to 
			use "UI" functions at "Script", the function return "nil".
			
			(3) So, I decide to type a not good version of code 
			that can't autojudge whether player use the void secret society.

			(4) It cause that: if player used the secret society,  the player
			is more likely to gain a Relic.
		]]--
	
	--[[
	RATE stand for the rate of Create Relic, 
	range = [0-100], 0 = never, 100 = always

	if the code decide to give player a relic,
	percentViliege, percentApostle, percentVoid indicate that
	the proportion that what kind of relic will give player.
	]]
	local RATE = 39
	local percentViliege = 15
	local percentApostle = 60
	local percentVoid = 100

	print("relic func start")

	local pPlayer = Players[killedPlayerID]
	local pPlayerConfig = PlayerConfigurations[killedPlayerID]
	if (pPlayerConfig ~= nil)  
	and (pPlayerConfig:GetCivilizationTypeName() == "CIVILIZATION_HOLLOWNEST")
	then
		print('Civilizition is HollowNest, permit to start to make random number')
		local ModifierIndex = 1
		local ModifierIdPrefix = "MODIFIER_HOLLOWNEST_RELIC_"
		local x = Game.GetRandNum(100)
		print('Random number = ' .. x .. ' RATE = ' .. RATE)
		if (x < RATE) then
			print('permit to grant a Relic')
			x = Game.GetRandNum(100)
			if (x < percentViliege) then
				ModifierIndex = 1
			elseif (x < percentApostle) then
				ModifierIndex = 2
			else
				ModifierIndex = 3
			end
			print('the random number = ' .. x .. ' so the ModifierIndex = ' .. ModifierIndex)
			pPlayer:AttachModifierByID(ModifierIdPrefix .. ModifierIndex)
		else
			print("Don't permit to grant a Relic")
		end
	end
end

Events.UnitKilledInCombat.Add(Randomly_Make_Unit_Create_Relic)