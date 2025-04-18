#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/end
#
# テルツェット・ラグナレク
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# タグ消去
    tag @s remove BG.Skill.Ter.Rag

# フリージングエンドに移行
    scoreboard players set @s BG.EventTimer 0
    scoreboard players set @s BG.ActCount 0
    tag @s add BG.Skill.Freeze
    tag @s add BG.State.Wait

# # 待機モーション再生
#     scoreboard players set @s BG.EventTimer 0
#     tag @s add BG.Skill.Idle
#     execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
