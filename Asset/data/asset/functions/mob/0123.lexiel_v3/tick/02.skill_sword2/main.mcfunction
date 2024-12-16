#> asset:mob/0123.lexiel_v3/tick/02.skill_sword2/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# ３回くらいTPする
    execute if score @s General.Mob.Tick matches 0 at @p[gamemode=!spectator,distance=..100] rotated ~ 0 positioned ^ ^ ^5 run function asset:mob/0123.lexiel_v3/tick/common/spread_tp
    execute if score @s General.Mob.Tick matches 0 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s General.Mob.Tick matches 7 at @p[gamemode=!spectator,distance=..100] rotated ~ 0 positioned ^ ^ ^2 run function asset:mob/0123.lexiel_v3/tick/common/spread_tp
    execute if score @s General.Mob.Tick matches 7 at @s facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0123.lexiel_v3/tick/common/tp
# アニメーション開始
    execute if score @s General.Mob.Tick matches 15 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/attack2/play
# フィールド設定
    execute if score @s General.Mob.Tick matches 22 run data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[0.704f, -0.062f, 0.062f, 0.704f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s General.Mob.Tick matches 22 run function asset:mob/0123.lexiel_v3/tick/common/slash3

    execute if score @s General.Mob.Tick matches 32 run data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation: [0.183f, 0.683f, 0.683f, -0.183f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s General.Mob.Tick matches 32 run function asset:mob/0123.lexiel_v3/tick/common/slash3

# リセット
    execute if score @s General.Mob.Tick matches 51 run function asset:mob/0123.lexiel_v3/tick/skill_reset
