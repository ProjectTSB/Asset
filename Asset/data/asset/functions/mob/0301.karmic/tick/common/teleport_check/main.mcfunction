#> asset:mob/0301.karmic/tick/common/teleport_check/main
#
#
#
# @within function asset:mob/0301.karmic/tick/**

# プレイヤーがブロックの向こう側にいる場合テレポートタグを付与、また距離でも付与
    execute positioned ~ ~1 ~ facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0301.karmic/tick/common/teleport_check/block_check
    execute unless entity @s[tag=TeleportCheck] run data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    execute unless entity @s[tag=TeleportCheck] run function asset:mob/0301.karmic/tick/common/spread_tp/main
# タグ消し
    tag @s remove TeleportCheck
