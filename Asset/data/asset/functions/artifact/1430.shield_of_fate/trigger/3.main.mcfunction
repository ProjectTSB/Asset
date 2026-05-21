#> asset:artifact/1430.shield_of_fate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1430.shield_of_fate/trigger/2.check_condition


#> Private
# @private
    #declare score_holder $13Q.Damage

# 受けたダメージを0.5倍して自身にその数値分ダメージを与える
    execute store result storage api: Argument.Damage double 0.005 run data get storage asset:context Damage.Amount 100
    data modify storage api: Argument.AttackType set from storage asset:context Damage.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context Damage.ElementType
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/
    function api:damage/reset

# sound
    playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1.0 2 0.0
    playsound minecraft:entity.item.break master @a ~ ~ ~ 0.5 0.7 0.0
    playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 0.5 0.7 0.0
#  particle
    particle block redstone_block ~ ~1 ~ 0 0 0 1 20
