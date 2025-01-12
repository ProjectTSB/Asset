#> asset:trader/5/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded -3 21 -69 run return 1

# ID (int)
    data modify storage asset:trader ID set value 5
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [-3,21,-69]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"ポーション商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -45f

# 取引 牛乳パック
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:10b}
    data modify storage asset:trader Trades[-1].Sell set value 771

# 取引 ネクター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:5b}
    data modify storage asset:trader Trades[-1].Sell set value 143

# 取引 ハイネクター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:10b}
    data modify storage asset:trader Trades[-1].Sell set value 144

# 取引 アウレネクター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:24b}
    data modify storage asset:trader Trades[-1].Sell set value 145

# 取引 ミスティカネクター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:48b}
    data modify storage asset:trader Trades[-1].Sell set value 146
