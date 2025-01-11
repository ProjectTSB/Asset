#> asset:trader/7/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded 23 15 -29 run return 1

# ID (int)
    data modify storage asset:trader ID set value 7
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [23,15,-29]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"両替商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 羊毛を通貨に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:white_wool",Count:32b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}

# 取引 下位通貨を上位通貨に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/high",Count:1b}

# 取引 上位通貨を下位通貨に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:16b}
