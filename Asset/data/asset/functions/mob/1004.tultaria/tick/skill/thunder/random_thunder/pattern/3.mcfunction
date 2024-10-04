#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/3
#
# 自機狙いしつつ拡散もする最悪なやつ
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick

# プレイヤー狙い
    execute if score @s RW.Tick matches 20 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 22 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 24 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 26 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 28 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 30 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 32 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 34 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 36 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s RW.Tick matches 38 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# プレイヤー狙いから間髪入れずに拡散サンダー
    execute if score @s RW.Tick matches 20 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 22 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 24 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 26 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 28 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 30 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 32 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 34 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 36 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 38 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 80 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 80 run function asset:mob/1004.tultaria/tick/base_move/reset
