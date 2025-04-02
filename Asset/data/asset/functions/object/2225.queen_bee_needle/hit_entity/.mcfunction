#> asset:object/2225.queen_bee_needle/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2225/hit_entity

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

# 毒を付与する
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:79,Duration:120}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset


# 消滅
    kill @s
