#> asset:mob/0410.heiloang/tick/event/final_flare/end
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# タグ消去
    tag @s remove BE.Skill.FinalFlare
    tag @a remove BE.MainTarget

# # 待機モーション再生
#     execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# # 行動
#     function asset:mob/0410.heiloang/tick/act/

# 覚醒開始
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.Rage
