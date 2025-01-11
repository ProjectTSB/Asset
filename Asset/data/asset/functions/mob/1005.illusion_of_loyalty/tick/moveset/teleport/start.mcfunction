#> asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/start
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/**

# タグ付与など
    function asset:mob/1005.illusion_of_loyalty/tick/moveset/reset/tags
    tag @s add RX.Move.Teleport
    scoreboard players set @s General.Mob.Tick -1
