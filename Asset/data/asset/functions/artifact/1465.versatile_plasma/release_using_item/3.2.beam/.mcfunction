#> asset:artifact/1465.versatile_plasma/release_using_item/3.2.beam/
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/2.check_condition

# 3発撃つ
    execute rotated ~-30 ~ run function asset:artifact/1465.versatile_plasma/release_using_item/3.2.beam/summon

    execute rotated ~ ~ run function asset:artifact/1465.versatile_plasma/release_using_item/3.2.beam/summon

    execute rotated ~30 ~ run function asset:artifact/1465.versatile_plasma/release_using_item/3.2.beam/summon

# 演出
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 2
