#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_pattern_pantokrator
#
# 上空射撃 設置後すぐ別の動きをしてもいいように、攻撃処理だけ非同期で実行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer.UpperShot 1

# 攻撃位置決定
    # 攻撃位置決定
        execute if score @s CO.EventTimer.UpperShot matches 1 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_pantokrator
        execute if score @s CO.EventTimer.UpperShot matches 60 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~60 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_pantokrator
        execute if score @s CO.EventTimer.UpperShot matches 120 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~120 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_pantokrator
        execute if score @s CO.EventTimer.UpperShot matches 180 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~180 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_pantokrator
        execute if score @s CO.EventTimer.UpperShot matches 240 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~240 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_pantokrator
        execute if score @s CO.EventTimer.UpperShot matches 300 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~300 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_pantokrator
        execute if score @s CO.EventTimer.UpperShot matches 360 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~360 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_pantokrator

# 実行
    execute at @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80,sort=random,limit=2] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/attack_pantokrator

# 終了
    execute if score @s CO.EventTimer.UpperShot matches 420.. run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_end
