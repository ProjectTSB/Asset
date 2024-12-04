#> asset:artifact/0290.carefully_collector/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/290/click/check

    tellraw @s[gamemode=!survival,gamemode=!creative] [{"text": "サバイバルエリアでのみ使用可能です"}]
    tag @s[gamemode=!survival,gamemode=!creative] remove CanUsed

    execute if block ~ ~ ~ chest run scoreboard players set @s Temporary 1
    execute if block ~ ~ ~ trapped_chest run scoreboard players set @s Temporary 1
    execute unless score @s Temporary matches 1 run tellraw @s ["足元が[",{"translate":"block.minecraft.chest"},"/",{"translate":"block.minecraft.trapped_chest"},"]である必要があります"]
    execute unless score @s Temporary matches 1 run tag @s remove CanUsed