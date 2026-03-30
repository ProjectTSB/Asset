#> asset:mob/0456.gargo_ex_machina/update_bossbar/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/456/update_bossbar

# 継承
    function asset:mob/super.method

#> Temp
# @private
    #declare objective 1JK.RemainingPlayerLife

# 前半戦ボスバー更新
    execute if entity @s[tag=CO.IsLatter] run return fail
# 残機更新
    bossbar set asset:co_gem_former name [{"text":"絡繰仕掛の石像"},{"translate":"【%s×%s】","with":[{"text":"\uE300","font":"icon"},{"score":{"name":"@s","objective":"1JK.RemainingPlayerLife"}}]}]
# HP最大値調整
    function api:mob/get_health
    execute store result score $Health Temporary run data get storage api: Return.Health 1
    execute store result bossbar asset:co_gem_former value run scoreboard players operation $Health Temporary -= @s CO.HealthOffset
    scoreboard players reset $Health Temporary
