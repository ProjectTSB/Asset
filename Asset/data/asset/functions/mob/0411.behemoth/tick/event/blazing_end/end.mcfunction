#> asset:mob/0411.behemoth/tick/event/blazing_end/end
#
# ブレイジングエンド
#
# @within asset:mob/0411.behemoth/tick/event/blazing_end/

# タグ消去
    tag @s remove BF.Skill.Blaze

# 待機モーション再生
    scoreboard players set @s BF.EventTimer 0
    tag @s add BF.Skill.Idle
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/1_idle
