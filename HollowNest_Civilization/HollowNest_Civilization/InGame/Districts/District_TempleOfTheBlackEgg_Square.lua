-- District_TempleOfTheBlackEgg_Square
-- Author: wldcmzy
-- DateCreated: 7/21/2023 10:54:02 PM
--------------------------------------------------------------

function HollowNest_ShowText_Memory_of_The_Abyss(playerID, districtID, iX, iY)
    if (districtID == GameInfo.Districts["DISTRICT_TEMPLE_OF_THE_BLACK_EGG_SQUARE"].Index) then
		print('Temple of the Black Egg Square constructed...')
		local pPlayer = Players[playerID]
		pPlayer:GetUnits():Create(GameInfo.Units['UNIT_HOLLOW_KNIGHT'].Index, iX, iY)
		print('One Free Hollow Knight Created...')
		local TextVarPrefix = 'LOC_TEXT_MEMORY_OF_THE_AYBSS_'
		local LeaderRadianceSuffix = "_RADIANCE"
		local txt = ""
		local playerCfg = PlayerConfigurations[playerID]
		local leaderType = playerCfg:GetLeaderTypeName()
		print('Start to show Text of Memory_of_The_Abyss')
		for i=0,9 do
			txt = TextVarPrefix .. i
			if (i == 6) and (leaderType == "LEADER_RADIANCE") then
				print('Show Radiance Trait Text')
				txt = TextVarPrefix .. i .. LeaderRadianceSuffix
			end
			txt = Locale.Lookup(txt)
			Game.AddWorldViewText(0, txt, iX, iY)
		end
    end
end

GameEvents.OnDistrictConstructed.Add(HollowNest_ShowText_Memory_of_The_Abyss);
