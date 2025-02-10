#> asset:mob/0410.heiloang/tick/act/phase_3/
#
# フェーズ2
#
# @within asset:mob/0410.heiloang/tick/act/

# 最初に戻る
    # execute if score @s BE.ActCount matches 17.. run scoreboard players set @s BE.ActCount 1

# 眷属召喚
    execute if score @s BE.ActCount matches 1 run tag @s add BE.Skill.CallServants

# 待機
    execute if score @s BE.ActCount matches 2 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 30

# テルツェット・サクセッション
    execute if score @s BE.ActCount matches 3 run tag @s add BE.Skill.Ter.Succ.Start

# 待機
    execute if score @s BE.ActCount matches 4 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 15

# テルツェット・ディザスター
    execute if score @s BE.ActCount matches 5 run tag @s add BE.Skill.Ter.Dis.Start

# 待機
    execute if score @s BE.ActCount matches 6 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 15

# テルツェット・アライニング
    execute if score @s BE.ActCount matches 7 run tag @s add BE.Skill.Ter.Alig.Start

# 待機
    execute if score @s BE.ActCount matches 8 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 15

# テルツェット・プルガトリオ
    execute if score @s BE.ActCount matches 9 run tag @s add BE.Skill.Ter.Purg.Start

# 待機
    execute if score @s BE.ActCount matches 10 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 15

# テルツェット・ラグナレク
    execute if score @s BE.ActCount matches 11 run tag @s add BE.Skill.Ter.Rag.Start

# 待機
    # execute if score @s BE.ActCount matches 2 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 12
