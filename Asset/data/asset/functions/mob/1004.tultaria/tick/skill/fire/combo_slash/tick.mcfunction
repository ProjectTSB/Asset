#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick
#
# アーク・オブ・サンクチュアリ模倣コンボ
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# プレイヤーをゆっくりと追いかける
#    execute if score @s RW.Tick matches ..68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/pursuit

# 移動先を決定
#    execute if score @s RW.Tick matches 0 at @r run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 狙いを定めた対象に突っ込んでくる
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/dash_start

# 移動
    execute if score @s RW.Tick matches 20..40 run tp @s ^ ^ ^1

# 眼の前に対象がいたらそこで発動
    execute if score @s RW.Tick matches 20..40 positioned ^ ^ ^4 if entity @p[distance=..2] run scoreboard players set @s RW.Tick 40

# 光の柱を設置する
    execute if score @s RW.Tick matches 30 rotated ~90 ~ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/place_light_pillar
    execute if score @s RW.Tick matches 35 rotated ~90 ~ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/place_light_pillar
    execute if score @s RW.Tick matches 40 rotated ~90 ~ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/place_light_pillar

# コンボ攻撃
    # 1
        data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.5f,-0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
        execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash
        execute if score @s RW.Tick matches 40..44 run tp @s ^ ^ ^0.8
    # 2
        data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[-0.39f,-0.58f,-0.69f,0.13f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
        execute if score @s RW.Tick matches 44 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash
        execute if score @s RW.Tick matches 44..48 run tp @s ^ ^ ^0.5
    # 3
        data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.27f,-0.65f,0.27f,0.65f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
        execute if score @s RW.Tick matches 48 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash
        execute if score @s RW.Tick matches 48..50 run tp @s ^ ^ ^0.3
        execute if score @s RW.Tick matches 50..54 run tp @s ^ ^ ^0.1

    # 剣投げ
        #execute if score @s RW.Tick matches 68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/throw_sword

# 埋まりそうになったら移動をやめる
    #execute at @s if score @s RW.Tick matches 22..32 unless block ^ ^ ^2 #lib:no_collision run scoreboard players set @s RW.Tick 32

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 90 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset
