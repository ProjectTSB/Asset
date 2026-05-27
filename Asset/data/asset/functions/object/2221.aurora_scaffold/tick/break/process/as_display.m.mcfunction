#> asset:object/2221.aurora_scaffold/tick/break/process/as_display.m
#
# @input args:
#   ID : int
# @within function asset:object/2221.aurora_scaffold/tick/break/process/

# マクロで指定されたIDのdisplayとして実行
    $execute as @e[type=item_display,tag=2221.ItemDisplay,scores={2221.ID=$(ID)}] at @s run function asset:object/2221.aurora_scaffold/tick/break/process/do
