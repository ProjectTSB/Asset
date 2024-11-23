#> asset:mob/0377.grey_guardian_v2/tick/99.move/main
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/

# 動きモーションへ移行
    execute if score @s AH.Tick matches -20 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/wait/stop
    execute if score @s AH.Tick matches -20 as @e[type=item_display,tag=AH.AJ,tag=AH.AJLink,sort=nearest,limit=1] run function animated_java:grey_guardian/animations/move/play


# 動き続ける
    execute facing entity @p[gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^0.25 run function asset:mob/0377.grey_guardian_v2/tick/common/tp
    execute at @s if block ~ ~-0.5 ~ #lib:air positioned ~ ~-0.5 ~ run function asset:mob/0377.grey_guardian_v2/tick/common/tp

# プレイヤーが近くにいるなら終わる
    execute if entity @p[distance=..4] run function asset:mob/0377.grey_guardian_v2/tick/99.move/end

# スペクテイターでないプレイヤーが攻撃当たる程度に近くにいない時。スコアを戻す
    execute if score @s AH.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..6] run scoreboard players set @s AH.Tick -20


# 時間で動き終われ
    execute if score @s AH.Tick matches 0 run function asset:mob/0377.grey_guardian_v2/tick/99.move/end
