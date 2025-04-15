#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/start
#
# 開始時の動作
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick

# 一番近くのプレイヤーの方を即座に向く
    execute facing entity @p[gamemode=!spectator,distance=..32] feet run tp @s ~ ~ ~ ~ 0

# アニメ再生
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/jump/tween {to_frame: 0, duration: 1}

# サウンド
    playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 2 1.2
