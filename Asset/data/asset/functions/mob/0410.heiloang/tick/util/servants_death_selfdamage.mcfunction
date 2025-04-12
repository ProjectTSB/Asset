#> asset:mob/0410.heiloang/tick/util/servants_death_selfdamage
#
# 汎用処理 眷属討伐時
#
# @within function asset:mob/0410.heiloang/tick/util/servants_death

# 最大HPの20%分のダメージ
# ただし現状ダメージ上限に引っかかって上手く動作しない
    function api:mob/get_max_health
    execute store result storage api: Argument.Damage float 0.2 run data get storage api: Return.MaxHealth 1
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    execute as @e[type=slime,tag=BE.Hitbox,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset
