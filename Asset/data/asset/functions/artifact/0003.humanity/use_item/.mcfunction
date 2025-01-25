#> asset:artifact/0003.humanity/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/3/use_item/


# 10%の確率で死亡
    scoreboard players set @s Temporary 0
    execute if predicate lib:random_pass_per/10 run scoreboard players set @s Temporary 1

# 演出 共通
    title @a times 20 20 20
    particle portal ~ ~ ~ 0 0 0 2 250 force @a

# 処理
    execute if score @s Temporary matches 0 run function asset:artifact/0003.humanity/use_item/heal
    execute if score @s Temporary matches 1 run function asset:artifact/0003.humanity/use_item/damage

# リセット
    scoreboard players reset @s Temporary
