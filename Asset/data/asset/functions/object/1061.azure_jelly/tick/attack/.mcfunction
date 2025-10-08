#> asset:object/1061.azure_jelly/tick/attack/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

# 演出
    execute rotated ~ 0 positioned ~ ~-0.3 ~ run function asset:object/1061.azure_jelly/tick/attack/vfx/circle
    execute rotated ~ 0 positioned ~ ~-0.3 ~ run function asset:object/1061.azure_jelly/tick/attack/vfx/circle2

    #data modify storage api: Argument.ID set value 1062
    #execute positioned ~ ~-0.3 ~ run function api:object/summon

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @p[tag=1061.Owner] run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset
