#> asset:object/1207.big_precise/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1207/init

# 所有者のUserIDをscoreへ反映する (神器側が所有者のObjectを探すために使う)
    execute store result score @s UserID run data get storage asset:context this.UserID
