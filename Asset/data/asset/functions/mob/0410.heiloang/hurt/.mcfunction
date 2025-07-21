#> asset:mob/0410.heiloang/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/410/hurt

# 継承元の処理実行
    function asset:mob/super.hurt

# 効果音
    playsound entity.generic.hurt hostile @a ~ ~ ~ 1 1

# フェーズ処理
    # 残HP割合取得
        function api:mob/get_health_percent
        execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100
    # フェーズ移行
        execute if score $HealthPer Temporary matches ..80 if score @s BE.Phase matches ..0 run function asset:mob/0410.heiloang/hurt/change_phase
        execute if score $HealthPer Temporary matches ..60 if score @s BE.Phase matches ..1 run function asset:mob/0410.heiloang/hurt/change_phase
        # execute if score $HealthPer Temporary matches ..25 if score @s BE.Phase matches ..2 run function asset:mob/0410.heiloang/hurt/change_phase
    # 終了
        scoreboard players reset $HealthPer Temporary
