#> asset:mob/0376.convict_v2/tick/07.skill_axe7/main_hard
#
#
#
# @within function asset:mob/0376.convict_v2/tick/skill_active

#> private
# @private
    #declare score_holder $2tInterval

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/wait/stop
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=AG.AJ,tag=AG.AJLink,sort=nearest,limit=1] run function animated_java:convict/animations/attack7_hard/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 facing entity @p eyes rotated ~ 0 run function asset:mob/0376.convict_v2/tick/common/tp

    execute if score @s General.Mob.Tick matches 9 run playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 2
    execute if score @s General.Mob.Tick matches 9 run playsound item.trident.riptide_1 hostile @a ~ ~ ~ 1 0

    execute if score @s General.Mob.Tick matches 9..48 run function asset:mob/0376.convict_v2/tick/common/particle/particle_6
    execute if score @s General.Mob.Tick matches 39..48 positioned ~ ~1 ~ run function asset:mob/0376.convict_v2/tick/common/particle/particle_5

    execute if score @s General.Mob.Tick matches 40 positioned ~ ~1 ~ rotated ~ ~ positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 41 positioned ~ ~1 ~ rotated ~90 ~ positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 42 positioned ~ ~1 ~ rotated ~180 ~ positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3
    execute if score @s General.Mob.Tick matches 43 positioned ~ ~1 ~ rotated ~270 ~ positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/common/particle/particle_3

# 2tickおきにダメージ実行
# 実行時間を移す
    scoreboard players operation $2tInterval Temporary = @s General.Mob.Tick
# 2tickおきに実行
    scoreboard players operation $2tInterval Temporary %= $2 Const
# 斬る
    execute if score $2tInterval Temporary matches 0 if score @s General.Mob.Tick matches 39..48 run function asset:mob/0376.convict_v2/tick/07.skill_axe7/damage
# リセット
    scoreboard players reset $2tInterval



    execute if score @s General.Mob.Tick matches 77 positioned ^ ^ ^3 run function asset:mob/0376.convict_v2/tick/07.skill_axe7/hard_explode

    execute if score @s General.Mob.Tick matches 79 positioned ^ ^ ^9 run function asset:mob/0376.convict_v2/tick/07.skill_axe7/hard_explode

    execute if score @s General.Mob.Tick matches 81 positioned ^ ^ ^12 run function asset:mob/0376.convict_v2/tick/07.skill_axe7/hard_explode

    execute if score @s General.Mob.Tick matches 107 run function asset:mob/0376.convict_v2/tick/skill_reset
