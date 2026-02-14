#> asset:mob/0456.gargo_ex_machina/tick/util/change_target
#
# ターゲットを向く
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# ターゲットをランダムに指定
    tag @a remove CO.MainTarget
    tag @r[distance=..80] add CO.MainTarget
