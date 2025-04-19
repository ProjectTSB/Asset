#> asset:mob/0410.heiloang/tick/util/servants_death_selfdamage
#
# 汎用処理 眷属討伐時
#
# @within function asset:mob/0410.heiloang/tick/util/servants_death

# 最大HPの20%分のダメージ
    function api:mob/get_max_health
    execute store result storage api: Argument.Delta double -0.2 run data get storage api: Return.MaxHealth 1
    function api:mob/modify_health
    function asset:mob/call.m {method: "update_bossbar"}
