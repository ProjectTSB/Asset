#> asset:trader/6/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded -29 21 -44 run return 1

# ID (int)
    data modify storage asset:trader ID set value 6
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [-29,21,-44]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"防具商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -45f

# 取引 革防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:6b}
    data modify storage asset:trader Trades[-1].Sell set value 90

# 取引 金防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value 92

# 取引 鉄防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value 91

# 取引 ダイヤ防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:6b}
    data modify storage asset:trader Trades[-1].Sell set value 93

# 取引 ネザライト防具
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:12b}
    data modify storage asset:trader Trades[-1].Sell set value 94
