#> asset:trader/9/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded 38 21 -70 run return 1

# ID (int)
    data modify storage asset:trader ID set value 9
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [38,21,-69]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"建材商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 45f

# 取引 下位通貨を砂に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:sand",Count:16b}

# 取引 下位通貨を赤砂に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:red_sand",Count:16b}

# 取引 下位通貨を砂利に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:gravel",Count:16b}

# 取引 下位通貨を泥に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:mud",Count:16b}

# 取引 下位通貨を粘土ブロックに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:clay",Count:8b}

# 取引 下位通貨を花崗岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:granite",Count:8b}

# 取引 下位通貨を閃緑岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:diorite",Count:8b}

# 取引 下位通貨を安山岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:andesite",Count:8b}

# 取引 下位通貨を深層岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:cobbled_deepslate",Count:8b}

# 取引 下位通貨をブラックストーンに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:blackstone",Count:8b}

# 取引 下位通貨を方解石に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:calcite",Count:8b}

# 取引 下位通貨をクォーツブロックに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:quartz_block",Count:8b}

# 取引 下位通貨を玄武岩に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:basalt",Count:8b}

# 取引 下位通貨をエンドストーンに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:end_stone",Count:8b}

# 取引 下位通貨をプルプァブロックに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:purpur_block",Count:8b}

# 取引 下位通貨をネザーレンガに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:nether_brick",Count:16b}

# 取引 下位通貨をプリズマリンの欠片に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:prismarine_shard",Count:16b}

# 取引 下位通貨をエンドロッドに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:end_rod",Count:2b}

# 取引 下位通貨をグロウストーンに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:glowstone",Count:2b}

# 取引 下位通貨をシーランタンに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:sea_lantern",Count:2b}

# 取引 下位通貨をシュルームライトに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:shroomlight",Count:2b}

# 取引 下位通貨を黄土色のフロッグライトに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:ochre_froglight",Count:2b}

# 取引 下位通貨を新緑色のフロッグライトに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:verdant_froglight",Count:2b}

# 取引 下位通貨を真珠色のフロッグライトに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:pearlescent_froglight",Count:2b}

# 取引 マグマブロック
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:magma_block",Count:8b}

# 取引 ソウルサンド
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:soul_sand",Count:8b}

# 取引 オークの苗木をトウヒの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"spruce_sapling",Count:1b}

# 取引 オークの苗木を白樺の苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"birch_sapling",Count:1b}

# 取引 オークの苗木をジャングルの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"jungle_sapling",Count:1b}

# 取引 オークの苗木をアカシアの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"acacia_sapling",Count:1b}

# 取引 オークの苗木をダークオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"dark_oak_sapling",Count:1b}

# 取引 オークの苗木をマングローブの芽に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"mangrove_propagule",Count:1b}

# 取引 オークの苗木を桜の苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"cherry_sapling",Count:1b}

# 取引 オークの苗木を深紅のキノコに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"crimson_fungus",Count:1b}

# 取引 オークの苗木を歪んだキノコに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"warped_fungus",Count:1b}

# 取引 トウヒの苗木をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"spruce_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 白樺の苗木をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"birch_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 ジャングルの苗木をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"jungle_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 アカシアの苗木にをオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"acacia_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 ダークオークの苗木にをオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"dark_oak_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 マングローブの芽をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"mangrove_propagule",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 桜の苗木をオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"cherry_sapling",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 深紅のキノコをオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"crimson_fungus",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 歪んだキノコをオークの苗木に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"warped_fungus",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"oak_sapling",Count:1b}

# 取引 下位通貨を深紅のナイリウムに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:crimson_nylium",Count:4b}

# 取引 下位通貨を歪んだナイリウムに
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:warped_nylium",Count:4b}

# 取引 下位通貨をハスの葉に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:lily_pad",Count:8b}
