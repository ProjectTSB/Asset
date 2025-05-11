#> asset:mob/0106.mini_shulker/tick/shell/close
# @within function asset:mob/0106.mini_shulker/**

data modify storage api: Argument.UUID set value [I;1,2,106,0]
data modify storage api: Argument.Amount set value 0.8
data modify storage api: Argument.Operation set value "multiply"
function api:modifier/defense/base/add
execute on passengers run data modify entity @s item.tag.CustomModelData set from storage asset:context this.Model.Close
