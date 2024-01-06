#> asset:mob/0341.louvert/death/2.3.kill
#
# キル処理
#
# @within function asset:mob/0341.louvert/death/2.2.death_animation

# AnimatedJavaモデルの削除
    function animated_java:louvert/remove/all
# Marker削除
    kill @s
# パーティクル処理
    particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    playsound entity.generic.explode hostile @a ~ ~ ~ 1 1