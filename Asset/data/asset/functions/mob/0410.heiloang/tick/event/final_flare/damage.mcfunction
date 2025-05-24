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
    # 基本値50%、Normal：+20%、Hard：+40%、Blessless：+100%
        execute if predicate api:global_vars/difficulty/1_normal run scoreboard players set $FlareDamage Temporary 20
        execute if predicate api:global_vars/difficulty/2_hard run scoreboard players set $FlareDamage Temporary 40
        execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players set $FlareDamage Temporary 100
        # ChargeCountの初期値は-1のため、一時的に1加算する
            scoreboard players add $ChargeCount Temporary 1
            scoreboard players operation $FlareDamage Temporary *= $ChargeCount Temporary
        scoreboard players add $FlareDamage Temporary 50
    # 計算
        execute store result storage api: Argument.Damage double 0.0001 run scoreboard players operation $FlareDamage Temporary *= $MaxHealth Temporary
        # 即死ラインを超えている場合はダメージを9999に固定
            execute if score $FlareDamage Temporary matches 100.. run data modify storage api: Argument.Damage set value 9999.0
    # 終了
        scoreboard players reset $ChargeCount Temporary
        scoreboard players reset $FlareDamage Temporary
        scoreboard players reset $MaxHealth Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは%2$sに滅せられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]']
    data modify storage api: Argument.Metadata set value "FinalFlare"
    execute store result storage api: Argument.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    function api:damage/modifier_manual
    function api:damage/
    function api:damage/reset
