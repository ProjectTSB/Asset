#> asset:mob/0154.ruin/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/154/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

#> Private
# @private
    #declare tag 4A.Target

# 腕を振る
    execute unless entity @s[tag=4A.Madness] run item replace entity @s weapon.mainhand with stick{CustomModelData:20064}
    execute if entity @s[tag=4A.Madness] run item replace entity @s weapon.mainhand with stick{CustomModelData:20065}

# ターゲット選択
# 理論上は１人しか存在しないはずだが念のため
    execute as @a[tag=Victim,distance=..6,sort=random,limit=1] run tag @s add 4A.Target

# 演出
    execute at @p[tag=4A.Target] run particle block redstone_block ~ ~1 ~ 0.1 0 0.1 4.2 80
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 2 2

# 形態変化の前か後かで異なるダメージにする
    execute unless entity @s[tag=4A.Madness] run data modify storage api: Argument.Damage set from storage asset:context this.Damage.Normal
    execute if entity @s[tag=4A.Madness] run data modify storage api: Argument.Damage set from storage asset:context this.Damage.Madness

# ダメージ処理
    # 通常攻撃
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "None"
        data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって存在が崩壊した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
        data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにより跡形もなく破壊された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
        function api:damage/modifier
        execute as @a[tag=4A.Target,distance=..6,limit=1] run function api:damage/
    # 破滅時は周囲のプレイヤーも巻き込む
        execute if entity @s[tag=4A.Madness] store result storage api: Argument.Damage double 0.0050 run data get storage api: Argument.Damage 100
        execute if entity @s[tag=4A.Madness] as @a[tag=4A.Target,distance=..6,limit=1] at @s as @a[tag=!4A.Target,distance=..4] run function api:damage/
    # リセット
        function api:damage/reset

# リセット
    tag @a[tag=4A.Target,distance=..6,limit=1] remove 4A.Target
