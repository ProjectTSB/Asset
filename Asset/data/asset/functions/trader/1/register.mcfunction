#> asset:trader/1/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded 27 15 -29 run return 1

# ID (int)
    data modify storage asset:trader ID set value 1
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [27,15,-29]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"雑貨商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f

# 取引 たいまつ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:torch",Count:16b}

# 取引 松明袋
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:5b}
    data modify storage asset:trader Trades[-1].Sell set value 1285

# 取引 はしご
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:ladder",Count:4b}

# 取引 足場
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:scaffolding",Count:2b}

# 取引 階段
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:smooth_quartz_stairs",Count:4b}

# 取引 骨粉
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:bone_meal",Count:2b}

# 取引 額縁
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:item_frame",Count:1b}

# 取引 普通のアマスタ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:armor_stand",Count:1b}

# 取引 腕付きアマスタ 普通のアマスタと取引
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {id:"minecraft:armor_stand",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:armor_stand",Count:1b,tag:{EntityTag:{ShowArms:1b},display:{Name:'{"text":"腕付き防具立て","color":"gold","italic":false}'}}}

# 取引 エンダーチェスト
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:4b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:ender_chest",Count:1b}

# 取引 シュルカーボックス
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:16b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:shulker_box",Count:1b}

# 取引 名札
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:6b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:name_tag",Count:1b}

# 取引 イカスミ
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:ink_sac",Count:8b}

# 取引 アメジストの欠片
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:amethyst_shard",Count:8b}
