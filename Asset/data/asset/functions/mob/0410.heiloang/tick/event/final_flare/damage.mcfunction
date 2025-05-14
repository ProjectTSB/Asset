#> asset:mob/0410.heiloang/tick/event/final_flare/damage
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# 割合ダメージ
    # ChargeCount取得
        scoreboard players operation $ChargeCount Temporary = @e[type=slime,tag=BE.EntityRoot,distance=..160] BE.Charge.Count
    # 最大HP取得
        function api:modifier/max_health/get
        execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 100
    # ChargeCount（残った眷属の数）に応じてダメージを増加
    # 難易度によって倍率は変わる
    # 基本値50%、Normal：最大70%、Hard：最大90%、Blessless：最大120%
        execute if predicate api:global_vars/difficulty/easy run scoreboard players set $FlareDamage Temporary 10
        execute if predicate api:global_vars/difficulty/normal run scoreboard players set $FlareDamage Temporary 20
        execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players set $FlareDamage Temporary 35
        # ChargeCountの初期値は-1のため、一時的に1加算する
            scoreboard players add $ChargeCount Temporary 1
            scoreboard players operation $FlareDamage Temporary *= $ChargeCount Temporary
        scoreboard players add $FlareDamage Temporary 50
    # 計算
        execute store result storage api: Argument.Damage double 0.0001 run scoreboard players operation $FlareDamage Temporary *= $MaxHealth Temporary
    # 終了
        scoreboard players reset $ChargeCount Temporary
        scoreboard players reset $FlareDamage Temporary
        scoreboard players reset $MaxHealth Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは 黒龍に滅せられた","with":[{"selector":"@s"}]}]']
    data modify storage api: Argument.Metadata set value "FinalFlare"
    execute store result storage api: Argument.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    function api:damage/modifier_manual
    function api:damage/
    function api:damage/reset
