#> asset:effect/0328.poison_of_book/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0328.poison_of_book/_/tick

# デクリメント
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick
# 1秒毎にダメージ
    execute if data storage asset:context this{Tick:0} run function asset:effect/0328.poison_of_book/tick/deal_damage
    execute if data storage asset:context this{Tick:0} run data modify storage asset:context this.Tick set value 20
