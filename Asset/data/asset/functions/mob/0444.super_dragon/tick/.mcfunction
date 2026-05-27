#> asset:mob/0444.super_dragon/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/444/tick

# 跳躍20
    effect give @s jump_boost infinite 19 true

# tpbanエリアなら死ぬ
    execute if predicate lib:is_ban_tp_area run function asset:mob/0444.super_dragon/tick/tpban_area

# 天使が近くにいたら死ぬ
    execute if entity @e[type=#lib:living,tag=Enemy.Boss,distance=..32,limit=1] run function asset:mob/0444.super_dragon/tick/near_angel
