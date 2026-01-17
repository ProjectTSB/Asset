#> asset:mob/0210.aurora_eye/tick/attack
#
# 攻撃
#
# @within function asset:mob/0210.aurora_eye/tick/

# VFX
    particle dust 0.000 0.545 1.000 1.5 ~ ~1.2 ~ 0.4 0.4 0.4 1 50 normal
    particle dust 0.000 1.000 0.886 1.5 ~ ~1.2 ~ 0.4 0.4 0.4 1 50 normal
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.5 2 0

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage._
    data modify storage api: Argument.Metadata set from storage asset:context this.Metadata.Melee
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってオーロラに包まれ消滅した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって空の塵となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @e[type=zombie,tag=this,distance=..5,sort=nearest,limit=1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# クールタイム設定
    data modify storage asset:context this.AttackCT._ set from storage asset:context this.AttackCT.Max
