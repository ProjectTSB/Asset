#> asset:object/1061.azure_jelly/tick/turn/chase_player/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# プレイヤーの方を見る
    execute facing entity @p[tag=1061.Owner] eyes run tp @s ~ ~ ~ ~ ~

# プレイヤーの距離に応じて前方拡散の拡散率を変える
# 遠いほど拡散を小っちゃくする
    execute if entity @p[tag=1061.Owner,distance=..10] unless entity @p[tag=1061.Owner,distance=10..] run function asset:object/1061.azure_jelly/tick/turn/chase_player/forward_spread.m {Spread:3}
    execute if entity @p[tag=1061.Owner,distance=..20] unless entity @p[tag=1061.Owner,distance=20..] run function asset:object/1061.azure_jelly/tick/turn/chase_player/forward_spread.m {Spread:2}
    execute if entity @p[tag=1061.Owner,distance=20..] run function asset:object/1061.azure_jelly/tick/turn/chase_player/forward_spread.m {Spread:1}

# プレイヤーとの距離に応じて速度倍率を設定する
    function asset:object/1061.azure_jelly/tick/turn/set_speed_multiplier/player
