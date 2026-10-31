#> asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/
#
#
#
# @within function asset:artifact/1465.versatile_plasma/release_using_item/2.check_condition

#> Private
# @within function asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/**
    #declare tag A1465.Hit
    #declare tag A1465.HitTarget

# 再帰処理
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/rec
    tag @s remove A1465.Hit
    function asset:artifact/1465.versatile_plasma/release_using_item/3.3.laser/damage

# 演出
    playsound ogg:block.vault.open_shutter player @a ~ ~ ~ 2 2
    playsound ogg:block.vault.break player @a ~ ~ ~ 1 1
