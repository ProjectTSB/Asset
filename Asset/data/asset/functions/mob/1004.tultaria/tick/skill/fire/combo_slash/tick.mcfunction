#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick
#
# アーク・オブ・サンクチュアリ模倣コンボ
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# プレイヤーをゆっくりと追いかける
    execute if score @s RW.Tick matches ..68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/pursuit

# コンボ攻撃
    #
        data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[3f,3f,0.1f],Transformation:{left_rotation:[0.5f,-0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
        execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash
    #
        data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[3f,3f,0.1f],Transformation:{left_rotation:[-0.39f,-0.58f,-0.69f,0.13f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
        execute if score @s RW.Tick matches 48 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/summon_slash

    # 剣投げ
        #execute if score @s RW.Tick matches 68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/throw_sword

# 埋まりそうになったら移動をやめる
    #execute at @s if score @s RW.Tick matches 22..32 unless block ^ ^ ^2 #lib:no_collision run scoreboard players set @s RW.Tick 32

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 90 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset
