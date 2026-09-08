#> asset:artifact/1598.banisher/trigger/damage/
#
#
#
# @within function asset:artifact/1598.banisher/trigger/rec

# 攻撃情報設定
    #通常
    execute if entity @s[tag=!Enemy.Boss] run data modify storage api: Argument.Damage set value 200
    #天使
    execute if entity @s[tag=Enemy.Boss] as @p[tag=this] run function asset:artifact/1598.banisher/trigger/damage/boss

    data modify storage api: Argument.AttackType set value "Magic"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 演出
    particle crit ~ ~ ~ 0.2 0.5 0.2 1.0 25
    particle enchanted_hit ~ ~ ~ 0.2 0.5 0.2 1.0 20
    playsound item.trident.return player @a ~ ~ ~ 1.0 2.0
    playsound block.enchantment_table.use player @a ~ ~ ~ 1.0 1.2
