#> asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/boarder
#
# 「臆病風」デバフ付与したり外したりするエリア
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/

# 範囲内に自分のよりちょっと高いところにいるやつがいるなら、そいつにデバフを付与
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..256] positioned ~-64 ~5 ~-64 if entity @s[dx=127,dy=64,dz=127] run function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/give_check

# デバフの範囲外に出たらデバフを解除
    execute as @a[gamemode=!spectator,distance=..256] positioned ~-64 ~5 ~-64 unless entity @s[dx=127,dy=64,dz=127] run function asset:mob/0437.lawless_iron_doll/tick/base_move/chicken_out/remove_check
