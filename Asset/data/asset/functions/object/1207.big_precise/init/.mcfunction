#> asset:object/1207.big_precise/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1207/init

# 所有者のUserIDをscoreへ反映する (神器側が所有者のObjectを探すために使う)
    execute store result score @s UserID run data get storage asset:context this.UserID

# 召喚した神器のタグを付ける (神器側が自分の神器が召喚したObjectだけを探すために使う)
    execute if data storage asset:context this{ArtifactID:1681} run tag @s add PreCise.Source1681
    execute if data storage asset:context this{ArtifactID:1682} run tag @s add PreCise.Source1682
