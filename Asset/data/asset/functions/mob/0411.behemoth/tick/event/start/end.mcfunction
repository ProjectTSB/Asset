#> asset:mob/0411.behemoth/tick/event/start/end
#
# 暫定的な登場演出
#
# @within asset:mob/0411.behemoth/tick/event/start/

# タグ消去
    tag @s remove BF.Skill.Start

# 待機モーション再生
    tag @s add BF.Skill.Idle
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/1_idle
