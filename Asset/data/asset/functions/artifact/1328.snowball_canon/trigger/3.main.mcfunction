#> asset:artifact/1328.snowball_canon/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1328.snowball_canon/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 仕様書: チャージ1tickにつき弾数+1
# 初期装填数がBullet、チャージ1回での追加装填数がAddBullet、最大装填数がMaxBullet
# フルチャージか否かで弾速と拡散が変わる
# 当然弾速が早い方が強いし、拡散は小さい方が良い

# 調整用数値
    # ダメージ
        data modify storage api: Argument.FieldOverride.Damage set value 30
    # 初期弾数
        data modify storage api: Argument.FieldOverride.Bullet set value 1
    # チャージ1tickにつき何発追加するか？
        data modify storage api: Argument.FieldOverride.AddBullet set value 1
    # 最大装填数
        data modify storage api: Argument.FieldOverride.MaxBullet set value 60
    # 雪玉の拡散
        data modify storage api: Argument.FieldOverride.Spread set value {Neutral:1d,FullCharge:0.5d}
        data modify storage api: Argument.FieldOverride.Distance set value {Neutral:2d,FullCharge:4d}
    # 弾速
        data modify storage api: Argument.FieldOverride.Motion set value {Neutral:1d,FullCharge:1.35d}

# チャージ用Effect付与
    data modify storage api: Argument.ID set value 347
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
