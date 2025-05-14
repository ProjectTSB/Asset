#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/summon_thunder
#
# リターンサンダーを召喚する
#
# @within function
#   asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/active
#   asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/addition_thunder

# Rotationだけこのmcf実行前に設定しておく

# ダメージ設定
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Return.Normal
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Return.Hard

# 速度設定
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride.MovePerStep set value 0.5
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.MovePerStep set value 0.75

# ノーマル以下ならヒット時消滅するようにする
    execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage api: Argument.FieldOverride.KillWhenHit set value true

# 召喚
    data modify storage api: Argument.ID set value 2058
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon
