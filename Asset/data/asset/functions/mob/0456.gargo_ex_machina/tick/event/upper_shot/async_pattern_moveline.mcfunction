#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_pattern_moveline
#
# 上空射撃 設置後すぐ別の動きをしてもいいように、攻撃処理だけ非同期で実行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    execute store result score $Interval Temporary run scoreboard players add @s CO.EventTimer.UpperShot 1

# 攻撃位置決定
    # 正面
        execute if score @s CO.EventTimer.UpperShot matches 1 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^28 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 41 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 81 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^12 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 121 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^4 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 161 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-4 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 201 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-12 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 241 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 281 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-28 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
    # 交差
        execute if score @s CO.EventTimer.UpperShot matches 1 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^28 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 41 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 81 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^12 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 121 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^4 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 161 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^-4 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 201 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^-12 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 241 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^-20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 281 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^-28 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline

# 実行
    execute at @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80,sort=random,limit=3] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/attack.m {AttackTime:60}

# 終了
    scoreboard players reset $Interval Temporary
    execute if score @s CO.EventTimer.UpperShot matches 320.. run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_end
