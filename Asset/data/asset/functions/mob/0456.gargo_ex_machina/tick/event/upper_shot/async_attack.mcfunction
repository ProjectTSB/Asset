#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_attack
#
# 上空射撃 設置後すぐ別の動きをしてもいいように、攻撃処理だけ非同期で実行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# 実行
    scoreboard players add @s CO.EventTimer.UpperShot 1
    execute at @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80,sort=random,limit=2] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/attack
    execute if score @s CO.EventTimer.UpperShot matches 40.. run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_end
