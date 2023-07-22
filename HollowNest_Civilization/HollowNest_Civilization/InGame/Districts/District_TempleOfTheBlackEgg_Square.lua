-- District_TempleOfTheBlackEgg_Square
-- Author: wldcmzy
-- DateCreated: 7/21/2023 10:54:02 PM
--------------------------------------------------------------

function HollowNest_ShowText_Memory_of_The_Abyss(iPlayer, eDistrictType, iX, iY)
    if (eDistrictType == GameInfo.Districts["DISTRICT_TEMPLE_OF_THE_BLACK_EGG_SQUARE"].Index) then
		-- UnitManager.InitUnitValidAdjacentHex(iplayer, "UNIT_HOLLOW_KNIGHT", iX, iY, 1)
		local TextVarPrefix = 'LOC_TEXT_MEMORY_OF_THE_AYBSS_'
		local LeaderRadianceSuffix = "_RADIANCE"
		local txt = ""
		for i=0,9 do
			txt = Locale.Lookup(TextVarPrefix .. i)
			if (i == 6) and false then
				txt = Locale.Lookup(TextVarPrefix .. i .. LeaderRadianceSuffix)
			end
			Game.AddWorldViewText(0, txt, iX, iY)
		end
    end
end

GameEvents.OnDistrictConstructed.Add(HollowNest_ShowText_Memory_of_The_Abyss);
