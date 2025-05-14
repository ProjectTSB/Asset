#> asset:mob/0301.karmic/tick/06.sword_tackle/end
#
#
#
# @within function asset:mob/0301.karmic/tick/06.sword_tackle/main


# アニメーション戻す
    execute as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/sword_wait/play

# 前のタグ消す
    tag @s remove 8D.SkillSword2

# 次のタグいれる
    tag @s add 8D.SkillSword3

# スキップタグ付与(ついてるからいらない)
    #tag @s add 8D.SkipSkillSelect

# テレポートするべきならする
    function asset:mob/0301.karmic/tick/common/teleport_check/main

# CDいれる
    execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players set @s General.Mob.Tick -30
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set @s General.Mob.Tick -40
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s General.Mob.Tick -55
