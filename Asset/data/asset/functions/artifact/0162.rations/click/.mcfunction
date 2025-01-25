#> asset:artifact/0162.rations/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/162/click/


# 満腹度回復の効果
    effect give @s minecraft:saturation 10 0 true

# パーティクル
    particle item minecraft:dark_oak_sign ~ ~1.5 ~ 0 0.2 0 0.2 20 force @s

# SE
    playsound minecraft:entity.player.burp player @s ~ ~ ~ 1 1.3