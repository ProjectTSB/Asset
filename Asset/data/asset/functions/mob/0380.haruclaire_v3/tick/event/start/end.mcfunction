#> asset:mob/0380.haruclaire_v3/tick/event/start/end
#
# 登場
#
# @within asset:mob/0380.haruclaire_v3/tick/event/start/

# タグ消去
    tag @s remove AK.Skill.Start
    tag @a remove AK.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/1_0_rod_idle

# 行動
    function asset:mob/0380.haruclaire_v3/tick/act/
