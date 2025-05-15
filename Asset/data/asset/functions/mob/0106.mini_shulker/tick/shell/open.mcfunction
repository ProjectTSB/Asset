#> asset:mob/0106.mini_shulker/tick/shell/open
# @within function asset:mob/0106.mini_shulker/**

data modify storage api: Argument.UUID set value [I;1,2,106,0]
function api:modifier/defense/base/remove
execute on passengers run data modify entity @s item.tag.CustomModelData set from storage asset:context this.Model.Open
