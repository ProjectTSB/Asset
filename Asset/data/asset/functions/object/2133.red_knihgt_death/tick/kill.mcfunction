#> asset:object/2133.red_knihgt_death/tick/kill
#
#
#
# @within function asset:object/2133.red_knihgt_death/tick/

#> private
# @private
#declare function animated_java:red_knight/remove/this

# 演出
    particle minecraft:explosion ~ ~1.5 ~ 0 0 0 0 0 force @a[distance=..20]
    particle reverse_portal ~ ~1.5 ~ 0 0 0 2 200
    particle effect ~ ~ ~ 0 5 0 0.1 200
    playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 0.8
    playsound ogg:mob.endermen.portal hostile @a ~ ~ ~ 2 0.8
    playsound ogg:mob.endermen.portal hostile @a ~ ~ ~ 2 1

# 画面エフェクト
    #title @a[distance=..30] times 5 15 20
    #title @a[distance=..30] title {"text":"\uE010","font":"screen_effect"}

# ボスドロ
    data modify storage api: Argument.ID set value 364
    data modify storage api: Argument.Important set value true
    execute positioned ~ ~1 ~ run function api:artifact/spawn/from_id

    data modify storage api: Argument.ID set value 1070
    data modify storage api: Argument.Important set value true
    execute positioned ~ ~1 ~ run function api:artifact/spawn/from_id

# 消滅
    execute as @e[type=item_display,distance=..0.1,sort=nearest,limit=1] run function animated_java:red_knight/remove/this
    kill @s

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_redknight",Active:false}]
    function asset:datapack/set_activation_state
