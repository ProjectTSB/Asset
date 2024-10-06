#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/1
#
# 複数個同時設置
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick

# 一個はプレイヤーに仕掛けておく
    execute if score @s RW.Tick matches 20 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# 拡散設置
    execute if score @s RW.Tick matches 20 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 20 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 20 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s RW.Tick matches 20 at @a run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 60 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/base_move/reset
