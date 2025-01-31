#> asset:mob/0376.convict_v2/tick/07.skill_axe7/main
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

#> private
# @private
    #declare score_holder $2tInterval

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack7/play

    execute if score @s General.Mob.Tick matches 9 run playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 2
    execute if score @s General.Mob.Tick matches 9 run playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 0

# 警告
    execute if score @s General.Mob.Tick matches 9 run function asset:mob/0376.convict_v2/tick/07.skill_axe7/alert

    execute if score @s General.Mob.Tick matches 39..48 positioned ~ ~1 ~ rotated ~ 0 run function asset:mob/0376.convict_v2/tick/common/particle/particle_5
    execute if score @s General.Mob.Tick matches 40 positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 41 positioned ~ ~1 ~ rotated ~90 0 positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 42 positioned ~ ~1 ~ rotated ~180 0 positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 43 positioned ~ ~1 ~ rotated ~270 0 positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3

# 2tickおきにダメージ実行
# 実行時間を移す
    scoreboard players operation $2tInterval Temporary = @s General.Mob.Tick
# 2tickおきに実行
    scoreboard players operation $2tInterval Temporary %= $2 Const
# 斬る
    execute if score $2tInterval Temporary matches 0 if score @s General.Mob.Tick matches 39..48 run function asset:mob/0376.convict_v2/tick/07.skill_axe7/damage
# リセット
    scoreboard players reset $2tInterval

# 終わる
    execute if score @s General.Mob.Tick matches 66 run function asset:mob/0376.convict_v2/tick/skill_reset
