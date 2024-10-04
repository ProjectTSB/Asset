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
    execute if score @s RW.Tick matches 20..40 positioned ^ ^ ^2 if entity @p[distance=..2] run scoreboard players set @s RW.Tick 60

# コンボ攻撃
    # 1
        data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.5f,-0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
        execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash
    # 2
        data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[-0.39f,-0.58f,-0.69f,0.13f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
        execute if score @s RW.Tick matches 64 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash
    # 3
        data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[5f,5f,0.1f],Transformation:{left_rotation:[0.27f,-0.65f,0.27f,0.65f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
        execute if score @s RW.Tick matches 68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash

    # 剣投げ
        #execute if score @s RW.Tick matches 68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/throw_sword

# 埋まりそうになったら移動をやめる
    #execute at @s if score @s RW.Tick matches 22..32 unless block ^ ^ ^2 #lib:no_collision run scoreboard players set @s RW.Tick 32

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 90 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset
