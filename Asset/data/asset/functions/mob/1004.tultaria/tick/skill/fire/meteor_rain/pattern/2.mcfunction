#> asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/pattern/2
#
# 連続で降ってくる。派手め。
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/tick


# サウンド
    execute if score @s General.Mob.Tick matches 20 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 25 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 30 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 35 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 40 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 45 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 50 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 55 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 60 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 65 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1

# メテオ落下
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 25 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 45 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 50 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 55 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread
    execute if score @s General.Mob.Tick matches 65 run function asset:mob/1004.tultaria/tick/skill/fire/meteor_rain/meteor/place_marker_spread

# デバッグ用、この行動をループする
    execute if score @s General.Mob.Tick matches 100 run scoreboard players set @s General.Mob.Tick -10

# リセット
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1004.tultaria/tick/base_move/reset
