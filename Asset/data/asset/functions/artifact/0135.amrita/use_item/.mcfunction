#> asset:artifact/0135.amrita/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/135/use_item/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    scoreboard players set $Fluctuation Lib 40
    function lib:mp/fluctuation