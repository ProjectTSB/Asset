#> asset:artifact/0759.sina_tk_empty/keep_sneak/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/759/keep_sneak/

# 消費
    clear @s bamboo 8

# 演出
    particle block bamboo ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    playsound block.bamboo.break player @a ~ ~ ~ 1 1 0
    playsound block.bamboo.break player @a ~ ~ ~ 1 0.5

# 残り回数が1回の時発動した場合
    execute if data storage asset:context {BrokeItem: true} run playsound entity.horse.armor player @a ~ ~ ~ 1 1 0
    execute if data storage asset:context {BrokeItem: true} run data modify storage api: Argument.ID set value 758
    execute if data storage asset:context {BrokeItem: true} run function api:artifact/give/from_id
