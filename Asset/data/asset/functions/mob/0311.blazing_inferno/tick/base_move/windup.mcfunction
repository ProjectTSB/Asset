#> asset:mob/0311.blazing_inferno/tick/base_move/windup
#
# スキル前の予備動作
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/

# アニメ
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_oraora_windup/tween {duration:3,to_frame:0}

# パーティクル
    particle dust 1 0.45 0 1.5 ~ ~1 ~ 0.5 0.5 0.5 1 50 force @a[gamemode=!spectator,distance=..60]
    particle dust 1 0.7 0 1 ~ ~1 ~ 0.5 0.5 0.5 1 50 force @a[gamemode=!spectator,distance=..60]

# サウンド
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 1
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.8
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 3 0.8
