#> asset:artifact/0290.carefully_collector/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0290.carefully_collector/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

    tellraw @s[gamemode=!survival,gamemode=!creative] [{"text": "サバイバルエリアでのみ使用可能です"}]
    tag @s[gamemode=!survival,gamemode=!creative] remove CanUsed

    execute if block ~ ~ ~ chest run scoreboard players set @s Temporary 1
    execute if block ~ ~ ~ trapped_chest run scoreboard players set @s Temporary 1
    execute unless score @s Temporary matches 1 run tellraw @s ["足元が",{"translate":"block.minecraft.chest"},"か",{"translate":"block.minecraft.trapped_chest"},"である必要があります"]
    execute unless score @s Temporary matches 1 run tag @s remove CanUsed
    scoreboard players reset @s Temporary

# チェストの中身を取得し、中にチェスト・シュルカーボックスがあれば回収できない
    execute if entity @s[tag=CanUsed] run data modify storage asset:temp block set from block ~ ~ ~
    execute if entity @s[tag=CanUsed] if function asset:artifact/0290.carefully_collector/trigger/2.check_condition/ban_items run tellraw @s [{"translate":"block.minecraft.chest","color":"red"},{"text":"または"},{"translate":"block.minecraft.shulker_box"},{"text":"が中に入っています"}]
    execute if entity @s[tag=CanUsed] if function asset:artifact/0290.carefully_collector/trigger/2.check_condition/ban_items run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0290.carefully_collector/trigger/3.main

# リセット
    data remove storage asset:temp block
