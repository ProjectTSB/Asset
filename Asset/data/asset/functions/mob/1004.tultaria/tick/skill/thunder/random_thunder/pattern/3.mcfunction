#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/3
#
# 自機狙いしつつ拡散もする最悪なやつ
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick

# プレイヤー狙い
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 7 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 9 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 11 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 13 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 15 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 17 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 19 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 21 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon
    execute if score @s General.Mob.Tick matches 23 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# プレイヤー狙いから間髪入れずに拡散サンダー
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 7 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 9 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 11 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 13 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 15 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 17 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 19 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 21 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 23 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker

# リセット
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/base_move/reset
