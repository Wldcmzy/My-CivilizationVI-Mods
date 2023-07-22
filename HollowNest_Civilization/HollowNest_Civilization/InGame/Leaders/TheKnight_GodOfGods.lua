-- TheKnight_GodOfGods
-- Author: wldcmzy
-- DateCreated: 7/21/2023 12:10:41 PM
--------------------------------------------------------------
function Leader_GodOfGods_Combat(pCombatResult)

	local Heal_Devide = 7
	local Extra_Damage_Devide = 7

    -- Attacker
    local attacker = pCombatResult[CombatResultParameters.ATTACKER];
    local attInfo = attacker[CombatResultParameters.ID]
    local pPlayerConfigAtt = PlayerConfigurations[attInfo.player]
	local pAttUnit
	local locAtt, expAtt, extraHealValueAtt, extraDamageValueAtt
	local attFlag = false
	if (attInfo.type == ComponentType.UNIT) then 
		pAttUnit = UnitManager.GetUnit(attInfo.player, attInfo.id)
		locAtt = pAttUnit:GetLocation()

		if (pPlayerConfigAtt == nil)
		or (pPlayerConfigAtt:GetLeaderTypeName() == "LEADER_GOD_OF_GODS") then
			attFlag = true
			expAtt = pAttUnit:GetExperience():GetExperiencePoints()
			extraHealValueAtt = math.floor(expAtt / Heal_Devide)
			extraDamageValueAtt = math.floor(expAtt / Extra_Damage_Devide)
		end
    end
    
    -- Defender
    local defender = pCombatResult[CombatResultParameters.DEFENDER]
    local defInfo = defender[CombatResultParameters.ID]
	local pPlayerConfigDef = PlayerConfigurations[defInfo.player]
	local pDefUnit
	local locDef, expDef, extraHealValueDef, extraDamageValueDef
	local defFlag = false
	if (defInfo.type == ComponentType.UNIT) then
		pDefUnit = UnitManager.GetUnit(defInfo.player, defInfo.id)
		locDef = pDefUnit:GetLocation()

		if (pPlayerConfigDef == nil)
		or (pPlayerConfigDef:GetLeaderTypeName() == "LEADER_GOD_OF_GODS") then
			defFlag = true
			expDef = pDefUnit:GetExperience():GetExperiencePoints()
			extraHealValueDef = math.floor(expDef / Heal_Devide)
			extraDamageValueDef = math.floor(expDef / Extra_Damage_Devide)
		end
    end

	if (attFlag == true) then
		pAttUnit:GetExperience():ChangeExperience(7)
		pAttUnit:ChangeDamage(- extraHealValueAtt)
		print("attaker +7 Exp , and Heal")
		-- Game.AddWorldViewText(0, "Heal +" .. extraHealValueAtt .. "HP", locAtt.x, locAtt.y)
	end
	if (defFlag == true) then
		pDefUnit:GetExperience():ChangeExperience(7)
		pDefUnit:ChangeDamage(- extraHealValueDef)
		print("defender +7 Exp , and Heal")
		-- Game.AddWorldViewText(0, "Heal +" .. extraHealValueDef .. "HP", locDef.x, locDef.y)
	end
	if (attFlag == true) then 
		if (defInfo.type == ComponentType.UNIT) then
			pDefUnit:ChangeDamage(extraHealValueAtt)
			print("attaker cause more damage")
			-- Game.AddWorldViewText(0, "ExtraDamage -" .. extraHealValueAtt .. "HP", locDef.x, locDef.y)
		end
	end
	if (defFlag == true) then
		if (attInfo.type == ComponentType.UNIT) then
			pAttUnit:ChangeDamage(extraHealValueDef)
			print("defender cause more damage")
			-- Game.AddWorldViewText(0, "ExtraDamage -" .. extraHealValueDef .. "HP", locAtt.x, locAtt.y)
		end
	end
	
end

Events.Combat.Add(Leader_GodOfGods_Combat)