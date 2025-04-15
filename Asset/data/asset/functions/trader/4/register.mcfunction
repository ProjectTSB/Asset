#> asset:trader/4/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded -36 21 -29 run return 1

# ID (int)
    data modify storage asset:trader ID set value 4
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [-36,21,-29]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"シャード商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -90f

# 取引 シャードLv1
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-1",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 5

# 取引 シャードLv2
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-2",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 29

# 取引 シャードLv3
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-3",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 54

# 取引 シャードLv4
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/lv-4",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 80
