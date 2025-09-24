#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/warp
#
# プレイヤーの目の前に出てくる
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/tick

# 回転停止
    tag @s remove 8N.PlayerFacing

# 回転移動停止
    tag @s remove 8N.RailMove

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx

# アニメ
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_oraora_windup/tween {duration:3,to_frame:0}

# テレポート
    execute at @r[gamemode=!spectator,distance=..64] rotated ~ 0 run tp @s ^ ^0.5 ^2 ~ ~

# 最寄りのプレイヤーに向く
    execute at @s facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx
