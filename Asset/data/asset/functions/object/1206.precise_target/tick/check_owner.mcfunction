#> asset:object/1206.precise_target/tick/check_owner
#
# 所有者がスニーク中で、この的を召喚した神器をメインハンドに持っているか調べる
#
# @input
#   as 的
#   storage asset:context this.ArtifactID : 召喚した神器のID (1681か1682)
# @output
#   score $Alive Temporary : 条件を満たす場合は1 (呼出側が消す)
#   tag PreCise.Owner : 所有者 (呼出側が外す)
# @within function asset:object/1206.precise_target/tick/

# 所有者を取得する
    function asset:object/1206.precise_target/owner/find

# 所有者がスニーク中に、召喚した神器をメインハンドに持っているか調べる
    scoreboard players set $Alive Temporary 0
    execute if data storage asset:context this{ArtifactID:1681} as @p[tag=PreCise.Owner,distance=..16] if predicate asset:object/1206.precise_target/holding_1681 run scoreboard players set $Alive Temporary 1
    execute if data storage asset:context this{ArtifactID:1682} as @p[tag=PreCise.Owner,distance=..16] if predicate asset:object/1206.precise_target/holding_1682 run scoreboard players set $Alive Temporary 1
