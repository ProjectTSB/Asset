#> asset:mob/0380.haruclaire_v3/tick/event/move/end
#
# 移動
#
# @within asset:mob/0380.haruclaire_v3/tick/event/move/

# タグ消去
    tag @s remove AK.Skill.Move
    tag @a[tag=AK.MainTarget,distance=..80,limit=1] remove AK.MainTarget

# ぶん殴りに移行
    scoreboard players set @s AK.EventTimer 0
    tag @s add AK.Skill.Punch
