#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/2
#
# 連続で落ちてくるが
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick

# 一個はプレイヤーに仕掛けておく
    execute if score @s General.Mob.Tick matches 5 at @a[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# 設置
    execute if score @s General.Mob.Tick matches 10 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 15 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 20 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 25 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker

# デバッグ用、この行動をループする
#    execute if score @s General.Mob.Tick matches 60 run scoreboard players set @s General.Mob.Tick -10

# リセット
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/base_move/reset
