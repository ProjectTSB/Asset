#> asset:mob/0380.haruclaire_v3/tick/util/check_target
#
# 汎用処理 ターゲットの有無を確認する
#
# @within asset:mob/0380.haruclaire_v3/tick/event/**

# ターゲットが居れば処理しない
    execute if entity @a[gamemode=!spectator,tag=AK.MainTarget,distance=..80,limit=1] run return 0

# ターゲットが居なければ最も近いプレイヤーをターゲットに更新
    tag @a[tag=AK.MainTarget] remove AK.MainTarget
    tag @p[gamemode=!spectator,distance=..80] add AK.MainTarget
