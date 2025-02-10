#> asset:mob/0411.behemoth/tick/event/terzetto_succession_b/end
#
# テルツェット・サクセッション ヘイローン先行
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_succession_b/

# タグ消去
    tag @s remove BF.Skill.Ter.Succ.B


# 連続ダイブに移行
    scoreboard players set @s BF.EventTimer 0
    scoreboard players set @s BF.ActCount 0
    tag @s add BF.Skill.Ter.Succ.Dive

# # 待機モーション再生
#     scoreboard players set @s BF.EventTimer 0
#     tag @s add BF.Skill.Idle
#     execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/1_idle
