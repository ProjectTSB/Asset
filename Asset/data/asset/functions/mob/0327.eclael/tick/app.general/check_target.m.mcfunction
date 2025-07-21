#> asset:mob/0327.eclael/tick/app.general/check_target.m
#
# 汎用処理 ターゲット取得
#
# @within asset:mob/0327.eclael/tick/**

# 対象にタグを付与
    $tag @a[scores={UserID=$(TargetUserId)}] add 93.Temp.Target
