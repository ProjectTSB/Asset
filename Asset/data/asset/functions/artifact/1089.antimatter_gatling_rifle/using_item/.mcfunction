#> asset:artifact/1089.antimatter_gatling_rifle/using_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1089/using_item/

# ここから先は神器側の効果の処理を書く

# 撃っている間うごけない
    effect give @s slowness 1 2 true

# 演出
    playsound tsb_sounds:phalanx_shot player @a ~ ~ ~ 0.05 1
    playsound tsb_sounds:phalanx_shot player @a ~ ~ ~ 0.05 2
    execute anchored eyes positioned ^-0.35 ^-0.15 ^0.2 run particle minecraft:white_smoke ~ ~ ~ ^-100000000 ^100000000 ^ 0.000000001 0
    execute anchored eyes positioned ^-0.35 ^-0.15 ^1 if predicate lib:random_pass_per/10 run particle minecraft:flash ~ ~ ~ 0 0 0 0 0
    execute anchored eyes positioned ^-0.35 ^-0.15 ^1 if predicate lib:random_pass_per/10 run particle minecraft:lava ~ ~ ~ 0 0 0 0 0
    execute anchored eyes positioned ^-0.35 ^-0.15 ^1 if predicate lib:random_pass_per/50 run particle minecraft:flame ~ ~ ~ 0 0 0 0 0

# 発砲
    function asset:artifact/1089.antimatter_gatling_rifle/using_item/shot
    function asset:artifact/1089.antimatter_gatling_rifle/using_item/shot

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $3 Const
# 向きを適当に変える
    execute if score $Random Temporary matches 0 unless predicate lib:is_sneaking run tp @s ~ ~ ~ ~ ~-1
    execute if score $Random Temporary matches 1 unless predicate lib:is_sneaking run tp @s ~ ~ ~ ~-2 ~-1
    execute if score $Random Temporary matches 2 unless predicate lib:is_sneaking run tp @s ~ ~ ~ ~2 ~-1
# スニークしてる場合
    execute if score $Random Temporary matches 0 if predicate lib:is_sneaking run tp @s ~ ~ ~ ~ ~-0.4
    execute if score $Random Temporary matches 1 if predicate lib:is_sneaking run tp @s ~ ~ ~ ~-0.4 ~-0.4
    execute if score $Random Temporary matches 2 if predicate lib:is_sneaking run tp @s ~ ~ ~ ~0.4 ~-0.4
    scoreboard players reset $Random Temporary

# リセット
    scoreboard players reset $Random Temporary
