#> asset:mob/0456.gargo_ex_machina/tick/util/update_former_bossbar
#
# 前半戦Bossbar更新
#
# @within asset:mob/0456.gargo_ex_machina/hurt/

#> Val
# @private
    #declare score_holder $Health

# HP最大値調整
    function api:mob/get_health
    execute store result score $Health Temporary run data get storage api: Return.Health 1
    execute store result bossbar asset:co_gem_former value run scoreboard players operation $Health Temporary -= @s CO.HealthOffset
    scoreboard players reset $Health Temporary
