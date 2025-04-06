#> asset:object/2247.lawless_iron_giant_death/tick/end
#
#
#
# @within function asset:object/2247.lawless_iron_giant_death/tick/

# 演出
    particle minecraft:poof ~ ~ ~ 0 0 0 0.5 100
    particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 100
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    playsound entity.generic.explode hostile @a ~ ~ ~ 3 1
    playsound entity.iron_golem.death hostile @a ~ ~ ~ 3 1

# モデルを消す
    execute as @e[type=item_display,tag=2247.ModelRoot.Target,distance=..8,limit=1] run function animated_java:lawless_iron_doll/remove/this

# ボスドロップ
    data modify storage api: Argument.ID set value 1122
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
    data modify storage api: Argument.ID set value 1017
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# 消失
    kill @s
