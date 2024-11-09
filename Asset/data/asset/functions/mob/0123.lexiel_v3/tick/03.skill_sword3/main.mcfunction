#> asset:mob/0123.lexiel_v3/tick/03.skill_sword3/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション開始
    execute if score @s 3F.Tick matches 0 facing entity @p[] feet rotated ~ 0 run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s 3F.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/neutral/stop
    execute if score @s 3F.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] at @s run function animated_java:lexiel/animations/attack3_1/play

# ハードの場合、確率でジャンプ、特殊行動へ
    execute if score @s 3F.Tick matches 0 if predicate api:global_vars/difficulty/hard if predicate lib:random_pass_per/30 run scoreboard players set @s 3F.Tick 1000

# 音鳴らす
    execute if score @s 3F.Tick matches 20 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# TP部分処理
    execute if score @s 3F.Tick matches 20..26 positioned ^ ^ ^2 run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s 3F.Tick matches 27..34 positioned ^ ^ ^0.5 run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s 3F.Tick matches 35..39 positioned ^ ^ ^0.15 run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s 3F.Tick matches 20..26 run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/tacle

# ダメージ判定

# リセット
    execute if score @s 3F.Tick matches 26 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/attack3_2/play
    execute if score @s 3F.Tick matches 78 at @s run function asset:mob/0123.lexiel_v3/tick/skill_reset

# ハードモードの行動
    execute if score @s 3F.Tick matches 1000..1002 at @p[] run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/portal_set
    execute if score @s 3F.Tick matches 1020..1060 positioned ^ ^ ^2 run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute if score @s 3F.Tick matches 1030 at @s run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/portal_tp
    execute if score @s 3F.Tick matches 1040 at @s run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/portal_tp
    execute if score @s 3F.Tick matches 1050 at @s run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/portal_tp
    execute if score @s 3F.Tick matches 1020..1060 run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/tacle

# そのままスキル2へ
    execute if score @s 3F.Tick matches 1060 at @p[] rotated ~ 0 positioned ~ ~1 ~ positioned ^ ^ ^1 run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/skill_move
