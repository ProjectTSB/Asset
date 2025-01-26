#> asset:object/2070.potion/tick/poison/break
#
# 毒ポーションが壊れるときの処理
#
# @within function
#   asset:object/2070.potion/hit_block/
#   asset:object/2070.potion/hit_entity/

# 演出
    playsound block.glass.break hostile @a ~ ~ ~ 1 1 0

# Tagを付与
    tag @s add 2070.PoisonPotionBroken

# displayの見た目を無くす
    data modify entity @s transformation.scale set value [0.0f,0.0f,0.0f]
