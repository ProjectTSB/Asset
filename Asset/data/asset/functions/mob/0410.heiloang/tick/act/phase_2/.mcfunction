#> asset:mob/0410.heiloang/tick/act/phase_2/
#
# フェーズ2
#
# @within asset:mob/0410.heiloang/tick/act/

# 最初に戻る
    execute if score @s BE.ActCount matches 9.. run scoreboard players set @s BE.ActCount 2

# エンハンスドディザスター・移動
    execute if score @s BE.ActCount matches ..1 run tag @s add BE.Skill.Ehd

# 待機
    execute if score @s BE.ActCount matches 2 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# 竜巻
    execute if score @s BE.ActCount matches 3 run tag @s add BE.Skill.Tornado

# 待機
    execute if score @s BE.ActCount matches 4 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# ツイスター
    execute if score @s BE.ActCount matches 5 run tag @s add BE.Skill.Tempest

# 順番リセット
    execute if score @s BE.ActCount matches 6 run function asset:mob/0410.heiloang/tick/util/set_ehd_order

# 3属性技
    execute if score @s BE.ActCount matches 6 run function asset:mob/0410.heiloang/tick/act/phase_1/element.m {Count:1}

# 待機
    execute if score @s BE.ActCount matches 7 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# 3属性技
    execute if score @s BE.ActCount matches 8 run function asset:mob/0410.heiloang/tick/act/phase_1/element.m {Count:2}

# 待機
    execute if score @s BE.ActCount matches 9 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# 3属性技
    execute if score @s BE.ActCount matches 10 run function asset:mob/0410.heiloang/tick/act/phase_1/element.m {Count:3}
