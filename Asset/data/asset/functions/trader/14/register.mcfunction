#> asset:trader/4/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded -36 21 -30 run return 1

# ID (int)
    data modify storage asset:trader ID set value 14
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [-36,21,-30]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"カラーシャード商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -90f

# 取引 レッドシャードLv1
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-1",Count:1b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/red/lv-1",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 5

# 取引 ブルーシャードLv1
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-1",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/blue/lv-1",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 5

# 取引 グリーンシャードLv1
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-1",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/green/lv-1",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 5

# 取引 レッドシャードLv2
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-2",Count:1b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/red/lv-2",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 29

# 取引 ブルーシャードLv2
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-2",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/blue/lv-2",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 29

# 取引 グリーンシャードLv2
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-2",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/green/lv-2",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 29

# 取引 レッドシャードLv3
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-3",Count:1b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:3b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/red/lv-3",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 54

# 取引 ブルーシャードLv3
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-3",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:3b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/blue/lv-3",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 54

# 取引 グリーンシャードLv3
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-3",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:3b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/green/lv-3",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 54

# 取引 レッドシャードLv4
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-4",Count:1b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/red/lv-4",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 75

# 取引 ブルーシャードLv4
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-4",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/blue/lv-4",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 75

# 取引 グリーンシャードLv4
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"sacred_shard/lv-4",Count:2b}
    data modify storage asset:trader Trades[-1].BuyB set value {PresetItem:"currency/high",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"sacred_shard/green/lv-4",Count:1b}
    data modify storage asset:trader Trades[-1].RequiredProgress set value 75
