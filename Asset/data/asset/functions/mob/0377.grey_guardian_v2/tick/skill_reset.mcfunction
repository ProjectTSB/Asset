#> asset:mob/0377.grey_guardian_v2/tick/skill_reset
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/**/**

# CDいれる
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s AH.Tick -20
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set @s AH.Tick -30
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s AH.Tick -45

# アニメーション戻す
    #execute as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/neutral/play

# リセット処理
    tag @s remove AH.Skill01
    tag @s remove AH.Skill02
    tag @s remove AH.Skill03
    tag @s remove AH.Skill04
    tag @s remove AH.Skill05

    tag @s remove AH.Opening
