#> asset:artifact/1082.cursed_straw_doll/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1082/damage_entity/

# 演出
    execute as @e[type=#lib:living,tag=Attacker,distance=..50,limit=1] at @s anchored eyes positioned ^ ^ ^ facing entity @p[tag=this] eyes rotated ~ -55 run function asset:artifact/1082.cursed_straw_doll/damage_entity/vfx/

# 最大体力の13倍、現在体力の13倍を取得
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 13
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 13

# 失っている体力を求める
    execute store result score $DamageValue Temporary run scoreboard players operation $MaxHealth Temporary -= $CurrentHealth Temporary

# 最大体力、現在体力の100倍を取得
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 1
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 100

# 現在体力割合を求める
    scoreboard players operation $CurrentHealth Temporary /= $MaxHealth Temporary

# 44%以下ならダメージ量+66.6%
    execute if score $CurrentHealth Temporary matches ..44 run function asset:artifact/1082.cursed_straw_doll/damage_entity/4.damage_up

# ダメージ上限(4444)
    execute if score $DamageValue Temporary matches 4444.. run scoreboard players set $DamageValue Temporary 4444

# ダメージへ代入
    execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageValue Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Attacker,distance=..50] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurrentHealth Temporary
    scoreboard players reset $DamageValue Temporary
