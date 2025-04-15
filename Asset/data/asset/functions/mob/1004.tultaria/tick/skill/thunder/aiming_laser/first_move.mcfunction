#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/first_move
#
# 攻撃開始時、付近のプレイヤーの周囲へ移動
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/tick

# アニメ
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right/tween {to_frame:0,duration:1}

# サウンド
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1 0.7

# ランダムな角度を指定して、そのデータを元に移動
    execute store result storage asset:temp Rotation int 1 run random value -180..180
    function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/move.m with storage asset:temp

# アイテム指定
    item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20075}
