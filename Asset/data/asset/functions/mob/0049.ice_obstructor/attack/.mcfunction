#> asset:mob/0049.ice_obstructor/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/49/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim,distance=..32] run particle minecraft:falling_dust diamond_block ~ ~1.75 ~ 0.4 0.4 0.4 1 15
    execute at @p[tag=Victim,distance=..32] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.8 1.3 0

# 引数の設定
    data modify storage api: Argument.Damage set value 5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍結した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによって凍り付いた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset

# デバフ
# TODO 採掘速度低下がEffectAssetにきたら置き換える
# 難易度値だけ鈍足と採掘速度低下を付与

# 難易度値取得
    function api:global_vars/get_difficulty

# 鈍足
    data modify storage api: Argument set value {ID:17,Duration:60}
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 採掘速度低下
    data modify storage api: Argument set value {ID:26,Duration:60}
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# ハード以上かつ破壊可能エリアなら粉雪を設置
    execute if predicate api:area/is_breakable if predicate api:global_vars/difficulty/min/2_hard at @p[tag=Victim,distance=..32] run fill ~ ~ ~ ~ ~ ~ powder_snow replace #lib:air
