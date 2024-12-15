#> asset:mob/0410.heiloang/tick/event/heil_disaster/end
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/

# タグ消去
    tag @s remove BE.Skill.HeilDisaster
    tag @a remove BE.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# # なぎはらい火炎放射に遷移
#     scoreboard players set @s BE.EventTimer 0
#     tag @s add BE.Skill.Sweep
