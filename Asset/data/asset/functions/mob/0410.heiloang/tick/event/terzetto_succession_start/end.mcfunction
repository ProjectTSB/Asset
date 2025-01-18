#> asset:mob/0410.heiloang/tick/event/terzetto_succession_start/end
#
# テルツェット・サクセッション
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_succession_start/

# タグ消去
    tag @s remove BE.Skill.Ter.Succ.Start

# ヘイローン先行
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.Ter.Succ.A

# # 待機モーション再生
#     execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# # 行動
#     function asset:mob/0410.heiloang/tick/act/
