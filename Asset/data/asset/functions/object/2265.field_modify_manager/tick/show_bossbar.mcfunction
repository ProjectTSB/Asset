#> asset:object/2265.field_modify_manager/tick/show_bossbar
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/tick/

# ボスバー表示
    bossbar add asset:co_field_modify {"text":""}
    bossbar set asset:co_field_modify color blue
    bossbar set asset:co_field_modify players @a[distance=..80]
    execute store result bossbar asset:co_field_modify max run scoreboard players get @s 2265.Progress.Max
