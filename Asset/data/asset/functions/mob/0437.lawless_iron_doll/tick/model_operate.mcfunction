#> asset:mob/0437.lawless_iron_doll/tick/model_operate
#
# モデルの操作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/

# AJモデルとの紐づけ
    tag @e[type=item_display,tag=C5.ModelRoot,distance=..256,sort=nearest,limit=1] add C5.ModelRoot.Target

# モデルを自身の座標に移動させる
    tp @e[type=item_display,tag=C5.ModelRoot.Target,distance=..256,sort=nearest,limit=1] ~ ~ ~ ~ 0
