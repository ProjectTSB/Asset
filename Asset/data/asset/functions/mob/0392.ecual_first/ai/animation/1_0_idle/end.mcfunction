#> asset:mob/0392.ecual_first/ai/animation/1_0_idle/end
#
# 終了処理
#
# @within function
#   asset:mob/0392.ecual_first/ai/animation/1_0_idle/
#   asset:mob/0392.ecual_first/ai/animation/1_1_idle_rare/

# スコアをリセットする
    scoreboard players reset @s AW.AnimationNum
    scoreboard players set @s AW.AnimationTick 0

# ストレージを用意する
    data modify storage asset:temp AW.SKill set value []

# 上位スキル分岐
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..25] run data modify storage asset:temp AW.SKill append value 20
    data modify storage asset:temp AW.SKill append value 30
    data modify storage asset:temp AW.SKill append value 40
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..25] run data modify storage asset:temp AW.SKill append value 50
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..25] run data modify storage asset:temp AW.SKill append value 51

# データシャッフル
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:temp AW.SKill
    function lib:array/shuffle

# 1番目のデータをスコアに代入
    execute store result score @s AW.AnimationNum run data get storage lib: Array[0]

# セッション閉じる
    function lib:array/session/close

# リセット
    data remove storage asset:temp AW
