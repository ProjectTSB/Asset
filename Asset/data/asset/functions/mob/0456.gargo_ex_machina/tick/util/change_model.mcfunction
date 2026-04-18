#> asset:mob/0456.gargo_ex_machina/tick/util/change_model
#
# ボス名変更
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# モデル変更
    execute as @e[type=item_display,tag=aj.gargo_ex_machina.bone.head,sort=nearest,limit=1] run data modify entity @s item.tag.CustomModelData set value 999
