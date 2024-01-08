-- Grimm
-- Author: wldcmzy
-- DateCreated: 12/28/2023 9:10:40 AM
--------------------------------------------------------------

function Leader_Grimm_CivicCompletedBuff(iPlayer, iCivic)
	local boost_number_1_rate = 60
	local boost_number_2_rate = 90

	local boost_number = 3
	local x = Game.GetRandNum(100)
	if (x < boost_number_1_rate) then
		boost_number = 1
	elseif (x < boost_number_2_rate) then
		boost_number = 2
	end

	local pPlayer = Players[iPlayer]
	local pPlayerConfig = PlayerConfigurations[iPlayer]
	local CivilizationName =  pPlayerConfig:GetCivilizationTypeName()
	local LeaderName = pPlayerConfig:GetLeaderTypeName()

	if (CivilizationName == 'CIVILIZATION_HOLLOWNEST' and LeaderName == 'LEADER_GRIMM') then  
		for i = 1, boost_number do
			pPlayer:AttachModifierByID("MODIFIER_LEADER_GRIMM_CIVIC_BOOST")
		end
	end

	local civic = GameInfo.Civics[iCivic]
	local name = civic['Name']
	local cost = civic['Cost']
	
	local multiplier = GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier
	cost = (cost * multiplier) / 100

	pPlayer:GetTechs():ChangeCurrentResearchProgress(cost)
	print("Civic ".. name .." Completed, get tech boost ".. cost .." and ".. boost_number .." Inspiration!")


end

function Leader_Grimm_ChangeYieldFromCulture_PerTurnEnd()
	local gainYieldPercentage = 0.8

	local AlivePlayerList = PlayerManager.GetAlive()

	for each in pairs(AlivePlayerList) do
		local iplayer = each-1
		local pPlayerConfig = PlayerConfigurations[iplayer]
		local CivilizationName =  pPlayerConfig:GetCivilizationTypeName()
		local LeaderName = pPlayerConfig:GetLeaderTypeName()

		if (CivilizationName == 'CIVILIZATION_HOLLOWNEST' and LeaderName == 'LEADER_GRIMM') then
			local pPlayer = Players[iplayer]
			local value = pPlayer:GetCulture():GetCultureYield() * gainYieldPercentage
			pPlayer:GetTechs():ChangeCurrentResearchProgress(value)
			pPlayer:GetTreasury():ChangeGoldBalance(value)
			pPlayer:GetReligion():ChangeFaithBalance(value)
			print('player '.. iplayer ..' who play Leader_Girmm gains science & money & faith ' .. value)
		end
	end

end


Events.CivicCompleted.Add(Leader_Grimm_CivicCompletedBuff)
Events.TurnEnd.Add(Leader_Grimm_ChangeYieldFromCulture_PerTurnEnd)