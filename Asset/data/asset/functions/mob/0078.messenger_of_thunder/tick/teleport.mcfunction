#> asset:mob/0078.messenger_of_thunder/tick/teleport
#
# テレポートする
#
# @within function asset:mob/0078.messenger_of_thunder/tick/

# 演出
    playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 1 2 0

# プレイヤーの位置で拡散する
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    execute at @p[gamemode=!spectator,distance=..50] run function lib:spread_entity/

# Tickを少し戻す
    scoreboard players remove @s General.Mob.Tick 10

# ワープのクールダウンを設定
    scoreboard players set @s 26.TPCool 30

# 自身のTagを削除
    tag @s remove 26.Teleport
