#> asset:mob/0410.heiloang/tick/event/power_breath_continue_2/end
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/power_breath_continue_2/

# タグ消去
    tag @s remove BE.Skill.PowerBreath.C2
    tag @a remove BE.MainTarget

# # 待機モーション再生
#     execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 連発
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.PowerBreath.End
