#> asset:mob/0410.heiloang/tick/event/final_flare/start_black
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/final_flare/

# 割合ダメージ
    function api:modifier/max_health/get
    execute store result storage api: Argument.Damage double 0.099 run data get storage api: Return.MaxHealth 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは 駄目でした","with":[{"selector":"@s"}]}]']
    execute store result storage api: Argument.MobUUID int 1 run scoreboard players get @e[type=slime,tag=BE.EntityRoot,limit=1] MobUUID
    function api:damage/modifier_manual
    function api:damage/
    function api:damage/reset
