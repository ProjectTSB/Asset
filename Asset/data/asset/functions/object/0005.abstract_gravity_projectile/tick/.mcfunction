#> asset:object/0005.abstract_gravity_projectile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/5/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 自身が何にも乗っていなければ、hitメソッドを発動する
    execute unless predicate lib:is_vehicle at @s run function asset:object/call.m {method:hit}

# フェイルセーフ
    execute if score @s General.Object.Tick matches 200.. run function asset:object/call.m {method:hit}
