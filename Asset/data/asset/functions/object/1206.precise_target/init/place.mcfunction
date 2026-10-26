#> asset:object/1206.precise_target/init/place
#
# 的の向きと位置を、最初のtickを待たずに確定する
# 通常の的は局所オフセットを抽選し、同じ所有者の他の的と近すぎる場合は抽選し直す
#
# @input
#   as 的
#   storage asset:context this : 的のField
# @within function asset:object/1206.precise_target/init/

# 所有者を取得する
    function asset:object/1206.precise_target/owner/find

# 通常の的は、局所オフセットを抽選する (最大試行回数は8回 範囲が狭いので上限を設ける)
    scoreboard players set $Attempts Temporary 8
    tag @s add PreCise.Placing
    execute if data storage asset:context this{Chest:0,Center:0} at @s run function asset:object/1206.precise_target/init/roll
    tag @s remove PreCise.Placing

# 画面中央の的は、所有者の向きにする
    execute if data storage asset:context this{Center:1} at @s run function asset:object/1206.precise_target/direction/center

# チェストと画面中央の的は、所有者の目から1m先へ置く (通常の的は抽選の中で置いてある)
    execute unless data storage asset:context this{Chest:0,Center:0} at @s run function asset:object/1206.precise_target/move/follow

# リセット
    tag @a[tag=PreCise.Owner,distance=..16] remove PreCise.Owner
    scoreboard players reset $Attempts Temporary
