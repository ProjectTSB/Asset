#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/pattern/2
#
# 拡散
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/

# 雷攻撃
    execute if score @s General.Mob.Tick matches 0 at @p[gamemode=!spectator,distance=..100] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/thunder/place_marker
    execute if score @s General.Mob.Tick matches 0 at @p[gamemode=!spectator,distance=..100] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/random_thunder/thunder/place_marker

# リセット
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/start
