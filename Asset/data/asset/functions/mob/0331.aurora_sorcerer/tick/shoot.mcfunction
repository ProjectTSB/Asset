#> asset:mob/0331.aurora_sorcerer/tick/shoot
#
# オーロラ弾発射時の処理
#
# @within function asset:mob/0331.aurora_sorcerer/tick/

# 鈍足
    effect give @s slowness 1 4 true

# 予備動作
    execute if entity @s[scores={97.Skill=1..3}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle1
    execute if entity @s[scores={97.Skill=4..6}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle2
    execute if entity @s[scores={97.Skill=7..9}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0331.aurora_sorcerer/tick/vfx/circle3
    execute if entity @s[scores={97.Skill=1..9}] run playsound block.beacon.activate hostile @a ~ ~ ~ 0.7 1.9 0

# 召喚
    execute if entity @s[scores={97.Skill=10}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 summon marker run function asset:mob/0331.aurora_sorcerer/tick/summon

# リセット
    execute if entity @s[scores={97.Skill=25..}] run function asset:mob/0331.aurora_sorcerer/tick/reset
