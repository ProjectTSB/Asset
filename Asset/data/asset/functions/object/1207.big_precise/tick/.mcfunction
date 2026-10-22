#> asset:object/1207.big_precise/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1207/tick

# 所有者の状態を確認する
    function asset:object/1206.precise_target/tick/check_owner

# 所有者が存在しない、スニークをやめた、神器を持ち替えたなら消える
    execute unless score $Holding Temporary matches 1681..1682 run kill @s

# 所有者の頭上へ追従する (高さ3は頭上のオフセット)
    execute if score $Holding Temporary matches 1681..1682 at @p[tag=PreCise.Owner,distance=..16] run tp @s ~ ~3 ~

# 1681: 近くの敵の方、いなければ所有者と同じ向きを向く
    execute if score $Holding Temporary matches 1681 at @s run function asset:object/1207.big_precise/tick/aim

# 1682: 横は所有者と同じ向き、縦は真下を向く
    execute if score $Holding Temporary matches 1682 at @s rotated as @p[tag=PreCise.Owner,distance=..16] run tp @s ~ ~ ~ ~ 90

# 演出
    execute if score $Holding Temporary matches 1681..1682 at @s run particle dust 0.3 0.9 1 0.6 ~ ~ ~ 0 0 0 0 1

# リセット
    tag @a[tag=PreCise.Owner,distance=..16] remove PreCise.Owner
    scoreboard players reset $Holding Temporary
