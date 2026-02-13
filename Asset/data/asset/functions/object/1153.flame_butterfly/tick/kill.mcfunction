#> asset:object/1153.flame_butterfly/tick/kill
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/

# 演出
    particle flame ~ ~ ~ 0 0 0 0.2 50 normal @a
    particle small_flame ~ ~ ~ 0 0 0 0.2 50 normal @a
    playsound block.fire.ambient neutral @a ~ ~ ~ 0.8 1
    playsound block.lava.extinguish neutral @a ~ ~ ~ 0.8 1

# 消滅
    execute on passengers run kill @s
    kill @s
