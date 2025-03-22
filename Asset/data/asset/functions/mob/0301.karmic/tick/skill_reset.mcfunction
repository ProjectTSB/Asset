#> asset:mob/0301.karmic/tick/skill_reset
#
#
#
# @within function asset:mob/0301.karmic/tick/**/**

#> private
# @private
    #declare score_holder $Count

# CDいれる
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s General.Mob.Tick -30
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set @s General.Mob.Tick -40
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s General.Mob.Tick -55

# プレイヤー人数で加速する。4人まで考慮する
    execute store result score $Count Temporary if entity @a
    #scoreboard players set $Count Temporary 4
    execute if score $Count Temporary matches 2 run scoreboard players add @s General.Mob.Tick 5
    execute if score $Count Temporary matches 3 run scoreboard players add @s General.Mob.Tick 7
    execute if score $Count Temporary matches 4.. run scoreboard players add @s General.Mob.Tick 15
    scoreboard players reset $Count Temporary

# アニメーション戻す
    execute as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/wait/play

# テレポートするべきならする
    function asset:mob/0301.karmic/tick/common/teleport_check/main

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
