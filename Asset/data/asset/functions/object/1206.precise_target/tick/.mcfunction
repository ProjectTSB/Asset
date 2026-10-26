#> asset:object/1206.precise_target/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1206/tick

# 所有者の状態を確認する
    function asset:object/1206.precise_target/tick/check_owner

# 所有者が存在しない、死亡中・スペクテイター、スニークをやめた、召喚した神器を持ち替えたなら消える
    execute unless score $Alive Temporary matches 1 run kill @s

# 通常の的は、所有者が狙う敵の方向を基準に、局所オフセットだけずれた方角を自身のRotationにする
    execute if score $Alive Temporary matches 1 if data storage asset:context this{Chest:0,Center:0} run function asset:object/1206.precise_target/direction/aim.m with storage asset:context this

# 画面中央の的は、所有者の向きを自身のRotationにする
    execute if score $Alive Temporary matches 1 if data storage asset:context this{Center:1} run function asset:object/1206.precise_target/direction/center

# 所有者の目から1m先へ、自身のRotationの方角に従って追従する
    execute if score $Alive Temporary matches 1 run function asset:object/1206.precise_target/move/follow

# 見た目が移動中の所有者に遅れるのを補うため、所有者の1tickの移動量だけ先へ進める (命中判定は補正なしのfollowで行う)
    execute if score $Alive Temporary matches 1 at @s run function asset:object/1206.precise_target/move/lead

# リセット
    tag @a[tag=PreCise.Owner,distance=..16] remove PreCise.Owner
    scoreboard players reset $Alive Temporary
