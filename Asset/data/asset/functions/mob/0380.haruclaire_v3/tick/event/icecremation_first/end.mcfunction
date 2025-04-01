#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/end
#
# アイスクリメーション・連続突進
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_first/

# タグ消去
    tag @s remove AK.Skill.IceCremation.First
    tag @s remove AK.Temp.FixedRotation
    tag @a remove AK.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/21_0_second_idle
