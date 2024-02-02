#> asset:trader/0011.redstone_merchant/register/register
#
#
#
# @within function asset:trader/0011.redstone_merchant/register/

# 重複防止レジストリに登録
    data modify storage asset:trader DPR append value {D:overworld,X:-16,Y:21,Z:-57}

# ID (int)
    data modify storage asset:trader ID set value 11
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"赤石商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 315f

# 取引 レッドストーン
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:redstone",Count:8b}

# 取引 リピーター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:repeater",Count:1b}

# 取引 コンパレーター
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:comparator",Count:1b}

# 取引 日照センサー
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:daylight_detector",Count:1b}

# 取引 ピストン
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:piston",Count:1b}

# 取引 粘着ピストン
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:sticky_piston",Count:1b}

# 取引 ドロッパー
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:dropper",Count:1b}

# 取引 ディスペンサー
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:dispenser",Count:1b}

# 取引 オブザーバー
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:observer",Count:1b}

# 取引 ホッパー
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:hopper",Count:1b}

# 登録
    function asset:trader/common/register