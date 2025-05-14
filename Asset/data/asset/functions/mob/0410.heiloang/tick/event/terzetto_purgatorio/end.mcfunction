#> asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/end
#
# テルツェット・サクセッション
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/

# タグ消去
    tag @s remove BE.Skill.Ter.Purg

# ハード：ソウルオファリング開始
    execute if predicate api:global_vars/difficulty/2_hard run scoreboard players set @s BE.EventTimer 0
    execute if predicate api:global_vars/difficulty/2_hard run return run tag @s add BE.Skill.OfferingEnd

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 行動
    function asset:mob/0410.heiloang/tick/act/
