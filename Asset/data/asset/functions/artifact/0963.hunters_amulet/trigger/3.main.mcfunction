#> asset:artifact/0963.hunters_amulet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0963.hunters_amulet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#連続で発動しないようにタグで制御する
    tag @s add QR.Run

# 効果
    data modify storage api: Argument.ID set value 221
    execute store result storage api: Argument.Stack int 1 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:963}}}]
    function api:entity/mob/effect/give
