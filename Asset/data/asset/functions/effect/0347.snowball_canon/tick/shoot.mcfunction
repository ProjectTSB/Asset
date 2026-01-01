#> asset:effect/0347.snowball_canon/tick/shoot
#
#
#
# @within function asset:effect/0347.snowball_canon/tick/

# 弾数のデクリメント
    execute store result storage asset:context this.Bullet int 0.9999999999 run data get storage asset:context this.Bullet

# 射撃中の判定を設定
    data modify storage asset:context this.IsShooting set value true

# 弾数が0でなければDurationを少し戻す
# フルチャージか否かで間隔が変わる
    execute unless data storage asset:context this{Bullet:0} if data storage asset:context this{IsFullCharge:false} run data modify storage asset:context Duration set value 3
    execute unless data storage asset:context this{Bullet:0} if data storage asset:context this{IsFullCharge: true} run data modify storage asset:context Duration set value 2

# 演出
    particle item_snowball ^ ^-0.2 ^ 0 0 0 0.5 1 normal @a
    playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 0.6 0.65

# 発射
    function asset:effect/0347.snowball_canon/tick/fire
