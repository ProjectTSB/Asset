#> asset:mob/0377.grey_guardian_v2/tick/90.tp/main
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/skill_active

# プレイヤーの前に飛んでくる（とりあえずね？とりあえずだから...多分もっとかっこいい技になるかもだから...）
    execute at @p[gamemode=!spectator] rotated ~ 0 positioned ^ ^ ^4 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0377.grey_guardian_v2/tick/common/tp

# 演出
    execute at @s run function asset:mob/0377.grey_guardian_v2/tick/90.tp/vfx

# リセット
    function asset:mob/0377.grey_guardian_v2/tick/skill_reset
