#> asset:object/1061.azure_jelly/tick/turn/chase_player/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# プレイヤーの近くのランダムな位置へ向かう
    execute at @p[tag=1061.Owner] run function asset:object/1061.azure_jelly/tick/turn/chase_player/spread

# プレイヤーとの距離に応じて速度倍率を設定する
    function asset:object/1061.azure_jelly/tick/turn/set_speed_multiplier/player
