#> asset:artifact/1128.aigis_vitae/click/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1128.aigis_vitae/click/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# オブジェクト設置
    data modify storage api: Argument.ID set value 1088
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s UserID
    function api:object/summon
