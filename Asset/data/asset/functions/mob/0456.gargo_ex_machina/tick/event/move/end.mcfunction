#> asset:mob/0456.gargo_ex_machina/tick/event/move/end
#
# 移動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/move/event_end

# タグ消去
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.Move.End
    tag @s remove CO.Skill.Move.Near

# 目的地消去
    kill @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..80]

# 待機モーション再生
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/idle/tween {duration:1, to_frame: 1}

# 行動
    # function asset:mob/0410.heiloang/tick/act/
