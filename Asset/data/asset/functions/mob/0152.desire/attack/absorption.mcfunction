#> asset:mob/0152.desire/attack/absorption
#
#
#
# @within function asset:mob/0152.desire/attack/
#> private
# @private
    #declare score_holder $MPCheck
    #declare score_holder $MPReduce
    #declare tag EmptyMP

# 演出
    execute at @p[tag=Victim] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 100
    execute at @p[tag=Victim] run playsound minecraft:entity.glow_squid.death hostile @a

# 難易度値を取得し40倍で取得
    function api:global_vars/get_difficulty
    execute store result score $MPReduce Temporary run data get storage api: Return.Difficulty 40

# プレイヤーのMP現在値と減少量を比較し、減少量の方が多ければTagを付与
    execute as @p[tag=Victim] run function api:mp/get_current
    execute store result score $MPCheck Temporary run data get storage api: Return.CurrentMP
    execute if score $MPCheck Temporary <= $MPReduce Temporary run tag @p[tag=Victim] add EmptyMP

# ダメージ
# 対象のMPが空な場合、与えるダメージが上昇
    data modify storage lib: Argument.Damage set value 35f
    execute if entity @p[tag=Victim,tag=EmptyMP] run data modify storage lib: Argument.Damage set value 50f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにあらゆる欲を押し付けられた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに命までも吸い取られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function lib:damage/modifier
    execute as @p[tag=Victim] run function lib:damage/
    function lib:damage/reset

# マナを吸い取る 吸収量 = (40 × 難易度値)
    execute store result storage api: Argument.Fluctuation int -40 run data get storage api: Return.Difficulty
    execute as @p[tag=Victim] run function api:mp/fluctuation

# 自分にタグを付与する
    execute if entity @p[tag=Victim,tag=!EmptyMP] run tag @s add 48.HasMP

# タグリセット
    tag @p[tag=EmptyMP] remove EmptyMP
    tag @s remove RunOnce
    scoreboard players reset $MPCheck Temporary
    scoreboard players reset $MPReduce Temporary
