#> asset:mob/0236.ksitigarbha/death/2.2.head_drop
#
# 首落ちモデルに変更し、頭の雪を消す
#
# @within function asset:mob/0236.ksitigarbha/death/

# 首落ちモデルに変更し、頭の雪を消す
    execute on passengers if entity @e[tag=6K.Display] run data modify entity @s item.tag.CustomModelData set value 20181
    execute on passengers if entity @e[tag=6K.Snow] run data modify entity @s block_state.Name set value "minecraft:air"
