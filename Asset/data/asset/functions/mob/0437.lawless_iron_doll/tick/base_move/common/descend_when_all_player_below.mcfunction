#> asset:mob/0437.lawless_iron_doll/tick/base_move/common/descend_when_all_player_below
#
# 全てのプレイヤーが下にいるなら降りる
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/**

# 周囲のプレイヤーが上にいない && 下が当たり判定のないブロックなら降りる
    execute if entity @s[tag=!C5.Moveset.Intro] at @p[gamemode=!spectator,distance=..256] positioned ~-50 ~-1 ~-50 unless entity @s[dx=99,dy=-50,dz=99] at @s if block ~ ~-0.25 ~ #lib:no_collision/ run tp @s ~ ~-0.25 ~
