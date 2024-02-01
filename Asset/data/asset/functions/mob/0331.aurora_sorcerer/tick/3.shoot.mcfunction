#> asset:mob/0331.aurora_sorcerer/tick/3.shoot
#
# スキル1の処理
#
# @within function asset:mob/0331.aurora_sorcerer/tick/2.tick

#> Private
# @private
    #declare tag 97.Already

# 鈍足
    effect give @s slowness 1 4 true

# 予備動作
    execute if entity @s[scores={97.Skill=1..3}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle1
    execute if entity @s[scores={97.Skill=4..6}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle2
    execute if entity @s[scores={97.Skill=7..9}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle3
    execute if entity @s[scores={97.Skill=1..9}] run playsound block.beacon.activate hostile @a ~ ~ ~ 0.7 1.9 0

# 召喚
    execute if entity @s[scores={97.Skill=10}] run data modify storage api: Argument.ID set value 332
    execute if entity @s[scores={97.Skill=10}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function api:mob/summon

# 向きを合わせる
    execute if entity @s[scores={97.Skill=10}] as @e[type=marker,tag=!97.Already,scores={MobID=332},distance=..2,limit=1] at @s facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~ ~
    execute if entity @s[scores={97.Skill=10}] run tag @e[type=marker,tag=!97.Already,scores={MobID=332},distance=..2,limit=1] add 97.Already

# リセット
    execute if entity @s[scores={97.Skill=25..}] run function asset:mob/0331.aurora_sorcerer/tick/reset