#> asset:mob/0327.eclael/tick/app.general/check_target
#
# 汎用処理 ターゲット取得
#
# @within asset:mob/0327.eclael/tick/**

# 対象にタグを付与
    execute store result storage asset:temp 93.TargetUserId int 1 run scoreboard players get @s 93.TargetUserId
    function asset:mob/0327.eclael/tick/app.general/check_target.m with storage asset:temp 93

# 終了
    data remove storage asset:temp 93
