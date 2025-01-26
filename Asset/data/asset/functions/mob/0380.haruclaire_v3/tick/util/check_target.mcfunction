#> asset:mob/0380.haruclaire_v3/tick/util/check_target
#
# 汎用処理 ターゲットの有無を確認する
#
# @within asset:mob/0380.haruclaire_v3/tick/event/**

# ターゲットが居れば処理しない
    execute if entity @a[tag=AK.MainTarget,distance=..80] run return 0

# ターゲットが居なければ最も近いプレイヤーをターゲットに更新
    tag @a remove AK.MainTarget
    tag @p[distance=..80] add AK.MainTarget
