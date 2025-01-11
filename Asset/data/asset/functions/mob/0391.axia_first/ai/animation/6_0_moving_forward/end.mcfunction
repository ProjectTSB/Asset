#> asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/end
#
# 終了処理
#
# @within function asset:mob/0391.axia_first/ai/animation/6_0_moving_forward/

# リセット
    scoreboard players reset @s AV.UUID

# スコアをリセットする
    scoreboard players reset @s AV.AnimationNum
    scoreboard players set @s AV.AnimationTick 0

# ストレージを用意する
    data modify storage asset:temp AV.SKill set value []

# 敵がそれなりに近くにいる場合
    # 下位スキル -> 20 normal_slash + 30 triple_slash + 40 naginagi
    # 上位スキル -> 70 zangekihou
    execute unless entity @s[tag=AV.SuperiorSkill] if entity @p[tag=!PlayerShouldInvulnerable,distance=..5] run data modify storage asset:temp AV.SKill append value 20
    execute unless entity @s[tag=AV.SuperiorSkill] if entity @p[tag=!PlayerShouldInvulnerable,distance=..10] run data modify storage asset:temp AV.SKill append value 30
    execute unless entity @s[tag=AV.SuperiorSkill] if entity @p[tag=!PlayerShouldInvulnerable,distance=..10] run data modify storage asset:temp AV.SKill append value 40
    execute if entity @s[tag=AV.SuperiorSkill] if entity @p[tag=!PlayerShouldInvulnerable,distance=..15] run data modify storage asset:temp AV.SKill append value 70

# 上位スキル
    execute if entity @s[tag=AV.SuperiorSkill] if entity @p[tag=!PlayerShouldInvulnerable,distance=..25] run data modify storage asset:temp AV.SKill append value 90
    execute if entity @s[tag=AV.SuperiorSkill] if entity @p[tag=!PlayerShouldInvulnerable,distance=..25] run data modify storage asset:temp AV.SKill append value 100
    data modify storage asset:temp AV.SKill append value 80

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
