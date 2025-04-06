#> asset:trader/13/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded 40 21 -69 run return 1

# ID (int)
    data modify storage asset:trader ID set value 13
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [40,21,-67]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"染料商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 45f

# 取引 下位通貨を光るイカスミに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:glow_ink_sac",Count:8b}

# 取引 下位通貨を白色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"white_dye",Count:8b}

# 取引 下位通貨を薄灰色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"light_gray_dye",Count:8b}

# 取引 下位通貨を灰色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"gray_dye",Count:8b}

# 取引 下位通貨を黒色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"black_dye",Count:8b}

# 取引 下位通貨を茶色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"brown_dye",Count:8b}

# 取引 下位通貨を赤色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"red_dye",Count:8b}

# 取引 下位通貨を橙色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"orange_dye",Count:8b}

# 取引 下位通貨を黄色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"yellow_dye",Count:8b}

# 取引 下位通貨を黄緑色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"lime_dye",Count:8b}

# 取引 下位通貨を緑色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"green_dye",Count:8b}

# 取引 下位通貨を青緑色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"cyan_dye",Count:8b}

# 取引 下位通貨を空色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"light_blue_dye",Count:8b}

# 取引 下位通貨を青色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"blue_dye",Count:8b}

# 取引 下位通貨を紫色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"purple_dye",Count:8b}

# 取引 下位通貨を赤紫色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"magenta_dye",Count:8b}

# 取引 下位通貨を桃色の染料に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"pink_dye",Count:8b}
