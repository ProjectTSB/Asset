#> asset:artifact/0983.icicle_blade/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/983/click/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 音
    playsound item.trident.throw player @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 2
    playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1 1.3

# パーティクル
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
        scoreboard players operation $Random Temporary %= $11 Const
        execute store result storage asset:temp RB.Particle int 1 run scoreboard players add $Random Temporary 1
    # 処理を呼び出す
        function asset:artifact/0983.icicle_blade/click/vfx/.m with storage asset:temp RB

# ダメージ処理
    function asset:artifact/0983.icicle_blade/click/damage

# リセット
    scoreboard players reset $Random Temporary
    data remove storage asset:temp RB
