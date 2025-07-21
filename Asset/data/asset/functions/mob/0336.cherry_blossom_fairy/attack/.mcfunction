#> asset:mob/0336.cherry_blossom_fairy/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/336/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..60] run particle cherry_leaves ~ ~1 ~ 0.5 1 0.5 0 20 normal @a
    execute at @p[tag=Victim,distance=..60] run playsound ogg:ambient.nether.crimson_forest.shine3 hostile @a ~ ~ ~ 1 2 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Attack
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって桜の木の下に埋められた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは桜の木を切り倒した罪を背負いながら、%2$sによって倒された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..60] run function api:damage/
    function api:damage/reset

# 攻撃対象の周囲に桜吹雪がないときに桜吹雪を生み出す
    execute at @p[tag=Victim,distance=..60] unless entity @e[type=marker,scores={ObjectID=2081},distance=..6] run function asset:mob/0336.cherry_blossom_fairy/attack/summon_shower
