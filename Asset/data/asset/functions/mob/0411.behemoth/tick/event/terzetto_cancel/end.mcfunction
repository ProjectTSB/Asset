#> asset:mob/0411.behemoth/tick/event/terzetto_cancel/end
#
# 行動キャンセル
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_cancel/

# タグ消去
    tag @s remove BF.Skill.Ter.Cancel

# 待機モーション再生
    scoreboard players set @s BF.EventTimer 0
    scoreboard players set @s BF.ActCount 0
    tag @s add BF.Skill.Idle
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/1_idle
