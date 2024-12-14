#> asset:mob/0055.hetukedah/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/55/death

# super.death
    function asset:mob/super.death

# 演出
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound entity.ravager.death hostile @a ~ ~ ~ 1 2

# ボスドロ
    data modify storage api: Argument.ID set value 1084
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

    data modify storage api: Argument.ID set value 1085
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
