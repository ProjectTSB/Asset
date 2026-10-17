#> asset:artifact/0921.celestial_star/trigger/place/
#
# 実行位置に星を設置する
# 中央の球が地面に埋まらないよう、1m上が空いていればそこを星の位置にする
#
# @within function asset:artifact/0921.celestial_star/trigger/place/raycast

    execute if block ~ ~1 ~ #lib:no_collision/ positioned ~ ~1 ~ run return run function asset:artifact/0921.celestial_star/trigger/place/at
    function asset:artifact/0921.celestial_star/trigger/place/at
