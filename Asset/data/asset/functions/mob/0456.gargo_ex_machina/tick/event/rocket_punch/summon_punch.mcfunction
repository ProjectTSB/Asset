#> asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/summon_punch
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/

# ATTACKドローン召喚
    data modify storage api: Argument.ID set value 2269
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.RocketPunch
    execute if score @s CO.PreTimer matches 1.. store result storage api: Argument.FieldOverride.WaitTime int 1 run scoreboard players get @s CO.PreTimer
    function api:object/summon

# 消去
    kill @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..5,sort=nearest,limit=1]
