#> asset:object/1143.arrow_of_hekireki/kill/object_summon
#
#
#
# @within function asset:object/1143.arrow_of_hekireki/kill/

# Object召喚
    data modify storage api: Argument.ID set value 1144
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.ThunderDamage
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.DuplicateHitProtectForNonPlayer set from storage asset:context this.DuplicateHitProtectForNonPlayer

# 近くに敵がいるか否かで召喚位置を変える
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] at @s positioned ~ ~0.2 ~ run function api:object/summon
    execute positioned ~-0.5 ~-0.5 ~-0.5 positioned as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] positioned ~ ~0.2 ~ run function api:object/summon
