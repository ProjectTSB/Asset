#> asset:mob/0380.haruclaire_v3/tick/act/phase_1/
#
# 前半戦
#
# @within asset:mob/0380.haruclaire_v3/tick/act/

# 行動回数増加
    scoreboard players add @s AK.ActionCount 1

# 行動回数一定毎に待機
    execute if score @s AK.ActionCount matches 5 run return 0
    execute if score @s AK.ActionCount matches 12 run return 0
    execute if score @s AK.ActionCount matches 16 run return 0
    execute if score @s AK.ActionCount matches 21.. run return run scoreboard players set @s AK.ActionCount 0

# 行動回数一定毎にぶん殴りに行く
# 近づく機会を増やし、近接でも攻撃しやすくするため
    execute if score @s AK.ActionCount matches 3 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_1/punch
    execute if score @s AK.ActionCount matches 11 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_1/punch
    execute if score @s AK.ActionCount matches 17 run return run function asset:mob/0380.haruclaire_v3/tick/act/phase_1/punch

# 行動回数一定毎にレーザーを使用
    execute if score @s AK.ActionCount matches 20 run return run tag @s add AK.Skill.IceLaser

# バイアス付き乱数でスキル選択
    data modify storage lib: Args.key set value "380.HaruclaireV3"
    data modify storage lib: Args.max set value 6
    data modify storage lib: Args.scarcity_history_size set value 5
# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/with_biased/manual.m with storage lib: Args

# スコアに応じたスキルTagを付与
    execute if score $Random Temporary matches 0 run tag @s add AK.Skill.IceBullet
    execute if score $Random Temporary matches 1 run tag @s add AK.Skill.IceWall
    execute if score $Random Temporary matches 2 run tag @s add AK.Skill.IceSiege
    execute if score $Random Temporary matches 3 run tag @s add AK.Skill.IceSpear
    execute if score $Random Temporary matches 4 run tag @s add AK.Skill.SuperIceBullet
    execute if score $Random Temporary matches 5 run tag @s add AK.Skill.IcePillar

# リセット
    scoreboard players reset $Random Temporary
