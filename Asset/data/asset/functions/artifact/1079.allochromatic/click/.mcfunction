#> asset:artifact/1079.allochromatic/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1079/click/

#> Private
# @private
    #declare tag MainHand

# 使用スロットをチェックする
# 残り使用回数が0になったタイミングでcommon処理を行うとデータが消えるためここでチェックしている
# でもダメージとかをcommon処理の前に行うのは気持ち悪いからTagで判別している
    execute if data storage asset:context {TargetSlot:"mainhand"} run tag @s add MainHand

# 自身に共鳴・蒼バフを付与
    data modify storage api: Argument.ID set value 229
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 周囲に共鳴・紅バフを持っているプレイヤーがいないか探す
    execute as @a[distance=..20] run function asset:artifact/1079.allochromatic/click/4.search_resonance

# 反動
# 共鳴時に反動軽減
    execute if entity @s[tag=!Resonance] run tp @s ~ ~ ~ ~ ~-4.5
    execute if entity @s[tag=Resonance] run tp @s ~ ~ ~ ~ ~-1.5

# デバッグ用共鳴Tag
    #tag @s add Resonance

# メインハンドかオフハンドかで発射位置を変える
    execute if entity @s[tag=MainHand] anchored eyes positioned ^-0.35 ^-0.15 ^0.5 run function asset:artifact/1079.allochromatic/click/5.shot
    execute if entity @s[tag=!MainHand] anchored eyes positioned ^0.35 ^-0.15 ^0.5 run function asset:artifact/1079.allochromatic/click/5.shot

# 残り回数が1回の時発動した場合
# 使用スロットで条件分岐しないと消えるので分岐している
    execute if data storage asset:context {BrokeItem: true} run data modify storage api: Argument.ID set value 1080
    execute if data storage asset:context {BrokeItem: true} run data modify storage api: Argument.Slot set from storage asset:context Slot
    execute if data storage asset:context {BrokeItem: true} run function api:artifact/replace/from_id

# リセット
    tag @s[tag=Resonance] remove Resonance
    tag @s[tag=MainHand] remove MainHand
