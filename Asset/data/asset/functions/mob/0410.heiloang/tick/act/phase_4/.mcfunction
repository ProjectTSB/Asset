#> asset:mob/0410.heiloang/tick/act/phase_4/
#
# フェーズ2
#
# @within asset:mob/0410.heiloang/tick/act/

# 最初に戻る
    # execute if score @s BE.ActCount matches 17.. run scoreboard players set @s BE.ActCount 2

# パワーチャージ一定以下の場合は最初に戻る
    execute if score @s BE.ActCount matches 8.. run scoreboard players set @s BE.ActCount 2

# ヘイルディザスター
    execute if score @s BE.ActCount matches 1 run tag @s add BE.Skill.HeilDisaster

# フレア
    execute if score @s BE.ActCount matches 2 run tag @s add BE.Skill.Flare

# 待機
    execute if score @s BE.ActCount matches 3 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 5

# 急降下
    execute if score @s BE.ActCount matches 4 run tag @s add BE.Skill.Plamet

# パワーブレス
    execute if score @s BE.ActCount matches 5 run scoreboard players set @s BE.Pb.Count 4
    execute if score @s BE.ActCount matches 5 run scoreboard players operation @s BE.Pb.Count += @s BE.Charge.Count
    execute if score @s BE.ActCount matches 5 run tag @s add BE.Skill.PowerBreath

# 待機
    execute if score @s BE.ActCount matches 6 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# パワーチャージ
    execute if score @s BE.ActCount matches 7 run tag @s add BE.Skill.PowerCharge

# # フレア
#     execute if score @s BE.ActCount matches 2 run tag @s add BE.Skill.Flare

# # 待機
#     execute if score @s BE.ActCount matches 3 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 5

# # 急降下
#     execute if score @s BE.ActCount matches 4 run tag @s add BE.Skill.Plamet

# # パワーブレス4回
#     execute if score @s BE.ActCount matches 5 run tag @s add BE.Skill.PowerBreath
#     execute if score @s BE.ActCount matches 5 run scoreboard players set @s BE.Pb.Count 4

# # 待機
#     execute if score @s BE.ActCount matches 6 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# # フレア
#     execute if score @s BE.ActCount matches 7 run tag @s add BE.Skill.Flare

# # 待機
#     execute if score @s BE.ActCount matches 8 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 5

# # 急降下
#     execute if score @s BE.ActCount matches 9 run tag @s add BE.Skill.Plamet

# # パワーブレス5回
#     execute if score @s BE.ActCount matches 10 run tag @s add BE.Skill.PowerBreath
#     execute if score @s BE.ActCount matches 10 run scoreboard players set @s BE.Pb.Count 5

# # 待機
#     execute if score @s BE.ActCount matches 11 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# # フレア
#     execute if score @s BE.ActCount matches 12 run tag @s add BE.Skill.Flare

# # 待機
#     execute if score @s BE.ActCount matches 13 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 5

# # 急降下
#     execute if score @s BE.ActCount matches 14 run tag @s add BE.Skill.Plamet

# # パワーブレス6回
#     execute if score @s BE.ActCount matches 15 run tag @s add BE.Skill.PowerBreath
#     execute if score @s BE.ActCount matches 15 run scoreboard players set @s BE.Pb.Count 6

# # 待機
#     execute if score @s BE.ActCount matches 16 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 6
