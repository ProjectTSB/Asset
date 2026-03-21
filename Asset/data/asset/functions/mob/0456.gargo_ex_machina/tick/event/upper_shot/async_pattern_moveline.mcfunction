#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_pattern_moveline
#
# 上空射撃 設置後すぐ別の動きをしてもいいように、攻撃処理だけ非同期で実行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    execute store result score $Interval Temporary run scoreboard players add @s CO.EventTimer.UpperShot 1

# 攻撃位置決定
    # 攻撃位置決定
        execute if score @s CO.EventTimer.UpperShot matches 1 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^21.5 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 61 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^10.5 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 121 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-10.5 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 181 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^ ^ ^-21.5 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 1 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^21.5 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 61 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^10.5 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 121 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^-10.5 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline
        execute if score @s CO.EventTimer.UpperShot matches 181 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ positioned ^-21.5 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_moveline

# 実行
    execute at @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80,sort=random,limit=3] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/attack

# 終了
    scoreboard players reset $Interval Temporary
    execute if score @s CO.EventTimer.UpperShot matches 240.. run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_end
