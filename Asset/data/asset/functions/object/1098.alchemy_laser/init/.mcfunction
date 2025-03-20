#> asset:object/1098.alchemy_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1098/init

# normalize
    tp @s ~ ~ ~ ~ 0

# 範囲表示
    execute at @s positioned ~ ~0.5 ~ run function asset:object/1098.alchemy_laser/init/area

# サウンド
    playsound entity.zombie_villager.converted player @a[distance=..32] ~ ~ ~ 1 2 0
