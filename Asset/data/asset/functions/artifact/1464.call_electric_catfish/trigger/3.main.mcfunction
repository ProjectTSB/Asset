#> asset:artifact/1464.call_electric_catfish/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1464.call_electric_catfish/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ダメージ設定
    data modify storage api: Argument.FieldOverride.Damage set value 100.0f

# 本体召喚
    data modify storage api: Argument.ID set value 1160
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
