#> asset:artifact/1649.interference/trigger/reinforce
#
#
#
# @within function asset:artifact/1649.interference/trigger/3.main

# タグ
    tag @s add O1217.Checked
    tag @s add O1217.Reinforced

# 見た目を更新
    data modify entity @s item.tag.CustomModelData set value 20672

# MPが0になったなら追加でObject1217を召喚
    execute as @p[tag=this] run function api:mp/get_current
    execute if data storage api: Return{CurrentMP:0} run tag @s add O1217.SummonsAdditional

# 演出
    playsound block.bubble_column.upwards_inside neutral @a ~ ~ ~ 2.0 2.0

# リセット
    tag @s remove A1649.Reinforceable
