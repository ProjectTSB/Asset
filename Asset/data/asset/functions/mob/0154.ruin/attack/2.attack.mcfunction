#> asset:mob/0154.ruin/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0154.ruin/attack/1.trigger

#> Private
# @private
    #declare score_holder $DamageValue

# 腕振るやつ(タグなし)
    execute unless entity @s[tag=4A.Madness] run item replace entity @s weapon.mainhand with stick{CustomModelData:20064}

# 腕振るやつ(タグあり)
    execute if entity @s[tag=4A.Madness] run item replace entity @s weapon.mainhand with stick{CustomModelData:20065}

# 演出
    execute at @p[tag=Victim] run particle block redstone_block ~ ~1 ~ 0.1 0 0.1 4.2 80
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 2 2

# 難易度値を取得
    function api:global_vars/get_difficulty

# 形態変化の前か後かで異なる式で計算する Nは難易度値を示す
# 前 = 5N + 33, 後 = 10N + 40
# 5N + 33の意味は、イージーの時に5+33で38になって大体のMobと同じ火力になるから
# 10N + 40の意味は、イージーで50、ハードで70程度の火力が欲しいから
    execute unless entity @s[tag=4A.Madness] store result score $DamageValue Temporary run data get storage api: Return.Difficulty 5
    execute unless entity @s[tag=4A.Madness] run scoreboard players add $DamageValue Temporary 33
    execute if entity @s[tag=4A.Madness] store result score $DamageValue Temporary run data get storage api: Return.Difficulty 10
    execute if entity @s[tag=4A.Madness] run scoreboard players add $DamageValue Temporary 40

# ダメージ
    execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageValue Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって存在が崩壊した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにより跡形もなく破壊された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# スコアリセット
    scoreboard players reset $DamageValue Temporary
