#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/1
#
# 複数個同時設置
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick

# 一個はプレイヤーに仕掛けておく
    execute if score @s General.Mob.Tick matches 5 at @a[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# 拡散設置
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker

# リセット
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/base_move/reset
