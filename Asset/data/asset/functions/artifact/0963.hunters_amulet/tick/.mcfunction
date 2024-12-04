#> asset:artifact/0963.hunters_amulet/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/963/tick/

# 連続で発動しないようにタグで制御する
    tag @s add QR.Run

# 効果
    data modify storage api: Argument.ID set value 221
    execute store result storage api: Argument.Stack int 1 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:963}}}]
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
