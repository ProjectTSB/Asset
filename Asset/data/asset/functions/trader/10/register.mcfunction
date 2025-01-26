#> asset:trader/10/register
#
#
#
# @within function asset_manager:trader/register/register.m

execute unless loaded 16 15 -27 run return 1

# ID (int)
    data modify storage asset:trader ID set value 10
# Pos ([int] @ 3)
    data modify storage asset:trader Pos set value [16,15,-27]
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"砥石商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value -70f

# 取引 下位通貨を砥石に
    data modify storage asset:trader Trades append value {}
    data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:1b}
    data modify storage asset:trader Trades[-1].Sell set value 958
