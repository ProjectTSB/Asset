#> asset:artifact/0370.burn_sorcery/trigger/3.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0370.burn_sorcery/trigger/3.1.shoot

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:lava ~ ~ ~ 0 2 0 1 100
    execute rotated 0 0 run function asset:artifact/0370.burn_sorcery/trigger/particle.2
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 65.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3.5] run function api:damage/
    function api:damage/reset
