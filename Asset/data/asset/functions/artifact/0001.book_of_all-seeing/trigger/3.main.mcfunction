#> asset:artifact/0001.book_of_all-seeing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# VFX
    playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 1
    playsound minecraft:item.book.page_turn player @s ~ ~ ~ 2 0.7
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1

# 敵のステータス表示処理
    execute unless entity @s[y_rotation=75..90] run tellraw @s [{"text":"\n[ ","color":"white"},{"selector":"@e[type=#lib:living,type=!player,tag=01.Target,distance=..30,limit=1]"},{"text":" ]\n","color":"white"}]
    execute unless entity @s[y_rotation=75..90] as @e[type=#lib:living,type=!player,tag=01.Target,distance=..30,limit=1] run function asset:artifact/0001.book_of_all-seeing/trigger/see_enemy/print_defense_messages

# 自身のステータス表示処理
    execute if entity @s[y_rotation=75..90] run say a

# リセット
    tag @e[type=#lib:living,type=!player,tag=01.Target,distance=..30,limit=1] remove 01.Target
