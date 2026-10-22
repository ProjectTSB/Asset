#> asset:object/1206.precise_target/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1206/tick

# 所有者の状態を確認する
    function asset:object/1206.precise_target/tick/check_owner

# 所有者が存在しない、スニークをやめた、神器を持ち替えたなら消える
    execute unless score $Holding Temporary matches 1681..1682 run kill @s

# 所有者の目から1m先へ、保持している方角(自身のRotation)に従って追従する
    execute if score $Holding Temporary matches 1681..1682 run function asset:artifact/1681.pre_cise/shared/follow

# リセット
    tag @a[tag=PreCise.Owner,distance=..16] remove PreCise.Owner
    scoreboard players reset $Holding Temporary
