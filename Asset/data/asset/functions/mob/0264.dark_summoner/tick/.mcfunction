#> asset:mob/0264.dark_summoner/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0264.dark_summoner/_/tick

# パーティクル
    particle minecraft:falling_dust black_concrete ~ ~0.5 ~ 0.1 0 0.1 0 1

# 付近にプレイヤーがいるなら詠唱動作へ移行 Predicateなどが完成したらそれに移行したい
    execute if entity @s[tag=!7C.CastStart] positioned ^ ^ ^12.5 if entity @p[distance=..12.5] at @s run function asset:mob/0264.dark_summoner/tick/cast_start

# 一度詠唱動作に入ると離れても唱える
    execute if entity @s[tag=7C.CastStart] run function asset:mob/0264.dark_summoner/tick/casting

# 攻撃キャンセル
    execute unless entity @p[distance=..30] run function asset:mob/0264.dark_summoner/tick/cast_finish

# 首固定
    data modify entity @s Rotation[1] set value 0.0f
