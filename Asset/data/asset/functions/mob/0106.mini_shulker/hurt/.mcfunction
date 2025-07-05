#> asset:mob/0106.mini_shulker/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/106/hurt

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# バニラ攻撃は受け付けないものとする
    execute unless data storage asset:context Hurt{IsVanilla:false} run return fail

#> private
# @private
    #declare score_holder $HealthPer

# 現在体力を取得
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100
# 確率でテレポート処理に強制移行
    execute if score $HealthPer Temporary matches 50.. if predicate lib:random_pass_per/5 run scoreboard players set @s General.Mob.Tick 1000
    execute unless score $HealthPer Temporary matches 50.. if predicate lib:random_pass_per/15 run scoreboard players set @s General.Mob.Tick 1000
# リセット
    scoreboard players reset $HealthPer Temporary
