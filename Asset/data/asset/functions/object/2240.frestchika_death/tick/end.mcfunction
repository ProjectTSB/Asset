#> asset:object/2240.frestchika_death/tick/end
#
#
#
# @within function asset:object/2240.frestchika_death/tick/

# 演出
    particle minecraft:poof ~ ~ ~ 0 0 0 0.5 100
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    playsound entity.generic.explode hostile @a ~ ~ ~ 3 1

# モデルを消す
    execute as @e[type=item_display,tag=2240.ModelRoot.Target,distance=..8,limit=1] run function animated_java:frestchika/remove/this

# ボスドロ1
    data modify storage api: Argument.ID set value 613
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# ボスドロ2
    data modify storage api: Argument.ID set value 948
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# 消失
    kill @s

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_frestchika",Active:false}]
    function asset:datapack/set_activation_state
