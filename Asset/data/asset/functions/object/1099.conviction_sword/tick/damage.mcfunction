#> asset:object/1099.conviction_sword/tick/damage
#
# ダメージ処理
#
# @within function asset:object/1099.conviction_sword/tick/

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.6

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Sword
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @p[tag=Owner] run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..4] run function api:damage/
    function api:damage/reset
