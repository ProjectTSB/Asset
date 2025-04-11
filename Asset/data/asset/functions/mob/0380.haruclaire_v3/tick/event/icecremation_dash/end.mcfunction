#> asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/end
#
# アイスクリメーション・連続突進
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icecremation_dash/

# タグ消去
    tag @s remove AK.Skill.IceCremation.Dash
    tag @a remove AK.MainTarget

# 押しつぶしに移行
    scoreboard players set @s AK.EventTimer 0
    tag @s add AK.Skill.Press

# # 待機モーション再生
#     execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/21_0_second_idle

# # 行動
#     function asset:mob/0380.haruclaire_v3/tick/act/
