-- HollowNest_Civilization_Trait
-- Author: wldcmzy
-- DateCreated: 7/23/2023 9:06:22 PM
--------------------------------------------------------------

function Randomly_Make_Unit_Can_Create_Relic(pCombatResult)
	--RATE stand for the rate of Create Relic, range = [0-100], 0 = never, 100 = always
	local RATE = 100

	print("relic func start")
    -- Attacker
    local attacker = pCombatResult[CombatResultParameters.ATTACKER];
    local attInfo = attacker[CombatResultParameters.ID]
    local pPlayerConfigAtt = PlayerConfigurations[attInfo.player]
	if (pPlayerConfigAtt ~= nil)  
	and (pPlayerConfigAtt:GetCivilizationTypeName() == "CIVILIZATION_HOLLOWNEST") 
	and (attInfo.type == ComponentType.UNIT) then
		print(">>>>>>>>>>>>> may be can (at ATT)")
		local pAttUnit = UnitManager.GetUnit(attInfo.player, attInfo.id)
		local flag = pAttUnit:GetReligion():IsRelicUponDeath()
		print(flag)
		if (flag <= 0) then
			local locAtt = pAttUnit:GetLocation()
			local x = Game.GetRandNum(100)
			print('the random number is: ' .. x .. '>>> the rate is: ' .. RATE)
			if (x < RATE) then
				pAttUnit:GetReligion():SetRelicUponDeath(100)
				print('Death Relic setted!!!')
				Game.AddWorldViewText(0, "ATT relic", locAtt.x, locAtt.y)
			end
		end
    end
    
    -- Defender
    local defacker = pCombatResult[CombatResultParameters.DEFENDER];
    local defInfo = defacker[CombatResultParameters.ID]
    local pPlayerConfigDef = PlayerConfigurations[defInfo.player]
	if (pPlayerConfigDef ~= nil)  
	and (pPlayerConfigDef:GetCivilizationTypeName() == "CIVILIZATION_HOLLOWNEST") 
	and (defInfo.type == ComponentType.UNIT) then
		print(">>>>>>>>>>>>> may be can (at DEF)")
		local pDefUnit = UnitManager.GetUnit(defInfo.player, defInfo.id)
		local flag = pDefUnit:GetReligion():IsRelicUponDeath()
		print(flag)
		if (flag <= 0) then
			local locDef = pDefUnit:GetLocation()
			local x = Game.GetRandNum(100)
			print('the random number is: ' .. x .. '>>> the rate is: ' .. RATE)
			if (x < RATE) then
				pDefUnit:GetReligion():SetRelicUponDeath(100)
				print('Death Relic setted!!!')
				Game.AddWorldViewText(0, "DEF relic", locDef.x, locDef.y)
			end
		end
    end
end

Events.Combat.Add(Randomly_Make_Unit_Can_Create_Relic)
