#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/teleport
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/

# 無敵解除
    tag @s remove Uninterferable
    data modify entity @s Invulnerable set value 0b

# テレポート
    tp @s ~ ~ ~

# テレポート演出
    execute positioned ~ ~6.4 ~ run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx

# アニメ
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_fall/tween {duration:1,to_frame:0}

# マーカーキル
    kill @e[type=marker,tag=8N.Marker.Target,sort=nearest,limit=1]
