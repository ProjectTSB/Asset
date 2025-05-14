#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/pattern/3
#
# 散らばって振ってくる
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick

# 拡散設置: 数が難易度で増減
    execute if score @s General.Mob.Tick matches 0 at @p[gamemode=!spectator,distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s General.Mob.Tick matches 5 at @p[gamemode=!spectator,distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if score @s General.Mob.Tick matches 10 at @p[gamemode=!spectator,distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 15 at @p[gamemode=!spectator,distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if predicate api:global_vars/difficulty/min/2_hard if score @s General.Mob.Tick matches 20 at @p[gamemode=!spectator,distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 25 at @p[gamemode=!spectator,distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 30 at @p[gamemode=!spectator,distance=..64] run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/place_marker

# リセット
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/base_move/reset
