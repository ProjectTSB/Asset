#> asset:mob/0456.gargo_ex_machina/tick/event/change_head/start
#
# 後半戦移行
#
# @within asset:mob/0456.gargo_ex_machina/hurt/

# 全アニメーション停止
    function asset:mob/0456.gargo_ex_machina/tick/util/stop_all_animations
    tag @s remove CO.UpperShot.Asyuc
    tag @s remove CO.UpperShot.Pt.Cross
    tag @s remove CO.UpperShot.Pt.MoveLine
    tag @s remove CO.UpperShot.Pt.Panto
    tag @s remove CO.UpperShot.Pt.Random
    tag @s remove CO.UpperShot.Pt.Target

# オブジェクト消去
    execute as @e[tag=CO.Object,distance=..160] on passengers run kill @s
    kill @e[tag=CO.Object,distance=..160]

# イベント実行
    tag @s add CO.Skill.ChangeHead

# フェーズ移行など
    scoreboard players set @s CO.EventTimer 0
    scoreboard players set @s CO.Counter 0
    tag @s add CO.IsLatter
