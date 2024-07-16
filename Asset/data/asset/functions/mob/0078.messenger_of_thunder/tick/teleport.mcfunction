#> asset:mob/0078.messenger_of_thunder/tick/teleport
#
# テレポートする
#
# @within function asset:mob/0078.messenger_of_thunder/tick/1

# 演出
    playsound block.respawn_anchor.charge hostile @a ~ ~ ~ 1 2 0

# ランダムでワープ
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    function lib:spread_entity/

# リセット
    data remove storage lib: Argument

# ワープのクールダウンを設定
    scoreboard players set @s 26.TPCool 30

# 自身のTagを削除
    tag @s remove 26.Teleport
