#> asset:mob/0416.ahssat/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/416/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute as @p[tag=Victim] at @s run particle dust 0.975 0.2 0.2 1 ~ ~ ~ 0.5 1 0.5 0 30
    playsound entity.blaze.hurt hostile @a ~ ~ ~ 1 0.65

# 何故かこうするとプレイヤーと同じ剣の降り方をする
    item replace entity @s weapon with stick{CustomModelData:292}

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Vanilla
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって斬られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] at @s run function api:damage/
    function api:damage/reset
