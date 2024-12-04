#> asset:artifact/0690.steam_core/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/690/equip

# 演出
    execute rotated ~ 0 positioned ~ ~1.3 ~ run function asset:artifact/0690.steam_core/vfx
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.5 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.7 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 0.9 0
    playsound block.fire.extinguish player @a ~ ~ ~ 0.5 1.1 0
