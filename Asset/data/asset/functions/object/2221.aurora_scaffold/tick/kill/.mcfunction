#> asset:object/2221.aurora_scaffold/tick/kill/
#
#
#
# @within function asset:object/2221.aurora_scaffold/tick/

#> Private
# @private
    #declare score_holder $2221.ID

# ID取得
    execute store result score $2221.ID Temporary run data get storage asset:context this.ID

# 同IDのitem_displayとして実行すること
    execute as @e[type=item_display,tag=2221.ItemDisplay,distance=..2] at @s if score @s 2221.ID = $2221.ID Temporary run function asset:object/2221.aurora_scaffold/tick/kill/as_display

# リセット
    scoreboard players reset $2221.ID Temporary

# 消滅
    kill @s
