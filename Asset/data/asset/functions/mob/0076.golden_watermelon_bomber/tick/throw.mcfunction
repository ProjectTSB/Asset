#> asset:mob/0076.golden_watermelon_bomber/tick/throw
#
# スイカを投げる
#
# @within function asset:mob/0076.golden_watermelon_bomber/tick/

# ハード以上で鈍足を付与するようにする
    execute if predicate api:global_vars/difficulty/min/normal run data modify storage api: Argument.FieldOverride.Slowness set value true

# 難易度で弾速を変える
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage api: Argument.FieldOverride.Speed set value 2
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Speed set value 3

# スイカ召喚
    data modify storage api: Argument.ID set value 2068
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=zombie,tag=this,distance=..3,limit=1] MobUUID
    function api:object/summon
