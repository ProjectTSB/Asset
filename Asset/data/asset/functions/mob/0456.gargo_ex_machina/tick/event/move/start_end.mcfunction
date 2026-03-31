#> asset:mob/0456.gargo_ex_machina/tick/event/move/start_end
#
# 移動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/move/

# タグ更新
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.Move
    tag @s add CO.Skill.Move.End
