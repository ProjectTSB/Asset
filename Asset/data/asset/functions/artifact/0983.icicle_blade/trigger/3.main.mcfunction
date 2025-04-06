#> asset:artifact/0983.icicle_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0983.icicle_blade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 音
    playsound item.trident.throw player @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 1.3

# パーティクル
    # 疑似乱数取得
        execute store result storage asset:temp RB.Particle int 1 run random value 1..11
    # 処理を呼び出す
        function asset:artifact/0983.icicle_blade/trigger/vfx/.m with storage asset:temp RB

# ダメージ処理
    function asset:artifact/0983.icicle_blade/trigger/damage

# リセット
    data remove storage asset:temp RB
