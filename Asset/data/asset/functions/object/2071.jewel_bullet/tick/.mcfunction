#> asset:object/2071.jewel_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2071/tick

# 演出
    playsound minecraft:block.amethyst_cluster.step hostile @a ~ ~ ~ 0.4 1 0

# スーパーメソッド呼び出し
    function asset:object/super.tick
