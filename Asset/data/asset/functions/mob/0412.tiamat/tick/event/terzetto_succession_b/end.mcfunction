#> asset:mob/0412.tiamat/tick/event/terzetto_succession_b/end
#
# テルツェット・サクセッション ヘイローン先行
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_succession_b/

# タグ消去
    tag @s remove BG.Skill.Ter.Succ.B

# 連続ダイブに移行
    scoreboard players set @s BG.EventTimer 0
    tag @s add BG.Skill.Ter.Succ.Dive

# # 待機モーション再生
#     scoreboard players set @s BG.EventTimer 0
#     tag @s add BG.Skill.Idle
#     execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
