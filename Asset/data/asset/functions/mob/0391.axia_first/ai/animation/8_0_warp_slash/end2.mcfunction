#> asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/end2
#
# 終了処理 分岐
#
# @within function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/end

# ストレージを用意する
    data modify storage asset:temp AV.SKill set value []

# 敵がそれなりに近くにいる場合 -> 70 zangekihou
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..15] run data modify storage asset:temp AV.SKill append value 70

# 近すぎず遠すぎない場合、移動する -> 60,62,63 moving
    data modify storage asset:temp AV.Temp set value [60,62,63]
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=5..20] run data modify storage asset:temp AV.SKill append from storage asset:temp AV.Temp[]

# データが入ってない場合 -> 80 warp_slash
    execute unless data storage asset:temp AV.SKill[0] run data modify storage asset:temp AV.SKill append value 80

# データシャッフル
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp AV.SKill
    function lib:array/shuffle

# 1番目のデータをスコアに代入
    execute store result score @s AV.AnimationNum run data get storage lib: Array[0]

# セッション閉じる
    function lib:array/session/close

# リセット
    data remove storage asset:temp AV
