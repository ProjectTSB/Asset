#> asset:object/1207.big_precise/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1207/tick

# 所有者の状態を確認する
    function asset:object/1207.big_precise/tick/check_owner

# 所有者が存在しない、死亡中・スペクテイター、召喚した神器を持ち替えたなら消える
    execute unless score $Alive Temporary matches 1 run kill @s

# 所有者の頭上へ追従する (高さ3は頭上のオフセットで、1681の探索の起点と揃える)
    execute if score $Alive Temporary matches 1 at @p[tag=PreCise.Owner,distance=..16] run tp @s ~ ~3 ~

# 見た目が移動中の所有者に遅れるのを補うため、所有者の1tickの移動量だけ先へ進める
    execute if score $Alive Temporary matches 1 at @s run function asset:object/1207.big_precise/move/lead

# 1681: スニーク中は所有者が狙う敵の方、いなければ (スニーク中でなくても) 所有者と同じ向きを向く
    execute if score $Alive Temporary matches 1 if data storage asset:context this{ArtifactID:1681} at @s run function asset:object/1207.big_precise/direction/aim

# 1682: 横は所有者と同じ向き、縦は真下を向く
    execute if score $Alive Temporary matches 1 if data storage asset:context this{ArtifactID:1682} at @s rotated as @p[tag=PreCise.Owner,distance=..16] run tp @s ~ ~ ~ ~ 90

# 演出
    execute if score $Alive Temporary matches 1 at @s run particle dust 0.3 0.9 1 0.6 ~ ~ ~ 0 0 0 0 1

# リセット
    tag @a[tag=PreCise.Owner,distance=..16] remove PreCise.Owner
    scoreboard players reset $Alive Temporary
