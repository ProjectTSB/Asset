#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_pattern_cross
#
# 上空射撃 設置後すぐ別の動きをしてもいいように、攻撃処理だけ非同期で実行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer.UpperShot 1

# 攻撃位置決定
    execute if score @s CO.EventTimer.UpperShot matches 1 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated 45 0 run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_cross
    execute if score @s CO.EventTimer.UpperShot matches 100 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated 0 0 run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_cross
    execute if score @s CO.EventTimer.UpperShot matches 200 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated 45 0 run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_cross

# 実行
    execute at @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80,sort=random,limit=3] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/attack.m {AttackTime:120}

# 終了
    execute if score @s CO.EventTimer.UpperShot matches 250.. run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_end
