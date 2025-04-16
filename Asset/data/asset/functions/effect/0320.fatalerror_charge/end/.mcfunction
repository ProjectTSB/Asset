#> asset:effect/0320.fatalerror_charge/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0320.fatalerror_charge/_/end


# スタックが1なら通常ショット
    execute if data storage asset:context {Stack:1} anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run function asset:effect/0320.fatalerror_charge/end/shot/shot

# スタックが2ならチャージショット
    execute if data storage asset:context {Stack:2} anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run function asset:effect/0320.fatalerror_charge/end/charge_shot/shot

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
    tag @s[tag=Landing] remove Landing
    tag @e[type=#lib:living,tag=Target,distance=..40] remove Target
