#> asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/end
#
# アイスバレット・デュオ
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/

# タグ消去
    tag @s remove AK.Skill.IceBulletDuo
    tag @a remove AK.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/21_0_second_idle

# 行動
    function asset:mob/0380.haruclaire_v3/tick/act/
