#> asset:mob/0410.heiloang/tick/act/phase_4/
#
# フェーズ2
#
# @within asset:mob/0410.heiloang/tick/act/

# 最初に戻る
    execute if score @s BE.ActCount matches 12.. run scoreboard players set @s BE.ActCount 1

# ヘイルディザスター
    execute if score @s BE.ActCount matches 1 run tag @s add BE.Skill.HeilDisaster

# フレア
    execute if score @s BE.ActCount matches 2 run tag @s add BE.Skill.Flare

# 急降下
    execute if score @s BE.ActCount matches 3 run tag @s add BE.Skill.Plamet

# パワーブレス
    execute if score @s BE.ActCount matches 4 run tag @s add BE.Skill.PowerBreath
    execute if score @s BE.ActCount matches 4 run scoreboard players set @s BE.Pb.Count 4

# フレア
    execute if score @s BE.ActCount matches 5 run tag @s add BE.Skill.Flare

# 急降下
    execute if score @s BE.ActCount matches 6 run tag @s add BE.Skill.Plamet

# パワーブレス
    execute if score @s BE.ActCount matches 7 run tag @s add BE.Skill.PowerBreath
    execute if score @s BE.ActCount matches 7 run scoreboard players set @s BE.Pb.Count 5

# フレア
    execute if score @s BE.ActCount matches 8 run tag @s add BE.Skill.Flare

# テンペスト
    execute if score @s BE.ActCount matches 9 run tag @s add BE.Skill.Tempest

# 急降下
    execute if score @s BE.ActCount matches 10 run tag @s add BE.Skill.Plamet

# パワーブレス
    execute if score @s BE.ActCount matches 11 run tag @s add BE.Skill.PowerBreath
    execute if score @s BE.ActCount matches 11 run scoreboard players set @s BE.Pb.Count 6
