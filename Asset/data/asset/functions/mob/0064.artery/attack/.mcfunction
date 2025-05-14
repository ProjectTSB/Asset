#> asset:mob/0064.artery/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/64/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ設定
    data modify storage api: Argument.Damage set value 4.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって心臓が600BPMを目指してしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって脈が限界を超えてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# ハード以上で自身に移動速度上昇を付与
    execute if predicate api:global_vars/difficulty/min/2_hard run effect give @s speed 3 0 true

# 演出
    playsound block.note_block.basedrum hostile @a ~ ~ ~ 1.3 0.5 0
    particle dust 0.769 0 0 2 ~ ~1 ~ 0.6 0.6 0.6 0 30 normal @a
