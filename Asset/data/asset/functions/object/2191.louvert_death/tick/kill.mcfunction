#> asset:object/2191.louvert_death/tick/kill
#
# キル
#
# @within function asset:object/2191.louvert_death/tick/

# AnimatedJavaモデルの削除
    function animated_java:louvert/remove/all

# パーティクル処理
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

# ボスドロ
    data modify storage api: Argument.ID set value 1258
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id

# キル
    kill @s
