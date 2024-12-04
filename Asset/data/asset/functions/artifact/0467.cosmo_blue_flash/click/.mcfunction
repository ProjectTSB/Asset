#> asset:artifact/0467.cosmo_blue_flash/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/467/click/

# 演出
    playsound entity.squid.death player @a ~ ~ ~ 1.0 2.0

    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0467.cosmo_blue_flash/click/shot

# ヒット処理
    execute as @e[tag=CZ.HitEntity,distance=..40] run function asset:artifact/0467.cosmo_blue_flash/click/hit

# リセット
    tag @e[tag=CZ.HitEntity] remove CZ.HitEntity
    tag @s remove CZ.HitFlag
