#> asset:object/2203.sonicbomber_destroyed/tick/explode
#
#
#
# @within function asset:object/2203.sonicbomber_destroyed/tick/

# 音
    playsound entity.generic.explode hostile @a[distance=..128] ~ ~ ~ 1 0.5 1
    playsound minecraft:entity.breeze.death master @a[distance=..128] ~ ~ ~ 1 0.5 1

# particle
    particle flame ~ ~ ~ 1 1 1 0.1 500 force
    particle minecraft:large_smoke ~ ~0.5 ~ 1.2 1 1.2 0.1 500 force

# 破片召喚
    data modify storage api: Argument.ID set value 2204
    function api:object/summon

# remove aj
    execute on passengers if entity @s[tag=5X.ModelRoot] run function animated_java:terrible_sonic_bomber/remove/this

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_terrible_sonic_bomber",Active:false}]
    function asset:datapack/set_activation_state

# kill
    kill @s
