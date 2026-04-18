#> asset:object/2262.gem_panjan_drone/tick/move_to_player.m
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_move

# ターゲット設定
    $tag @a[scores={UserID=$(TargetPlayerId)}] add 2262.TargetPlayer

# 対象の方を向く
    execute rotated ~ 0 positioned ^ ^ ^-1 facing entity @p[tag=2262.TargetPlayer] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0

# 移動
    execute at @s unless block ^ ^-1 ^0.5 #lib:no_collision run tp @s ^ ^ ^0.3

# ある程度プレイヤーに近づいたら攻撃開始
    execute if entity @a[tag=2262.TargetPlayer,distance=..1.5] run scoreboard players set @s General.Object.Tick 200

# 終了
    tag @a[tag=2262.TargetPlayer] remove 2262.TargetPlayer
