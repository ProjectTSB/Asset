#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_pattern_moveline
#
# 上空射撃 設置後すぐ別の動きをしてもいいように、攻撃処理だけ非同期で実行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer.UpperShot 1

# 攻撃位置決定
    # 正面
        execute if score @s CO.EventTimer.UpperShot matches 1 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^30 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 51 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 101 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^10 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 151 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^0 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 201 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-10 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 251 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 301 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-30 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
    # 交差
        execute if score @s CO.EventTimer.UpperShot matches 1 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^30 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 51 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 101 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^10 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 151 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^0 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 201 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^-10 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 251 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^-20 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 301 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^-30 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline

# 実行
    execute at @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80,sort=random,limit=3] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/attack.m {AttackTime:60}

# 終了
    execute if score @s CO.EventTimer.UpperShot matches 350.. run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_end
