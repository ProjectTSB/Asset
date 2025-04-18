#> asset:mob/0380.haruclaire_v3/tick/act/phase_2/normal
#
# 直接攻撃系
#
# @within asset:mob/0380.haruclaire_v3/tick/act/phase_2/

# バイアス付き乱数でスキル選択
    data modify storage lib: Args.key set value "380.HaruclaireV3Normal"
    data modify storage lib: Args.max set value 4
    data modify storage lib: Args.scarcity_history_size set value 2
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# スコアに応じたスキルTagを付与
    execute if score $Random Temporary matches 0 run tag @s add AK.Skill.Blade
    execute if score $Random Temporary matches 1 run tag @s add AK.Skill.Giant
    execute if score $Random Temporary matches 2 run tag @s add AK.Skill.IceBulletDuo
    execute if score $Random Temporary matches 3 run tag @s add AK.Skill.Press

# リセット
    scoreboard players reset $Random Temporary
