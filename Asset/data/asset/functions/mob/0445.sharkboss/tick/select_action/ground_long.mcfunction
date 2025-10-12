#> asset:mob/0445.sharkboss/tick/select_action/ground_long
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/445/tick/

# バイアス付き乱数でスキル選択
    data modify storage lib: Args.key set value "CD.SharkbossGL"

# 攻撃ガチャ
    data modify storage lib: Args.max set value 3
    data modify storage lib: Args.scarcity_history_size set value 2

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args


# 攻撃ガチャ
    execute if score $Random Temporary matches 0 run tag @s add CD.Action.WaterGun1
    execute if score $Random Temporary matches 1 run tag @s add CD.Action.WaterGun2
    execute if score $Random Temporary matches 2 run tag @s add CD.Action.Rush

# 乱数リセット
    scoreboard players reset $Random Temporary