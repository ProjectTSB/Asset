#> asset:artifact/0898.gale_pendant/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/898/equip/


# VFX
    playsound block.beacon.activate player @a ~ ~ ~ 1 1.3
    particle dust 0.2 0.9 10000000 0.7 ~ ~1 ~ 0.5 0.8 0.5 1 100

# バフを付与
    function asset:artifact/0898.gale_pendant/equip/buff
