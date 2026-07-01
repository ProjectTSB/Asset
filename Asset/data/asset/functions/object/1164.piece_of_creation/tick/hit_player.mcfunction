#> asset:object/1164.piece_of_creation/tick/hit_player
#
# playerにヒットしたときの処理
#
# @within function asset:object/1164.piece_of_creation/tick/

# 演出
    playsound minecraft:entity.arrow.hit_player player @a ~0.5 ~0.5 ~0.5 0.6 2 0.0
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 2.0 0.9 0.0
    playsound minecraft:block.glass.break player @a ~ ~ ~ 1.0 1.4 0.0
    particle minecraft:dust_color_transition 1 0.4 1 0.8 0.2 0.8 1 ~ ~ ~ 2 2 2 1 40
    particle minecraft:dust_color_transition 1 0.4 1 0.8 0.2 0.8 1 ~ ~ ~ 0.4 0.4 0.4 1 40
    particle end_rod ~0.5 ~0.5 ~0.5 0 0 0 0.2 20

# hitしたプレイヤーにMP回復量バフを与える
    data modify storage api: Argument.ID set value 373
    data modify storage api: Argument.Duration set from storage asset:context this.Duration
    data modify storage api: Argument.Stack set from storage asset:context this.Stack
    data modify storage api: Argument.FieldOverride.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.FieldOverride.DecreaInterval set from storage asset:context this.DecreaInterval
    execute as @a[gamemode=!spectator,tag=!Death,dx=0,limit=1] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 消滅処理
    kill @s
