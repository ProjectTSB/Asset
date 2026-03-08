#> asset:object/2272.player_target_line/tick/rotate.m
#
# Objectのtick時の処理
#
# @within asset:object/2272.player_target_line/tick/

# ターゲット設定
    $tag @a[scores={UserID=$(TargetPlayerId)}] add 2272.TargetPlayer

# プレイヤーを向く
    execute facing entity @p[tag=2272.TargetPlayer] feet rotated ~ ~ run function lib:rotate_display/

# 距離測定
    execute as @p[tag=2272.TargetPlayer] run function lib:distance/as_to_at
    execute store result entity @s transformation.scale[2] float 0.001 run data get storage lib: Return.Distance 1000
    data remove storage lib: Return

# 終了
    tag @a[tag=2272.TargetPlayer] remove 2272.TargetPlayer
