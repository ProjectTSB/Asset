#> asset:artifact/0190.amor_wand/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/190/click/

# 演出
    execute at @a[distance=..8] run particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @a[distance=..8]
    playsound minecraft:entity.arrow.hit_player player @a[distance=..8] ~ ~ ~ 20 1
    execute positioned ~ ~4 ~ run function asset:artifact/0190.amor_wand/click/vfx/

# 回復
    data modify storage api: Argument.Heal set value 8.4
    function api:heal/modifier
    execute as @a[distance=..8] run function api:heal/

# リセット
    function api:heal/reset
