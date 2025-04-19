#> asset:mob/0412.tiamat/tick/event/freezing_end/end
#
# フリージングエンド
#
# @within asset:mob/0412.tiamat/tick/event/freezing_end/

# タグ消去
    tag @s remove BG.Skill.Freeze

# 待機モーション再生
    scoreboard players set @s BG.EventTimer 0
    tag @s add BG.Skill.Idle
    execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
