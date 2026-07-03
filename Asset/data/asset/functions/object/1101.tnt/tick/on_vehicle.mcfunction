#> asset:object/1101.tnt/tick/on_vehicle
#
#
#
# @within function asset:object/1101.tnt/tick/

#> Private
# @private
    #declare tag 1101.IsNearMob

# 近くにMobがいれば、Motionをリセットして自身にTagを付与
    execute if entity @s[tag=!1101.IsNearMob] if entity @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2,limit=1] run data modify entity @s Motion set value [0f,0f,0f]
    execute if entity @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2,limit=1] run tag @s add 1101.IsNearMob

# Tagがある状態で近くに敵がいなければTagを削除
    execute if entity @s[tag=1101.IsNearMob] unless entity @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2,limit=1] run tag @s remove 1101.IsNearMob

# Tagがあれば敵にtpし続ける
    execute if entity @s[tag=1101.IsNearMob] run tp @s @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..2,sort=nearest,limit=1]
