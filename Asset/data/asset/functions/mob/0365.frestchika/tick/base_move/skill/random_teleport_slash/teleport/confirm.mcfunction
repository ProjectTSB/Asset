#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/confirm
#
# テレポートを確定
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/spread

# 移動
    tp @s ~ ~ ~

# これの呼び出し元にて召喚したマーカーに向けて、見た目レーザーが伸びる
    execute positioned ~ ~1.5 ~ facing entity @e[type=marker,tag=A5.Marker.Teleport,distance=..64,sort=nearest,limit=1] feet run function asset:mob/0365.frestchika/tick/base_move/teleport/laser/summon

# 演出
    particle dust 0.0 0.7 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 25 normal @a
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.7

# アニメ
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/teleport/tween {to_frame: 0, duration: 1}
