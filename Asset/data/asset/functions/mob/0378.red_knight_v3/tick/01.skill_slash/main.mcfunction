#> asset:mob/0378.red_knight_v3/tick/01.skill_slash/main
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/skill_active

# アニメーション変える
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function asset:mob/0378.red_knight_v3/tick/common/reset_animation
    execute if score @s AI.Tick matches 0 as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_melee_1/play

# プレイヤーみる
    execute if score @s AI.Tick matches 0 facing entity @p[gamemode=!spectator] feet run function asset:mob/0378.red_knight_v3/tick/common/tp

# 斬撃
    execute if score @s AI.Tick matches 10 positioned ^ ^ ^2 run function asset:mob/0378.red_knight_v3/tick/common/slash
    execute if score @s AI.Tick matches 10 run data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[0.123f,-0.696f,0.123f,0.696f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s AI.Tick matches 10 at @s positioned ^ ^ ^2 positioned ~ ~1 ~ run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon


    execute if score @s AI.Tick matches 18 positioned ^ ^ ^2 run function asset:mob/0378.red_knight_v3/tick/common/slash
    execute if score @s AI.Tick matches 18 run data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[0.579f,0.406f,0.579f,-0.406f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

    execute if score @s AI.Tick matches 18 at @s positioned ^ ^ ^2 positioned ~ ~1 ~ run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon


    execute if score @s AI.Tick matches 28 positioned ^ ^ ^2 run function asset:mob/0378.red_knight_v3/tick/common/slash
    execute if score @s AI.Tick matches 28 run data modify storage api: Argument.FieldOverride set value {Color:8388608,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s AI.Tick matches 28 at @s positioned ^ ^ ^2 positioned ~ ~1 ~ run function asset:mob/0378.red_knight_v3/tick/common/slash_obj_summon

# 低HP状態で斬撃飛ぶ
    execute if score @s AI.Tick matches 28 if entity @s[tag=AI.HPless50per] rotated ~ 0 positioned ^ ^ ^3 run function asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave
    execute if score @s AI.Tick matches 29 if entity @s[tag=AI.HPless50per] rotated ~ 0 positioned ^ ^ ^6 run function asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave
    execute if score @s AI.Tick matches 30 if entity @s[tag=AI.HPless50per] rotated ~ 0 positioned ^ ^ ^9 run function asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave
    execute if score @s AI.Tick matches 31 if entity @s[tag=AI.HPless50per] rotated ~ 0 positioned ^ ^ ^12 run function asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave
    execute if score @s AI.Tick matches 32 if entity @s[tag=AI.HPless50per] rotated ~ 0 positioned ^ ^ ^15 run function asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave
    execute if score @s AI.Tick matches 33 if entity @s[tag=AI.HPless50per] rotated ~ 0 positioned ^ ^ ^18 run function asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave
    execute if score @s AI.Tick matches 34 if entity @s[tag=AI.HPless50per] rotated ~ 0 positioned ^ ^ ^21 run function asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave

# リセット
    execute if score @s AI.Tick matches 34 run function asset:mob/0378.red_knight_v3/tick/skill_reset
