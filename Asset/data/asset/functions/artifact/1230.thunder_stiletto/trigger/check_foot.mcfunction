#> asset:artifact/1230.thunder_stiletto/trigger/check_foot
#
#
#
# @within function asset:artifact/1230.thunder_stiletto/trigger/3.main

# 2ブロック下までチェック
    execute unless block ~ ~-1 ~ #lib:no_collision run return fail
    execute unless block ~ ~-2 ~ #lib:no_collision run return fail

# 成功
    return 1
