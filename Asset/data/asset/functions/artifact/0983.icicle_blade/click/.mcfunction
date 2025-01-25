#> asset:artifact/0983.icicle_blade/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/983/click/

# 音
    playsound item.trident.throw player @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 1.3

# パーティクル
    # 疑似乱数取得
        execute store result storage asset:temp RB.Particle int 1 run random value 1..11
    # 処理を呼び出す
        function asset:artifact/0983.icicle_blade/click/vfx/.m with storage asset:temp RB

# ダメージ処理
    function asset:artifact/0983.icicle_blade/click/damage

# リセット
    data remove storage asset:temp RB
