#> asset:mob/0456.gargo_ex_machina/tick/event/change_head/start
#
# 後半戦移行
#
# @within asset:mob/0456.gargo_ex_machina/hurt/

# 全アニメーション停止
    function asset:mob/0456.gargo_ex_machina/tick/util/stop_all_animations

# イベント実行
    tag @s add CO.Skill.ChangeHead

# フェーズ移行など
    scoreboard players set @s CO.EventTimer 0
    scoreboard players set @s CO.Counter 0
    tag @s add CO.IsLatter

# 最大HPの100%分回復
    function api:mob/get_max_health
    execute store result storage api: Argument.Delta double 1.0 run data get storage api: Return.MaxHealth 1
    function api:mob/modify_health
    function asset:mob/call.m {method: "update_bossbar"}
