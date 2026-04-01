#> asset:artifact/0605.ambition/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0605.ambition/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedでなければreturn
    execute if entity @s[tag=!CanUsed] run return fail

# 没収されたアイテムの長さを取得
    execute store result score @s Temporary run function api:lost_items/get_length

# 没収されたアイテムの数が0なら使用できない
    execute if score @s Temporary matches 0 run tag @s remove CanUsed
    execute if score @s Temporary matches 0 run tellraw @s {"text":"アイテムを何も失っていません。","color":"red"}
    execute if score @s Temporary matches 0 run scoreboard players reset @s Temporary
    execute if entity @s[tag=!CanUsed] run return fail

# 3.main.mcfunctionを実行する
    function asset:artifact/0605.ambition/trigger/3.main
