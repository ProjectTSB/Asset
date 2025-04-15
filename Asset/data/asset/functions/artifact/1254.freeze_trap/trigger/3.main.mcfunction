#> asset:artifact/1254.freeze_trap/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1254.freeze_trap/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.tripwire.click_on player @a ~ ~ ~ 1 1.1

# Object召喚
    data modify storage api: Argument.ID set value 1126
    data modify storage api: Argument.FieldOverride.Damage set value 800f
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
