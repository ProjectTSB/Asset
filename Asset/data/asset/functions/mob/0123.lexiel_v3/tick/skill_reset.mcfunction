#> asset:mob/0123.lexiel_v3/tick/skill_reset
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/**/**

# CDいれる
    scoreboard players set @s 3F.Tick -30

# ハード限定の行動。スキル2の特殊行動
    execute if predicate api:global_vars/difficulty/hard if predicate lib:random_pass_per/30 if entity @s[tag=3F.SkillSword2] run function asset:mob/0123.lexiel_v3/tick/hard_skill_fast_recast
# アニメーション戻す
    execute as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/neutral/play

# リセット処理
    tag @s remove 3F.SkillSword1
    tag @s remove 3F.SkillSword2
    tag @s remove 3F.SkillSword3
    tag @s remove 3F.SkillMagic1
    tag @s remove 3F.SkillMagic2
    tag @s remove 3F.SkillMagic3
