#> asset:mob/0227.frost_eye/tick/attack
#
# ダメージ
#
# @within function asset:mob/0227.frost_eye/tick/

# 演出
    particle snowflake ~ ~1.6 ~ 0.5 0.3 0.5 0 30 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0

# ダメージ 鈍足が付与されてるならダメージ1.5倍
    data modify storage api: Argument.Damage set from storage asset:context this
    execute if entity @s[predicate=asset:mob/0227.frost_eye/slowness] store result storage api: Argument.Damage float 1.5 run data get storage asset:context this
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって全身が霜に覆われ、凍死した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @e[type=zombie,tag=this,distance=..5,sort=nearest,limit=1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 鈍足を付与
    effect give @s slowness 4 3 true

# クールタイム設定
    scoreboard players set @e[type=zombie,tag=this,distance=..5,sort=nearest,limit=1] 6C.AttackCT 20
