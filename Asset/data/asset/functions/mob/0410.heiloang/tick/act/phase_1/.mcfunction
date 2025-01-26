#> asset:mob/0410.heiloang/tick/act/phase_1/
#
# フェーズ1
#
# @within asset:mob/0410.heiloang/tick/act/


# 最初に戻る
    execute if score @s BE.ActCount matches 7.. run scoreboard players set @s BE.ActCount 1

# 3属性技
    execute if score @s BE.ActCount matches ..1 run function asset:mob/0410.heiloang/tick/act/phase_1/element.m {Count:1}

# 待機
    execute if score @s BE.ActCount matches 2 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# 3属性技
    execute if score @s BE.ActCount matches 3 run function asset:mob/0410.heiloang/tick/act/phase_1/element.m {Count:2}

# 待機
    execute if score @s BE.ActCount matches 4 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3

# 3属性技
    execute if score @s BE.ActCount matches 5 run function asset:mob/0410.heiloang/tick/act/phase_1/element.m {Count:3}

# 待機
    execute if score @s BE.ActCount matches 6.. as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3
