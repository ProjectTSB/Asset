#> asset:artifact/0078.self_destruct_order/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/78/click/check

# アイアンゴーレムとスノーゴーレムが近くにいるときのみ発動
    scoreboard players set @s Temporary 0
    execute if entity @e[type=iron_golem,distance=..15] run scoreboard players set @s Temporary 1
    execute if entity @e[type=snow_golem,distance=..15] run scoreboard players set @s Temporary 1
    execute if entity @s[scores={Temporary=0}] run tag @s remove CanUsed
    scoreboard players reset @s Temporary