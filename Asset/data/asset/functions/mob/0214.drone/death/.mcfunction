#> asset:mob/0214.drone/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/214/death

# 周囲の敵と対空砲にダメージ
# particle
    execute unless entity @s[tag=5Y.Suicide] run function asset:mob/0214.drone/damage

# 上に乗ってるモデル削除(死亡時にすぐにモデルに消えてほしいためここで削除)
    execute on passengers run kill @s

# エンジン音停止
    stopsound @a[distance=..128] hostile minecraft:entity.bee.loop
