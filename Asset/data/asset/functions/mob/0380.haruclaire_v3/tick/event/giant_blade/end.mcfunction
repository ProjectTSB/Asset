#> asset:mob/0380.haruclaire_v3/tick/event/giant_blade/end
#
# ジャイアントブレード
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/
#    function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/short

# タグ消去
    tag @s remove AK.Skill.Giant
    tag @s add AK.Skill.Giant.Short
    tag @a[tag=AK.MainTarget,distance=..80,limit=1] remove AK.MainTarget
    tag @s remove AK.Temp.FixedRotation

# 待機モーション再生
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/21_0_second_idle

# 行動
    function asset:mob/0380.haruclaire_v3/tick/act/
