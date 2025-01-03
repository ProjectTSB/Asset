#> asset:mob/0410.heiloang/tick/util/set_ehd_order
#
# 汎用処理 エンハンスドディザスターおよび属性攻撃の順番決定
#
# @within
#   asset:mob/0410.heiloang/init/
#   asset:mob/0410.heiloang/tick/event/**

# エンハンスドディザスターの順番決定
        execute store result score @s BE.Ehd.Fire run random value 1..3
        execute store result score @s BE.Ehd.Water run random value 1..2
        execute if score @s BE.Ehd.Water = @s BE.Ehd.Fire run scoreboard players add @s BE.Ehd.Water 1
        scoreboard players set @s BE.Ehd.Thunder 6
        scoreboard players operation @s BE.Ehd.Thunder -= @s BE.Ehd.Fire
        scoreboard players operation @s BE.Ehd.Thunder -= @s BE.Ehd.Water
