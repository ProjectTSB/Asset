#> asset:artifact/0122.lunatic_lay/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/122/click/check

    execute if entity @s[tag=CanUsed] anchored eyes positioned ^ ^ ^ as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5,sort=random] run function asset:artifact/0122.lunatic_lay/click/find_through_target/
    execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
    execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,type=!player,tag=3E.Hit,distance=..5] run tag @s remove CanUsed
    data remove storage asset:temp IsTargetEntityFound
# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0122.lunatic_lay/click/