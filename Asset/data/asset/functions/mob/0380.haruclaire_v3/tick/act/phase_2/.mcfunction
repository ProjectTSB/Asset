#> asset:mob/0380.haruclaire_v3/tick/act/phase_2/
#
# 後半戦
#
# @within asset:mob/0380.haruclaire_v3/tick/act/

# 行動回数増加
    scoreboard players add @s AK.ActionCount 1

# 待機
    execute if score @s AK.ActionCount matches 1 run return 0
    execute if score @s AK.ActionCount matches 11 run return 0
    execute if score @s AK.ActionCount matches 16 run return 0
    execute if score @s AK.ActionCount matches 21..22 run return 0
    execute if score @s AK.ActionCount matches 23.. run return run scoreboard players set @s AK.ActionCount 2

# 中心への移動
    execute if score @s AK.ActionCount matches 6 run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/move_to_center
    execute if score @s AK.ActionCount matches 14 run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/move_to_center
    execute if score @s AK.ActionCount matches 18 run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/move_to_center

# アイスクリメーション
    execute if score @s AK.ActionCount matches 10 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation
    execute if score @s AK.ActionCount matches 15 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation
    execute if score @s AK.ActionCount matches 20 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation

# バイアス付き乱数でスキル選択
    data modify storage lib: Args.key set value "380.HaruclaireV3"
    data modify storage lib: Args.max set value 6
    data modify storage lib: Args.scarcity_history_size set value 5
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# スコアに応じたスキルTagを付与
    execute if score $Random Temporary matches 0 run tag @s add AK.Skill.Blade
    execute if score $Random Temporary matches 1 run tag @s add AK.Skill.Giant
    execute if score $Random Temporary matches 2 run tag @s add AK.Skill.IceBulletDuo
    execute if score $Random Temporary matches 3 run tag @s add AK.Skill.IceWallDuo
    execute if score $Random Temporary matches 4 run tag @s add AK.Skill.IcePillarDuo
    execute if score $Random Temporary matches 5 run tag @s add AK.Skill.Press

# リセット
    scoreboard players reset $Random Temporary
