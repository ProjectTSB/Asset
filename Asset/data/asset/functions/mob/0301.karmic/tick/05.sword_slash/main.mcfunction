#> asset:mob/0301.karmic/tick/05.sword_slash/main
#
#
#
# @within function asset:mob/0301.karmic/tick/skill_active

# モーション停止
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function asset:mob/0301.karmic/tick/common/reset_animation
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=8D.AJ,tag=8D.AJLink,sort=nearest,limit=1] run function animated_java:karmic/animations/sword_attack1/play

# プレイヤーを見る
    execute if score @s General.Mob.Tick matches 0 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/tp
    execute if score @s General.Mob.Tick matches 0 at @s positioned ~ ~0.1 ~ run function asset:mob/0301.karmic/tick/05.sword_slash/alart

# 攻撃
    execute if score @s General.Mob.Tick matches 19 run data modify storage api: Argument.FieldOverride set value {Color:16720932,Frames:[20335,20336,20337],Scale:[17f,17f,0.1f],Transformation:{left_rotation:[0.696f,0.123f,0.123f,0.696f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s General.Mob.Tick matches 19 positioned ^ ^ ^2 positioned ~ ~1 ~ rotated ~ 0 run function asset:mob/0301.karmic/tick/common/slash_obj_summon
    execute if score @s General.Mob.Tick matches 19 run function asset:mob/0301.karmic/tick/05.sword_slash/slash

    execute if score @s General.Mob.Tick matches 28 run data modify storage api: Argument.FieldOverride set value {Color:16720932,Frames:[20335,20336,20337],Scale:[17f,17f,0.1f],Transformation:{left_rotation:[-0.561f,-0.43f,0.031f,0.706f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s General.Mob.Tick matches 28 positioned ^ ^ ^2 positioned ~ ~1 ~ rotated ~ 0 run function asset:mob/0301.karmic/tick/common/slash_obj_summon
    execute if score @s General.Mob.Tick matches 28 run function asset:mob/0301.karmic/tick/05.sword_slash/slash


# 終わり
    execute if score @s General.Mob.Tick matches 42 run function asset:mob/0301.karmic/tick/05.sword_slash/end
