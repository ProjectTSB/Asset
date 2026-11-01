#> asset:artifact/1599.banisher_empty/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1599.banisher_empty/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# リロード
    data modify storage api: Argument.ID set value 1598
    data modify storage api: Argument.Slot set value "mainhand"
    function api:artifact/replace/from_id

# 演出
    playsound block.iron_door.open player @a ~ ~ ~ 2.0 1.7
    playsound block.amethyst_block.break player @a ~ ~ ~ 1.0 0.5
