#> asset:object/2219.karmic_death/tick/kill
#
#
#
# @within function asset:object/2219.karmic_death/tick/

#> private
# @private
#declare function animated_java:karmic/remove/this

# 消滅
    execute as @e[type=item_display,distance=..0.1,sort=nearest,limit=1] run function animated_java:karmic/remove/this

# ボスドロ
    data modify storage api: Argument.ID set value 1209
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
    execute as @e[type=item,distance=..1] run data modify entity @s NoGravity set value false

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_karmic",Active:false}]
    function asset:datapack/set_activation_state
