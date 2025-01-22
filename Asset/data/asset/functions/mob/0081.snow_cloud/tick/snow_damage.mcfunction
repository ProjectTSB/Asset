#> asset:mob/0081.snow_cloud/tick/snow_damage
#
# ダメージ処理
#
# @within function asset:mob/0081.snow_cloud/tick/check_block

# 粉雪が積もる
    execute if entity @s[gamemode=survival] run fill ~ ~ ~ ~ ~ ~ powder_snow replace #lib:air

# 音
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.3 1.5 0

# ダメージ
    data modify storage lib: Argument.Damage set value 14f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの降雪により凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの雪に埋もれ、窒息した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    execute as @e[type=polar_bear,tag=this,scores={MobID=81},distance=..8,limit=1] run function lib:damage/modifier
# 実行
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset

# ノーマルならreturn
    execute if predicate api:global_vars/difficulty/easy run return 0

# ハード以上でデバフ
# 鈍足
    data modify storage api: Argument set value {ID:17,Duration:60}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
# 採掘速度低下
    data modify storage api: Argument set value {ID:26,Duration:60}
    execute store result storage api: Argument.Stack int 2 run data get storage api: Return.Difficulty
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
