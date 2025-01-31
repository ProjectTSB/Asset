#> asset:trader/12/register
#
#
#
# @within function asset:trader/0012.armor_trim_merchant/register/

execute unless loaded 21 3 -25 run return 1

# ID (int)
    data modify storage asset:trader ID set value 12
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [21,3,-25]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"鍛冶型商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 ネザライト強化
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:netherite_upgrade_smithing_template",Count:1b}

# 取引 略奪者風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:sentry_armor_trim_smithing_template",Count:1b}

# 取引 ヴェックス風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:vex_armor_trim_smithing_template",Count:1b}

# 取引 自然風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:wild_armor_trim_smithing_template",Count:1b}

# 取引 海洋風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:coast_armor_trim_smithing_template",Count:1b}

# 取引 砂丘風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:dune_armor_trim_smithing_template",Count:1b}

# 取引 先駆者風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:wayfinder_armor_trim_smithing_template",Count:1b}

# 取引 牧者風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:raiser_armor_trim_smithing_template",Count:1b}

# 取引 職人風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:shaper_armor_trim_smithing_template",Count:1b}

# 取引 主人風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:host_armor_trim_smithing_template",Count:1b}

# 取引 監獄風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:ward_armor_trim_smithing_template",Count:1b}

# 取引 静寂
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:silence_armor_trim_smithing_template",Count:1b}

# 取引 潮流風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:tide_armor_trim_smithing_template",Count:1b}

# 取引 ブタの鼻風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:snout_armor_trim_smithing_template",Count:1b}

# 取引 あばら模様
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:rib_armor_trim_smithing_template",Count:1b}

# 取引 エンダーアイ風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:eye_armor_trim_smithing_template",Count:1b}

# 取引 尖塔風
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:spire_armor_trim_smithing_template",Count:1b}
