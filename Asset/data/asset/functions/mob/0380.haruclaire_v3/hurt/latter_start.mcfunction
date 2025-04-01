#> asset:mob/0380.haruclaire_v3/hurt/latter_start
#
# Mobのダメージ時の処理
#
# @within function asset:mob/0380.haruclaire_v3/hurt/check_health

# 全アニメーション停止
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_aj/animations/pause_all

# タグ消去
    function asset:mob/0380.haruclaire_v3/tick/util/remove_animation_tag

# ハトクレア召喚
    scoreboard players set @s AK.EventTimer 0
    tag @s add AK.Skill.SummonHato

# フェーズ以降
    tag @s add AK.Stat.Latter
