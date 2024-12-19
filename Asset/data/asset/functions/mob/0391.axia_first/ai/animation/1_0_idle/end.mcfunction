#> asset:mob/0391.axia_first/ai/animation/1_0_idle/end
#
# 終了処理
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/1_0_idle/
#   asset:mob/0391.axia_first/ai/animation/1_1_idle_rare/

# デバッグ用　アニメーションループ
#    scoreboard players set @s AV.AnimationNum 10
#    scoreboard players set @s AV.AnimationTick 0

# 上位スキルタグリセット
    tag @s remove AV.SuperiorSkill

# 怯みカウントリセット
    scoreboard players set @s AV.FalterCount 0

# スコアをリセットする
    scoreboard players reset @s AV.AnimationNum
    scoreboard players set @s AV.AnimationTick 0

# ストレージを用意する
    data modify storage asset:temp AV.SKill set value []

# 敵がかなり近くにいる場合 -> 20 normal_slash
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..5] run data modify storage asset:temp AV.SKill append value 20

# 敵がそれなりに近くにいる場合 -> 30 triple_slash + 40 naginagi
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..10] run data modify storage asset:temp AV.SKill append value 40
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..10] run data modify storage asset:temp AV.SKill append value 30

# 近すぎず遠すぎない場合、移動する -> 60,62,63 moving
    data modify storage asset:temp AV.Temp set value [60,62,63]
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=5..25] run data modify storage asset:temp AV.SKill append from storage asset:temp AV.Temp[]

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
