#> asset:mob/0456.gargo_ex_machina/tick/util/show_former_bossbar
#
# 前半戦Bossbar表示
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

#> Val
# @private
    #declare score_holder $CalcHealth
    #declare objective 1JK.RemainingPlayerLife

# 前半戦Bossbar表示
    bossbar add asset:co_gem_former [{"text":"絡繰仕掛の石像"},{"translate":"【%s×%s】","with":[{"text":"\uE300","font":"icon"},{"score":{"name":"@s","objective":"1JK.RemainingPlayerLife"}}]}]
    bossbar set asset:co_gem_former players @a[distance=..80]
    bossbar set asset:co_gem_former color pink
    bossbar set asset:co_gem_former style notched_10
    bossbar set asset:co_gem_former max 1
    execute store result bossbar asset:co_gem_former value run scoreboard players get @s CO.EventTimer

# HP最大値調整
    function api:mob/get_max_health
    execute store result score @s CO.HealthOffset run data get storage api: Return.MaxHealth 1
    execute store result score $CalcHealth Temporary store result bossbar asset:co_gem_former max store result bossbar asset:co_gem_former value run data get storage api: Return.MaxHealth 0.6
    scoreboard players operation @s CO.HealthOffset -= $CalcHealth Temporary
    scoreboard players reset $CalcHealth Temporary
