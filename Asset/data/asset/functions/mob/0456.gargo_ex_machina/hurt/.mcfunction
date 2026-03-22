#> asset:mob/0456.gargo_ex_machina/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/456/hurt

# 継承元の処理実行
    function asset:mob/super.hurt

# 効果音
    playsound entity.generic.hurt hostile @a ~ ~ ~ 1 1

# フェーズ処理
    # 残HP割合取得
        function api:mob/get_health_percent
        execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100
    # フェーズ移行
        execute unless entity @s[tag=CO.IsLatter] if score $HealthPer Temporary matches ..20 run function asset:mob/0456.gargo_ex_machina/tick/event/change_head/start
    # 終了
        scoreboard players reset $HealthPer Temporary
