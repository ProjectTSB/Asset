#> asset:artifact/0201.cowardly_soul/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/201/damage/


# 落下速度低下付与
    effect give @s minecraft:slow_falling 1 1

# vfx
    particle minecraft:nautilus ~ ~1.25 ~ 0.0 0.5 0.0 0.5 75

# ワープする
    execute in overworld run tp @s 23.5 3.0 24.5