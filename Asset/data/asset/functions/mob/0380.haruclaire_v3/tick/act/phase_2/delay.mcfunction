#> asset:mob/0380.haruclaire_v3/tick/act/phase_2/delay
#
# ディレイ系
#
# @within asset:mob/0380.haruclaire_v3/tick/act/phase_2/

# バイアス付き乱数でスキル選択
    data modify storage lib: Args.key set value "380.HaruclaireV3Delay"
    data modify storage lib: Args.max set value 3
    data modify storage lib: Args.scarcity_history_size set value 1
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# スコアに応じたスキルTagを付与
    execute if score $Random Temporary matches 0 run tag @s add AK.Skill.IceWallDuo
    execute if score $Random Temporary matches 1 run tag @s add AK.Skill.IcePillarDuo
    execute if score $Random Temporary matches 2 run tag @s add AK.Skill.IceSpinner

# リセット
    scoreboard players reset $Random Temporary
