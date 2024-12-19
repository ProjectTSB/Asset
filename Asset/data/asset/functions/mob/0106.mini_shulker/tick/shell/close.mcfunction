#> asset:mob/0106.mini_shulker/tick/shell/close
# @within function asset:mob/0106.mini_shulker/**

effect give @s resistance infinite 7 true
execute on passengers run data modify entity @s item.tag.CustomModelData set value 20456
