#> asset:mob/0301.karmic/tick/skill_reset
#
#
#
# @within function asset:mob/0301.karmic/tick/**/**

# CDいれる
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s General.Mob.Tick -30
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set @s General.Mob.Tick -40
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s General.Mob.Tick -55
# ノーマル以上で低HPだと、加速する
    execute if entity @s[tag=8D.HPless50per] if predicate api:global_vars/difficulty/min/normal run scoreboard players add @s General.Mob.Tick 10

# アニメーション戻す
    execute as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/wait/play

# リセット処理
    tag @s remove 8D.SkillDash
    tag @s remove 8D.SkillSlash
    tag @s remove 8D.SkillGun
    tag @s remove 8D.SkillGunLoop
    tag @s remove 8D.SkillGunEnd
    tag @s remove 8D.SkillSwordCange
    tag @s remove 8D.SkillDash1
    tag @s remove 8D.SkillDash2
    tag @s remove 8D.SkillDash3
    tag @s remove 8D.SkillSword1
    tag @s remove 8D.SkillSword2
    tag @s remove 8D.SkillSword3
    tag @s remove 8D.Opening
    tag @s remove 8D.Fall
    tag @s remove 8D.SkipSkillSelect

# 地面に着いていない時、落下スキルを発動
    execute if block ~ ~-0.5 ~ #lib:no_collision run scoreboard players set @s General.Mob.Tick 0
    execute if block ~ ~-0.5 ~ #lib:no_collision run tag @s add 8D.Fall
