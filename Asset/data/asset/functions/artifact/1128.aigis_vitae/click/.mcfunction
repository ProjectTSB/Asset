#> asset:artifact/1128.aigis_vitae/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1128/click/

# オブジェクト設置
    data modify storage api: Argument.ID set value 1088
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s UserID
    function api:object/summon
