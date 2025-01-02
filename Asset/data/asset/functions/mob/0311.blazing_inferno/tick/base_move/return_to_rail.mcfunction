#> asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail
#
# 自分の移動位置に戻る
#
# @within function asset:mob/0311.blazing_inferno/tick/**

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx

# テレポート
    execute at @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..64,sort=nearest,limit=1] facing entity @s feet rotated ~0.5 0 run tp @s ^ ^1 ^-15

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx

# モデルのテレポート時間修正しておく
    execute as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run data modify entity @s teleport_duration set value 1

# 円移動タグとこっち向くタグを付与
    tag @s add 8N.RailMove
    tag @s add 8N.PlayerFacing
