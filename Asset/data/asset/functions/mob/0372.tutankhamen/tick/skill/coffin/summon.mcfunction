#> asset:mob/0372.tutankhamen/tick/skill/coffin/summon
#
# 棺を召喚する
#
# @within function asset:mob/0372.tutankhamen/tick/skill/coffin/

#> Private
# @private
    #declare tag Summoned
    #declare tag TargetCoffin

# どこに棺がいるかチェックする
# 棺が召喚済みならSummonedをつける
    execute as @e[type=marker,tag=AC.CoffinPoint,distance=..50] at @s if entity @e[type=polar_bear,scores={MobID=373..374},distance=..0.01] run tag @s add Summoned

# Summonedではないランダムなmarkerの位置で棺を召喚
    tag @e[type=marker,tag=AC.CoffinPoint,tag=!Summoned,distance=..50,sort=random,limit=1] add TargetCoffin
    data modify storage api: Argument.ID set value 374
    data modify storage api: Argument.FieldOverride.RotationX set from entity @e[type=marker,tag=TargetCoffin,distance=..50,limit=1] Rotation[0]
    execute at @e[type=marker,tag=TargetCoffin,distance=..50,limit=1] run function api:mob/summon

# Summonedを削除
    tag @e[type=marker,tag=AC.CoffinPoint,tag=Summoned,distance=..50] remove Summoned
    tag @e[type=marker,tag=TargetCoffin,distance=..50] remove TargetCoffin
