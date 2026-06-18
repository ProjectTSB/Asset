#> asset:artifact/1572.after_glow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1572.after_glow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Color:16711680,Scale:[1f,10f,1f],Frames:[20335,20336,20337]}
    execute at @s positioned ^ ^ ^3 rotated ~ -90 run function api:object/summon
