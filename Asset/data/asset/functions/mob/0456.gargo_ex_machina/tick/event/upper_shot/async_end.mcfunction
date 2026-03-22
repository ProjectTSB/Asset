#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_end
#
# 上空射撃 設置後すぐ別の動きをしてもいいように、攻撃処理だけ非同期で実行
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/**

# 実行
    scoreboard players set @s CO.EventTimer.UpperShot 0
    execute unless entity @e[type=area_effect_cloud,tag=CO.Aec.UpperShotPosition,distance=..80] run tag @s remove CO.UpperShot.Asyuc
    execute unless entity @s[tag=CO.UpperShot.Asyuc] run tag @s remove CO.UpperShot.Pt.Random
    execute unless entity @s[tag=CO.UpperShot.Asyuc] run tag @s remove CO.UpperShot.Pt.Target
    execute unless entity @s[tag=CO.UpperShot.Asyuc] run tag @s remove CO.UpperShot.Pt.MoveLine
    execute unless entity @s[tag=CO.UpperShot.Asyuc] run tag @s remove CO.UpperShot.Pt.Cross
    execute unless entity @s[tag=CO.UpperShot.Asyuc] run tag @s remove CO.UpperShot.Pt.Panto
