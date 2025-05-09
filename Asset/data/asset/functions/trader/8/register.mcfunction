#> asset:trader/8/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded 25 21 -74 run return 1

# ID (int)
    data modify storage asset:trader ID set value 8
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [25,21,-74]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"農業商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 土
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:dirt",Count:8b}

# 取引 クワ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:netherite_hoe",Count:1b}

# 取引 種
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:wheat_seeds",Count:1b}

# 取引 ビートルートの種
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:beetroot_seeds",Count:1b}

# 取引 スイカの種
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:melon_seeds",Count:1b}

# 取引 カボチャの種
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:pumpkin_seeds",Count:1b}

# 取引 人参
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:carrot",Count:1b}

# 取引 ジャガイモ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:potato",Count:1b}

# 取引 スイートベリー
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:sweet_berries",Count:1b}

# 取引 竹
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:bamboo",Count:1b}

# 取引 サトウキビ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:3b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:sugar_cane",Count:1b}

# 取引 小麦->かけら
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:wheat",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}

# 取引 ビートルート->かけら
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:beetroot",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}

# 取引 人参->かけら
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:carrot",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}

# 取引 ジャガイモ->かけら
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:potato",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}

# 取引 カボチャ->かけら
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:pumpkin",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}

# 取引 スイカ->かけら
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:melon",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}

# 取引 サトウキビ->かけら
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:sugar_cane",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {PresetItem:"currency/",Count:1b}
