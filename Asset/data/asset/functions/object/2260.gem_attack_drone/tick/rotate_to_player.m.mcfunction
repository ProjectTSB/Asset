#> asset:object/2260.gem_attack_drone/tick/rotate_to_player.m
#
# Objectのtick時の処理
#
# @within asset:object/2260.gem_attack_drone/tick/event_idle

# ターゲット設定
    $tag @a[scores={UserID=$(TargetPlayerId)}] add 2260.TargetPlayer

# 対象の方を向く
    execute rotated ~ 0 positioned ^ ^ ^-1 facing entity @p[tag=2260.TargetPlayer] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0

# 終了
    tag @a[tag=2260.TargetPlayer] remove 2260.TargetPlayer
