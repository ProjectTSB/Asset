#> asset:mob/0412.tiamat/tick/event/start/end
#
# 暫定的な登場演出
#
# @within asset:mob/0412.tiamat/tick/event/start/

# タグ消去
    tag @s remove BG.Skill.Start

# 待機モーション再生
    tag @s add BG.Skill.Idle
    execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
