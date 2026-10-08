#> asset:effect/0402.celestial_star/tick/detonation/damage.m
#
# 星を起爆したプレイヤーの攻撃補正を掛け、星の近くにいる対象の敵へ基礎値3000の20%単位の倍率でダメージを与える
#
# @input args
#   MobUUID : int
#   X : double
#   Y : double
#   Z : double
# @within function asset:effect/0402.celestial_star/tick/detonation/pop

    execute store result storage api: Argument.Damage float 600 run data get storage asset:context this.Detonation.Multiplier
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    $scoreboard players set $402.Target Temporary $(MobUUID)
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..24] if score @s MobUUID = $402.Target Temporary at @s run function asset:effect/0402.celestial_star/tick/detonation/hit
    function api:damage/reset

# リセット
    scoreboard players reset $402.Target Temporary
