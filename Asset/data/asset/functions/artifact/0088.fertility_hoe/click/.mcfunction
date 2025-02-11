#> asset:artifact/0088.fertility_hoe/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/88/click/

#> private
# @private
    #declare score_holder $PlayerHeight

# 演出
    particle item bone_block ~ ~ ~ 3 3 3 0 50 normal @a
    particle composter ~ ~ ~ 3 3 3 0 100 normal @a
    playsound block.pumpkin.carve player @a ~ ~ ~ 1 1

# 処理
    clear @s bone_meal 8

execute positioned ~ ~-4 ~ run function asset:artifact/0088.fertility_hoe/click/fill
execute positioned ~ ~-3 ~ run function asset:artifact/0088.fertility_hoe/click/fill
execute positioned ~ ~-2 ~ run function asset:artifact/0088.fertility_hoe/click/fill
execute positioned ~ ~-1 ~ run function asset:artifact/0088.fertility_hoe/click/fill
execute positioned ~ ~ ~ run function asset:artifact/0088.fertility_hoe/click/fill
execute positioned ~ ~1 ~ run function asset:artifact/0088.fertility_hoe/click/fill
execute positioned ~ ~2 ~ run function asset:artifact/0088.fertility_hoe/click/fill
execute positioned ~ ~3 ~ run function asset:artifact/0088.fertility_hoe/click/fill
execute positioned ~ ~4 ~ run function asset:artifact/0088.fertility_hoe/click/fill
