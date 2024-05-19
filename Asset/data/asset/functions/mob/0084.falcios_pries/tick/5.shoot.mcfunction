#> asset:mob/0084.falcios_priest/tick/5.shoot
#
# 発射スキル
#
# @within function asset:mob/0084.falcios_priest/tick/2.tick

#> Private
# @private
    #declare tag 2C.Already

# 予備動作
    execute if entity @s[scores={97.Skill=1..3}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle1
    execute if entity @s[scores={97.Skill=4..6}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle2
    execute if entity @s[scores={97.Skill=7..9}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle3
    execute if entity @s[scores={97.Skill=1..9}] run playsound block.beacon.activate hostile @a ~ ~ ~ 0.7 1.9 0

# 召喚
    execute if entity @s[scores={97.Skill=10}] run data modify storage api: Argument.ID set value 332
    execute if entity @s[scores={97.Skill=10}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function api:mob/summon

# リセット
    execute if entity @s[scores={97.Skill=25..}] run function asset:mob/0331.aurora_sorcerer/tick/reset

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1.3 0

# 召喚
    data modify storage api: Argument.ID set value 85
    function api:mob/summon
    tp @e[type=marker,tag=!2C.Already,scores={MobID=85},distance=..0.01,limit=1] ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..50] eyes
    tag @e[type=marker,scores={MobID=85},distance=..0.01,limit=1] add 2C.Already
