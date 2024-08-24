#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick
#
# アーク・オブ・サンクチュアリ模倣コンボ
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# プレイヤーをゆっくりと追いかける
    execute if score @s RW.Tick matches ..68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/pursuit

# コンボ攻撃
# TODO: そのうちマクロとか使ったもっと素敵な斬撃エンティティを作ってそちらに変えるので仮置き
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/placeholder_slash
    execute if score @s RW.Tick matches 48 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/placeholder_slash
    execute if score @s RW.Tick matches 56 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/placeholder_slash
    execute if score @s RW.Tick matches 58 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/placeholder_slash
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/placeholder_slash
    execute if score @s RW.Tick matches 68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/placeholder_slash
# 剣投げ
    execute if score @s RW.Tick matches 68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/throw_sword

# 埋まりそうになったら移動をやめる
    #execute at @s if score @s RW.Tick matches 22..32 unless block ^ ^ ^2 #lib:no_collision run scoreboard players set @s RW.Tick 32

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 90 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset