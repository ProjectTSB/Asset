#> asset:mob/0410.heiloang/tick/event/power_breath/end
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/power_breath/

# タグ消去
    tag @s remove BE.Skill.PowerBreath
    tag @a remove BE.MainTarget

# 待機モーション再生
    # execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 連発
    scoreboard players set @s BE.EventTimer 0
    scoreboard players remove @s BE.Pb.Count 1
    execute if score @s BE.Pb.Count matches 2.. run tag @s add BE.Skill.PowerBreath.C1
    execute if score @s BE.Pb.Count matches ..1 run tag @s add BE.Skill.PowerBreath.End
