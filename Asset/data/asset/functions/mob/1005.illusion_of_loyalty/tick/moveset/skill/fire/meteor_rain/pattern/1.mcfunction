#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/pattern/1
#
# 適当な位置に降ってくる
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/

# サウンド
    execute if score @s General.Mob.Tick matches 20 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 30 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
    execute if score @s General.Mob.Tick matches 40 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
#    execute if score @s General.Mob.Tick matches 35 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
#    execute if score @s General.Mob.Tick matches 40 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
#    execute if score @s General.Mob.Tick matches 45 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
#    execute if score @s General.Mob.Tick matches 50 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
#    execute if score @s General.Mob.Tick matches 55 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
#    execute if score @s General.Mob.Tick matches 60 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1
#    execute if score @s General.Mob.Tick matches 65 at @a[distance=..100] run playsound minecraft:entity.ghast.shoot player @p ~ ~ ~ 3 1

# メテオ落下
    execute if score @s General.Mob.Tick matches 20 at @r[distance=..100] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/spread
    execute if score @s General.Mob.Tick matches 30 at @r[distance=..100] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/spread
    execute if score @s General.Mob.Tick matches 40 at @r[distance=..100] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/spread
#    execute if score @s General.Mob.Tick matches 35 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/place_marker_spread
#    execute if score @s General.Mob.Tick matches 40 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/place_marker_spread
#    execute if score @s General.Mob.Tick matches 45 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/place_marker_spread
#    execute if score @s General.Mob.Tick matches 50 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/place_marker_spread
#    execute if score @s General.Mob.Tick matches 55 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/place_marker_spread
#    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/place_marker_spread
#    execute if score @s General.Mob.Tick matches 65 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/meteor/place_marker_spread

# リセット
    execute if score @s General.Mob.Tick matches 60 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/start
