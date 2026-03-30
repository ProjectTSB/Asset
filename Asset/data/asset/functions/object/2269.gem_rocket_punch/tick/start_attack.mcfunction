#> asset:object/2269.gem_rocket_punch/tick/start_attack
#
# Objectのtick時の処理
#
# @within asset:object/2269.gem_rocket_punch/tick/event_wait

# Tick設定
    scoreboard players set @s General.Object.Tick 190

# タグ付与
    tag @s add 2269.Attack
