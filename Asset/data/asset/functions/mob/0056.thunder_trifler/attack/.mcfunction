#> asset:mob/0056.thunder_trifler/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0056.thunder_trifler/_/attack

# 演出
    particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
    particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.5 0
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 2.0 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this[0]
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって翻弄され、感電により心停止した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの不意な電撃により、生命を終えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..32] run function api:damage/
    function api:damage/reset

# ノーマル以上でMPを減らす
    execute if predicate api:global_vars/difficulty/min/normal run function asset:mob/0056.thunder_trifler/attack/mp_reduce

# 弓から剣に切り替えた場合speedを得る
    execute if entity @s[tag=!1K.Sword] run effect give @s speed infinite 0 true
# 弓から切り替えた瞬間にワープ
    execute if entity @s[tag=!1K.Sword] run tp @s @p[tag=Victim,distance=..32]

# 攻撃が当たった場合武器が弓なら剣に切替(挙動の関係上最後に配置)
    execute if entity @s[tag=!1K.Sword] run item replace entity @s weapon.mainhand with stick{CustomModelData:318}

# 剣Tag付与
    execute if entity @s[tag=!1K.Sword] run tag @s add 1K.Sword
