#> asset:mob/0123.lexiel_v3/tick/02.skill_sword2/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション開始
    execute if score @s 3F.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/attack2/play

# フィールド設定
    execute if score @s 3F.Tick matches 7 run data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[10f,10f,0.1f],Transformation:{left_rotation:[-0.39f,-0.58f,-0.69f,0.13f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute if score @s 3F.Tick matches 7 run function asset:mob/0123.lexiel_v3/tick/common/slash3

    execute if score @s 3F.Tick matches 16 run say slash1
