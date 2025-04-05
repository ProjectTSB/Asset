#> asset:mob/0380.haruclaire_v3/tick/event/second_move/end
#
# 押しつぶし
#
# @within asset:mob/0380.haruclaire_v3/tick/event/second_move/

# タグ消去
    tag @s remove AK.Skill.MoveS

# 待機モーション再生
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/21_0_second_idle

# 次の行動に遷移
    scoreboard players set @s AK.EventTimer 0
