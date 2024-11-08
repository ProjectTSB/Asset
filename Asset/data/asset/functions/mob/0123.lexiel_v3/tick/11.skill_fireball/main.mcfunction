#> asset:mob/0123.lexiel_v3/tick/11.skill_fireball/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション開始
    execute if score @s 3F.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/magic1/play
    execute if score @s 3F.Tick matches 0 facing entity @p[] feet run function asset:mob/0123.lexiel_v3/tick/common/tp
# 弾
    execute if score @s 3F.Tick matches 22..24 positioned ~ ~1 ~ positioned ^ ^ ^1 run function asset:mob/0123.lexiel_v3/tick/common/fireball

# リセット
    execute if score @s 3F.Tick matches 45 run function asset:mob/0123.lexiel_v3/tick/skill_reset
