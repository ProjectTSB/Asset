#> asset:object/1206.precise_target/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1206/init

# 所有者のUserIDをscoreへ反映する (神器側が所有者のObjectを探すために使う)
    execute store result score @s UserID run data get storage asset:context this.UserID
