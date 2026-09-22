#> asset:mob/0464.drain_plant/tick/reset/
#
#
#
# @within function
#   asset:mob/0464.drain_plant/tick/attack/
#   asset:mob/0464.drain_plant/tick/move/

# スコア
    execute store result score @s General.Mob.Tick run random value -20..-5

# モード切替
    function asset:mob/0464.drain_plant/tick/reset/switch_mode
