#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/1
#
# 複数が同時に落ちてくる
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/tick

# メテオ落下1
    # サウンド
        execute if score @s General.Mob.Tick matches 20 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    # 拡散設置
        execute if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
        execute if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
        execute if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
        execute if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    # プレイヤー狙い
        execute if score @s General.Mob.Tick matches 20 at @r[distance=..100] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_aiming

# メテオ落下2
    # サウンド
        execute if score @s General.Mob.Tick matches 40 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    # 拡散設置
        execute if score @s General.Mob.Tick matches 40 at @r[distance=..100] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
        execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
        execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
        execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    # プレイヤー狙い
        execute if score @s General.Mob.Tick matches 20 at @r[distance=..100] run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_aiming

# デバッグ用、この行動をループする
    execute if score @s General.Mob.Tick matches 100 run scoreboard players set @s General.Mob.Tick -10

# リセット
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1004.tultaria/tick/base_move/reset
