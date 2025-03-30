#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_circle_line/end
#
# アイスクリメーション・円+直線
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_circle_line/

# タグ消去
    tag @s remove AK.Skill.IceCremation.CircleLine
    tag @a remove AK.MainTarget

# 移動
    scoreboard players set @s AK.EventTimer 0
    tag @s add AK.Temp.FixedRotation
    tag @s add AK.Skill.MoveS

# 移動後、ジャイアントブレードに移行
    tag @s add AK.Skill.Giant
