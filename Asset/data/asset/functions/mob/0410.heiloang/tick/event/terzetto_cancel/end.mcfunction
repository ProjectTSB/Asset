#> asset:mob/0410.heiloang/tick/event/terzetto_cancel/end
#
# 行動キャンセル
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_cancel/

# タグ消去
    tag @s remove BE.Skill.Ter.Cancel
    tag @a[tag=BE.MainTarget,limit=1] remove BE.MainTarget

# 眷属が両方倒されている場合、大技開始
    scoreboard players set @s BE.EventTimer 0
    execute if entity @s[tag=BE.State.BehemothDeath,tag=BE.State.TiamatDeath] run return run tag @s add BE.Skill.Offering

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# # 行動
#     function asset:mob/0410.heiloang/tick/act/
