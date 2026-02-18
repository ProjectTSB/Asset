#> asset:mob/0410.heiloang/tick/event/tornado/end
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/tornado/

# タグ消去
    tag @s remove BE.Skill.Tornado
    tag @a[tag=BE.MainTarget,limit=1] remove BE.MainTarget

# # 待機モーション再生
#     execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# なぎはらい火炎放射に遷移
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.Sweep
