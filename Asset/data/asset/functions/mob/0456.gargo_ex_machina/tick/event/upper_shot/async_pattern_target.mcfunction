#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_pattern_target
#
# 上空射撃 設置後すぐ別の動きをしてもいいように、攻撃処理だけ非同期で実行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    execute store result score $Interval Temporary run scoreboard players add @s CO.EventTimer.UpperShot 1

# 攻撃位置決定: 一定間隔で実行
    scoreboard players operation $Interval Temporary %= $30 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/pattern_target
    
# 攻撃
    execute if score $Interval Temporary matches 0 at @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/attack
    
# 終了
    scoreboard players reset $Interval Temporary
    execute if score @s CO.EventTimer.UpperShot matches 331.. run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_end
