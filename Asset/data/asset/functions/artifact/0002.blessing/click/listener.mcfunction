#> asset:artifact/0002.blessing/click/listener
#
#
#
# @within function
#   asset:artifact/0002.blessing/click/
#   asset:artifact/0002.blessing/click/listener

# チェック
    execute as @a[scores={02.Trigger=1..}] run function asset:artifact/0002.blessing/click/on_trigger
# ループ
    execute if entity @a[scores={02.Trigger=0},limit=1] run schedule function asset:artifact/0002.blessing/click/listener 1t