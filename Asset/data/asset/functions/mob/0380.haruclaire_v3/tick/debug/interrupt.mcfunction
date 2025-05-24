#> asset:mob/0380.haruclaire_v3/tick/debug/interrupt
#
# デバッグ用処理 割り込みで強制的にイベントを実行する
#
# @within asset:mob/alias/410/tick

# メモ
    # execute as @e[tag=AK.EntityRoot] at @s run function asset:mob/0380.haruclaire_v3/tick/debug/interrupt

# 全アニメーション停止
    function asset:mob/0380.haruclaire_v3/tick/debug/reset

# 移動
    # scoreboard players set @s AK.EventTimer 0
    # tag @s add AK.Skill.MoveS
    # tag @s add AK.Temp.FixedRotation
    # execute at @e[type=marker,tag=AK.CenterPosition,distance=..80] run summon area_effect_cloud ^ ^0.3 ^-8 {Tags:["AK.Temp.AttackPosition"],Duration:3}

# イベント実行
    scoreboard players set @s AK.EventTimer 0
    tag @s add AK.Skill.IcePillar
