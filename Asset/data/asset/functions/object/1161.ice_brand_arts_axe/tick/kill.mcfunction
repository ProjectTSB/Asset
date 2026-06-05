#> asset:object/1161.ice_brand_arts_axe/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1161/tick

# 消滅処理
    particle block packed_ice ~ ~ ~ 0.8 0.8 0.8 0 30
    playsound block.glass.break player @a ~ ~ ~ 1 1.4
    kill @s
