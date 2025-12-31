#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/pattern/4
#
# 拡散を繰り返す最悪なやつその２
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick

# プレイヤー狙い
    execute if score @s General.Mob.Tick matches 5 at @a[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# プレイヤー狙いから間髪入れずに拡散サンダー
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 5 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker

# プレイヤー狙い
    execute if score @s General.Mob.Tick matches 15 at @a[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# プレイヤー狙いから間髪入れずに拡散サンダー
    execute if score @s General.Mob.Tick matches 15 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 15 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 15 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 15 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 15 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker

# プレイヤー狙い
    execute if score @s General.Mob.Tick matches 25 at @a[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/summon

# プレイヤー狙いから間髪入れずに拡散サンダー
    execute if score @s General.Mob.Tick matches 25 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 25 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 25 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 25 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 25 at @r[gamemode=!spectator,distance=..128] run function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/thunder/place_marker

# デバッグ用、この行動をループする
#    execute if score @s General.Mob.Tick matches 80 run scoreboard players set @s General.Mob.Tick -10

# リセット
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/base_move/reset
