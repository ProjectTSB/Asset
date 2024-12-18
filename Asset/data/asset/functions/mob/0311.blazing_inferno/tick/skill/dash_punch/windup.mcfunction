#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/windup
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick

# アニメ
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_oraora_windup/tween {duration:3,to_frame:0}

# サウンド
    playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:block.respawn_anchor.ambient hostile @a ~ ~ ~ 2 2
