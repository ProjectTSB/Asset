#> asset:mob/0377.grey_guardian_v2/tick/99.move/main
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/

# 動きモーションへ移行
    execute if score @s AH.Tick matches -20 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AH.Tick matches -20 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/move/play


# 動き続ける(ハードだと移動速度倍！ｗ)
    execute facing entity @p[gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^0.25 run function asset:mob/0377.grey_guardian_v2/tick/common/tp
    execute if predicate api:global_vars/difficulty/hard at @s facing entity @p[gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^0.25 run function asset:mob/0377.grey_guardian_v2/tick/common/tp
    execute at @s if block ~ ~-0.5 ~ #lib:air positioned ~ ~-0.5 ~ run function asset:mob/0377.grey_guardian_v2/tick/common/tp

# プレイヤーが近くにいるなら終わる
    execute unless predicate api:global_vars/difficulty/min/hard if entity @p[distance=..5] run function asset:mob/0377.grey_guardian_v2/tick/99.move/end
    execute if predicate api:global_vars/difficulty/min/hard if entity @p[distance=..4] run function asset:mob/0377.grey_guardian_v2/tick/99.move/end

# スペクテイターでないプレイヤーが攻撃当たる程度に近くにいない時。スコアを戻す
    execute if score @s AH.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..6] if predicate lib:random_pass_per/40 run tag @s add AH.Skill90

# スペクテイターでないプレイヤーが攻撃当たる程度に近くにいない時。スコアを戻す
    execute if score @s[tag=!AH.Skill90] AH.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..6] run scoreboard players set @s AH.Tick -20


# 時間で動き終われ
    execute if score @s AH.Tick matches 0 run function asset:mob/0377.grey_guardian_v2/tick/99.move/end
