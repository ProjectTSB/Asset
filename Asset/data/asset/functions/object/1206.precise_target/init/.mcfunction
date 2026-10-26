#> asset:object/1206.precise_target/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1206/init

# 所有者のUserIDをscoreへ反映する (神器側が所有者のObjectを探すために使う)
    execute store result score @s UserID run data get storage asset:context this.UserID

# 召喚した神器のタグを付ける (神器側が自分の神器が召喚したObjectだけを探すために使う)
    execute if data storage asset:context this{ArtifactID:1681} run tag @s add PreCise.Source1681
    execute if data storage asset:context this{ArtifactID:1682} run tag @s add PreCise.Source1682

# 画面中央の的はタグを付ける (神器側が命中判定の位置を求める向きを選ぶために使う)
    execute if data storage asset:context this{Center:1} run tag @s add PreCise.Center

# 最初のtickを待たず、所有者の目から1m先の位置に置く
    function asset:object/1206.precise_target/init/place
