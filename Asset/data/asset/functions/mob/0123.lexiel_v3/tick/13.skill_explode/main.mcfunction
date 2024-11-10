#> asset:mob/0123.lexiel_v3/tick/13.skill_explode/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション開始
    execute if score @s 3F.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/magic3/play
    execute if score @s 3F.Tick matches 0 facing entity @p[] feet run function asset:mob/0123.lexiel_v3/tick/common/tp

# 設置
    execute if score @s 3F.Tick matches 0 at @s rotated ~ 0 if predicate api:global_vars/difficulty/min/hard positioned ^ ^ ^7 run function asset:mob/0123.lexiel_v3/tick/common/explode
    execute if score @s 3F.Tick matches 0 at @s rotated ~ 0 unless predicate api:global_vars/difficulty/min/hard positioned ^ ^ ^5 run function asset:mob/0123.lexiel_v3/tick/common/explode

# バックする
    execute if score @s 3F.Tick matches 34 rotated ~ 0 positioned ^ ^ ^-2 run function asset:mob/0123.lexiel_v3/tick/common/tp

# リセット
    execute if score @s 3F.Tick matches 64 run function asset:mob/0123.lexiel_v3/tick/skill_reset
