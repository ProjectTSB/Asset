#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/warp
#
# 一旦消える
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/

# 回転停止
    tag @s remove 8N.PlayerFacing

# 回転移動停止
    tag @s remove 8N.RailMove

# 無敵になる
    tag @s add Uninterferable
    data modify entity @s Invulnerable set value 1b

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx

# アニメ
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/teleport_vanish/tween {duration:3,to_frame:0}
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run data modify entity @s teleport_duration set value 0
