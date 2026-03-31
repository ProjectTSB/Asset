#> asset:mob/0456.gargo_ex_machina/tick/util/change_target
#
# ターゲット変更
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# ターゲットをランダムに指定
    tag @a remove CO.MainTarget
    tag @r[tag=!PlayerShouldInvulnerable,distance=..80] add CO.MainTarget
    execute unless entity @a[tag=CO.MainTarget,distance=..80] run tag @r[distance=..80] add CO.MainTarget
