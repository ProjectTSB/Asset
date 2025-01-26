#> asset:artifact/0191.horus_wand/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/191/click/

# 演出
    execute at @a[distance=..8] run particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @a[distance=..16]
    playsound minecraft:entity.arrow.hit_player player @a[distance=..8] ~ ~ ~ 20 1
    execute positioned ~ ~4 ~ run function asset:artifact/0191.horus_wand/click/vfx/

# 回復
    data modify storage lib: Argument.Heal set value 15
    function lib:heal/modifier
    execute as @a[distance=..8] run function lib:heal/
    effect give @a[distance=..8] regeneration 15 2 true

# リセット
    function lib:heal/reset
