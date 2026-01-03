#> asset:object/0005.abstract_gravity_projectile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/5/tick

# 自身が何にも乗っていなければ、hitメソッドを発動する
    execute unless predicate lib:is_vehicle at @s run function asset:object/call.m {method:hit}

# 存在時間のデクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick 1

# 存在時間が0かつまだ生存しているならrange_overメソッドを発動
    execute if data storage asset:context this{Tick:0} if score @s ObjectID matches -2147483648..2147483647 at @s run function asset:object/call.m {method:"range_over"}
