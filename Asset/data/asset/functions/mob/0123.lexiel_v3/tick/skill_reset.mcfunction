#> asset:mob/0123.lexiel_v3/tick/skill_reset
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/**/**

    execute as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/attack1/stop
# CDいれる
    scoreboard players set @s 3F.Tick -30

# アニメーション戻す
    execute as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/neutral/play

# リセット処理
    tag @s remove 3F.SkillSword1
    tag @s remove 3F.SkillSword2
    tag @s remove 3F.SkillSword3
    tag @s remove 3F.SkillMagic1
    tag @s remove 3F.SkillMagic2
    tag @s remove 3F.SkillMagic3
