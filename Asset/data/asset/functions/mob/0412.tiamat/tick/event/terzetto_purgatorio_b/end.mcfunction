#> asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/end
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/

# タグ消去
    tag @s remove BG.Skill.Ter.Purg.B

# ハード：ソウルオファリング開始
    execute if predicate api:global_vars/difficulty/2_hard run scoreboard players set @s BG.EventTimer 0
    execute if predicate api:global_vars/difficulty/2_hard run scoreboard players set @s BG.ActCount 0
    execute if predicate api:global_vars/difficulty/2_hard run tag @s add BG.Skill.Freeze
    execute if predicate api:global_vars/difficulty/2_hard run return run tag @s add BG.State.Wait

# 待機モーション再生
    scoreboard players set @s BG.EventTimer 0
    scoreboard players set @s BG.ActCount 0
    tag @s add BG.Skill.Idle
    execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
