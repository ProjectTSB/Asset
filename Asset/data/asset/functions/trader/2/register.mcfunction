#> asset:trader/2/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded 19 15 -29 run return 1

# ID (int)
    data modify storage asset:trader ID set value 2
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [19,15,-29]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"道具商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 望遠鏡
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:spyglass",Count:1b}

# 取引 釣り竿
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:fishing_rod",Count:1b}

# 取引 見通しの書
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:5b}
    data modify storage asset:trader Trades[-1].Sell set value 1

# 取引 ソウルメイト
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value 991

# 取引 携帯食料
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:bread",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value 162

# 取引 英霊の書
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value 1142
