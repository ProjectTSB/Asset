#> asset:mob/0410.heiloang/tick/event/final_flare/damage
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# 割合ダメージ
    # 最大HP取得
        function api:modifier/max_health/get
        execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 100
    # ChargeCount（残った眷属の数）に応じてダメージを増加
    # 難易度によって倍率は変わる
    # Normal：最大70%、Hard：最大90%、Blessless：最大110%
        execute if predicate api:global_vars/difficulty/easy run scoreboard players set $FlareDamage Temporary 10
        execute if predicate api:global_vars/difficulty/normal run scoreboard players set $FlareDamage Temporary 20
        execute if predicate api:global_vars/difficulty/min/hard run scoreboard players set $FlareDamage Temporary 40
        scoreboard players operation $FlareDamage Temporary *= @s BE.Charge.Count
        scoreboard players add $FlareDamage Temporary 50
    # 計算
        execute store result storage api: Argument.Damage double 0.0001 run scoreboard players operation $FlareDamage Temporary *= $MaxHealth Temporary
    # 終了
        scoreboard players reset $FlareDamage Temporary
        scoreboard players reset $MaxHealth Temporary
    # execute if predicate api:global_vars/difficulty/easy store result storage api: Argument.Damage double 0.070 run data get storage api: Return.MaxHealth 10
    # execute if predicate api:global_vars/difficulty/normal store result storage api: Argument.Damage double 0.082 run data get storage api: Return.MaxHealth 10
    # execute if predicate api:global_vars/difficulty/min/hard store result storage api: Argument.Damage double 0.099 run data get storage api: Return.MaxHealth 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは 駄目でした","with":[{"selector":"@s"}]}]']
    execute store result storage api: Argument.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    function api:damage/modifier_manual
    function api:damage/
    function api:damage/reset
