#> asset:artifact/1079.allochromatic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1079/click/

# 使用スロットをチェックする
# 残り使用回数が0になったタイミングでcommon処理を行うとデータが消えるためここでチェックしている
# でもダメージとかをcommon処理の前に行うのは気持ち悪いからTagで判別している
    execute if data storage asset:context id{mainhand:1079} run tag @s add MainHand

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 自身に共鳴・蒼バフを付与
    data modify storage api: Argument.ID set value 229
    function api:entity/mob/effect/give

# 周囲に共鳴・紅バフを持っているプレイヤーがいないか探す
    execute as @a[distance=..20] run function asset:artifact/1079.allochromatic/click/4.search_resonance

# 反動
    tp @s ~ ~ ~ ~ ~-1.5

# デバッグ用共鳴Tag
    #tag @s add Resonance

# メインハンドかオフハンドかで発射位置を変える
    execute if entity @s[tag=MainHand] anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run function asset:artifact/1079.allochromatic/click/5.shot
    execute if entity @s[tag=!MainHand] anchored eyes positioned ^0.35 ^-0.15 ^0.5 run function asset:artifact/1079.allochromatic/click/5.shot

# 残り回数が1回の時発動した場合
# 使用スロットで条件分岐しないと消えるので分岐している
    execute if entity @s[tag=MainHand] unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 1080
    execute if entity @s[tag=MainHand] unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id
    execute if entity @s[tag=!MainHand] unless data storage asset:context Items.offhand.id run data modify storage api: Argument.ID set value 1080
    execute if entity @s[tag=!MainHand] unless data storage asset:context Items.offhand.id run function api:artifact/give/from_id


# リセット
    tag @s[tag=Resonance] remove Resonance
    tag @s[tag=MainHand] remove MainHand