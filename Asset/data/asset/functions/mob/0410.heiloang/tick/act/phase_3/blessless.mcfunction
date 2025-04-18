#> asset:mob/0410.heiloang/tick/act/phase_3/blessless
#
# フェーズ3
#
# @within asset:mob/0410.heiloang/tick/act/phase_3/

# 眷属召喚
    execute if score @s BE.ActCount matches 1 run tag @s add BE.Skill.CallServants

# 待機
    execute if score @s BE.ActCount matches 2 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 15

# テルツェット・サクセッション
    execute if score @s BE.ActCount matches 3 run tag @s add BE.Skill.Ter.Succ.Start

# 待機
    execute if score @s BE.ActCount matches 4 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 10

# テルツェット・プルガトリオ
    execute if score @s BE.ActCount matches 5 run tag @s add BE.Skill.Ter.Purg.Start

# 待機
    execute if score @s BE.ActCount matches 6 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 10

# テルツェット・ラグナレク
    execute if score @s BE.ActCount matches 7 run tag @s add BE.Skill.Ter.Rag.Start

# フェーズ4に移行
    execute if score @s BE.ActCount matches 8 run function asset:mob/0410.heiloang/tick/act/phase_3/change_phase

## 以下、途中で眷属が片方倒された場合
# 待機
    execute if score @s BE.ActCount matches 21 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 6

# ソウルオファリング
    execute if score @s BE.ActCount matches 22 run tag @s add BE.Skill.Offering

# フェーズ4に移行
    execute if score @s BE.ActCount matches 23 run function asset:mob/0410.heiloang/tick/act/phase_3/change_phase

# 待機
    # execute if score @s BE.ActCount matches 2 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 12
