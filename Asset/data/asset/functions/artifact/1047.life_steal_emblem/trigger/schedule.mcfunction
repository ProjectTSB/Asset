#> asset:artifact/1047.life_steal_emblem/trigger/schedule
#
# スケジュール起動
#
# @within function
#   asset:artifact/1047.life_steal_emblem/trigger/3.main
#   asset:artifact/1047.life_steal_emblem/trigger/schedule
#   asset:artifact/1047.life_steal_emblem/trigger/rejoin_process

# スコアを下げる
    scoreboard players remove @a[scores={T3.BuffTick=1..}] T3.BuffTick 1

# パーティクル
    execute as @a[scores={T3.BuffTick=1..}] at @s run particle dust 0.45 0 0 0.5 ~ ~1 ~ 0.5 0.5 0.5 1 2 normal

# バフを取り外す
    execute as @a[scores={T3.BuffTick=..0}] at @s run function asset:artifact/1047.life_steal_emblem/trigger/remove_buff

# スケジュール再度セット
    execute if entity @a[scores={T3.BuffTick=1..}] run schedule function asset:artifact/1047.life_steal_emblem/trigger/schedule 1t