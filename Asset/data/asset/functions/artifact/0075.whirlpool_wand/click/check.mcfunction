#> asset:artifact/0075.whirlpool_wand/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/75/click/check

    execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5,limit=1] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1