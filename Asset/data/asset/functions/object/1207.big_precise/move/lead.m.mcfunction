#> asset:object/1207.big_precise/move/lead.m
#
# 実行者を、現在位置からワールド座標のずれだけ向きを変えずに移動する
#
# @input
#   as 実行者 at 実行者
#   args:
#     X : double (東西のずれ)
#     Y : double (上下のずれ)
#     Z : double (南北のずれ)
# @within function asset:object/1207.big_precise/move/lead

    $tp @s ~$(X) ~$(Y) ~$(Z) ~ ~
