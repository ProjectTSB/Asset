#> asset:mob/0227.frost_eye/tick/attack
#
# ダメージ
#
# @within function asset:mob/0227.frost_eye/tick/

# 演出
    particle snowflake ~ ~1.6 ~ 0.5 0.3 0.5 0 30 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0

# 対象の鈍足デバフ(ID:17,67,117)を検知する
    data modify storage api: Argument.ID set value 17
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run data modify storage api: Argument.ID set value 67
    execute unless data storage api: Return.Effect run function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run data modify storage api: Argument.ID set value 117
    execute unless data storage api: Return.Effect run function api:entity/mob/effect/get/from_id

# ダメージ 鈍足が付与されてるならダメージ1.2倍
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    execute if data storage api: Return.Effect store result storage api: Argument.Damage float 1.2 run data get storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって全身が霜に覆われ、凍死した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @e[type=zombie,tag=this,distance=..5,sort=nearest,limit=1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# ハード以上なら鈍足を付与する
    execute if predicate api:global_vars/difficulty/min/2_hard run function asset:mob/0227.frost_eye/tick/debuff

# クールタイム設定
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @e[type=zombie,tag=this,distance=..5,sort=nearest,limit=1] 6C.AttackCT 40
    execute if predicate api:global_vars/difficulty/min/2_hard run scoreboard players set @e[type=zombie,tag=this,distance=..5,sort=nearest,limit=1] 6C.AttackCT 20
