#> asset:mob/0410.heiloang/tick/event/start_temp/end
#
# 暫定的な登場演出
#
# @within asset:mob/0410.heiloang/tick/event/start_temp/

# タグ消去
    tag @s remove BE.Skill.Start

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 行動
    function asset:mob/0410.heiloang/tick/act/
