#> asset:mob/0456.gargo_ex_machina/tick/act/phase_1/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/

# 最初に戻る
    execute if score @s CO.Counter matches 7.. run scoreboard players set @s CO.Counter 1

# 3属性技
    # execute if score @s CO.Counter matches ..1 run function asset:mob/0410.heiloang/tick/act/phase_1/element.m {Count:1}

# 待機
    execute if score @s CO.Counter matches 2 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s CO.IdleCount 3

# 3属性技
    # execute if score @s CO.Counter matches 5 run function asset:mob/0410.heiloang/tick/act/phase_1/element.m {Count:3}
