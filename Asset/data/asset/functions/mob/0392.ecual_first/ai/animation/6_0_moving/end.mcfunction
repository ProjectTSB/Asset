#> asset:mob/0392.ecual_first/ai/animation/6_0_moving/end
#
# 終了処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/6_0_moving/

# スコアをリセットする
    scoreboard players reset @s AW.AnimationNum
    scoreboard players set @s AW.AnimationTick 0

# 上位スキルタグがない場合は待機
    execute unless entity @s[tag=AW.SuperiorSkill] run function asset:mob/0392.ecual_first/ai/general/7.idle_motion_change
    execute unless entity @s[tag=AW.SuperiorSkill] run return 0

# ストレージを用意する
    data modify storage asset:temp AW.SKill set value []

# 上位スキル分岐
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..25] run data modify storage asset:temp AW.SKill append value 70
    data modify storage asset:temp AW.SKill append value 80
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..25] run data modify storage asset:temp AW.SKill append value 90
    data modify storage asset:temp AW.SKill append value 100

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
