#> asset:mob/0380.haruclaire_v3/tick/event/ice_laser/end
#
# アイスレーザー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_laser/

# タグ消去
    tag @s remove AK.Skill.IceLaser
    tag @a[tag=AK.MainTarget,distance=..80,limit=1] remove AK.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/1_0_rod_idle

# 行動
    function asset:mob/0380.haruclaire_v3/tick/act/
