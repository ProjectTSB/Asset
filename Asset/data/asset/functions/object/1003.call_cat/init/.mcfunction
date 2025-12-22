#> asset:object/1003.call_cat/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1003/init

# 演出
    particle minecraft:heart ~ ~ ~ 0.5 0.25 0.5 1 10
    playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1 1.25

# 種類をランダムに
    function asset:object/1003.call_cat/init/random_variant

# 使用者に懐かせる
    data modify entity @s Owner set from storage asset:context this.OwnerUUID

# 回復のクールダウンを初期化
    data modify storage asset:context this.HealInterval._ set from storage asset:context this.HealInterval.Max
