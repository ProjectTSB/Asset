#> asset:mob/0152.desire/attack/3.absorption
#
#
#
# @within function asset:mob/0152.desire/attack/2.attack
#> private
# @private
    #declare score_holder $MPCheck
    #declare score_holder $MPReduce
    #declare tag EmptyMP

# 演出
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 100
    playsound minecraft:entity.glow_squid.death hostile @a

# 難易度値を取得し40倍で取得
    function api:global_vars/get_difficulty
    execute store result score $MPReduce Temporary run data get storage api: Return.Difficulty 40

# プレイヤーのMP現在値と減少量を比較し、減少量の方が多ければTagを付与
    execute as @p[tag=Victim] store result score $MPCheck Temporary run function lib:mp/get
    execute if score $MPCheck Temporary <= $MPReduce Temporary run tag @p[tag=Victim] add EmptyMP

# ダメージ
# 対象のMPが空な場合、与えるダメージが上昇
    data modify storage lib: Argument.Damage set value 35f
    execute if entity @p[tag=Victim,tag=EmptyMP] run data modify storage lib: Argument.Damage set value 50f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @p[tag=Victim] run function lib:damage/
    function lib:damage/reset

# マナを吸い取る 吸収量 = (40 × 難易度値)
    execute store result score $Fluctuation Lib run data get storage api: Return.Difficulty -40
    execute as @p[tag=Victim] run function lib:mp/fluctuation

# 自分にタグを付与する
    execute if entity @p[tag=Victim,tag=!EmptyMP] run tag @s add 48.HasMP

# タグリセット
    tag @p[tag=EmptyMP] remove EmptyMP
    tag @s remove RunOnce
    scoreboard players reset $MPCheck Temporary
    scoreboard players reset $MPReduce Temporary