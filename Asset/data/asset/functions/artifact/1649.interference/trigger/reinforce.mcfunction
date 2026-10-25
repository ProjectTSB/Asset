#> asset:artifact/1649.interference/trigger/reinforce
#
#
#
# @within function asset:artifact/1649.interference/trigger/2.check_condition

# タグ
    tag @s add 1217.Checked
    tag @s add 1217.Reinforced

# 見た目を更新
    data modify entity @s item.tag.CustomModelData set value 20672

# 無条件ででMPを40消費
    data modify storage api: Argument.Fluctuation set value -40
    data modify storage api: Argument.DisableLog set value true
    execute as @p[tag=this] run function api:mp/fluctuation

# MPが0になったなら追加でObject1217を召喚
    execute as @p[tag=this] run function api:mp/get_current
    execute if data storage api: Return{CurrentMP:0} run tag @s add 1217.SummonsAdditional

# 演出
    playsound block.bubble_column.upwards_inside neutral @a ~ ~ ~ 2.0 2.0

# リセット
    scoreboard players reset $UserID Temporary
