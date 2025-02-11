#> asset:mob/0412.tiamat/tick/event/terzetto_cancel/end
#
# 行動キャンセル
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_cancel/

# タグ消去
    tag @s remove BG.Skill.Ter.Cancel

# 待機モーション再生
    scoreboard players set @s BG.EventTimer 0
    scoreboard players set @s BG.ActCount 0
    tag @s add BG.Skill.Idle
    execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
