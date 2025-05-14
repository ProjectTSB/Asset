#> asset:object/2206.eclael_thunder/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2206.eclael_thunder/tick/

# ヒット判定
    execute if predicate api:global_vars/difficulty/max/normal as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run tag @s add 2206.Hit
    execute if predicate api:global_vars/difficulty/min/3_blessless as @a[tag=!PlayerShouldInvulnerable,distance=..4.9] run tag @s add 2206.Hit

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=2206.Hit] run function api:damage/
    function api:damage/reset

# 難易度に応じたMP減少
    # 難易度値を取得し1減らす
        function api:global_vars/get_difficulty
        execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
        scoreboard players remove $Difficulty Temporary 1
    # Effectを付与
        data modify storage api: Argument.ID set value 605
        execute store result storage api: Argument.Stack int 1 run scoreboard players get $Difficulty Temporary
        data modify storage api: Argument.Duration set value 100
        execute as @a[tag=2206.Hit] run function api:entity/mob/effect/give
        function api:entity/mob/effect/reset
    # リセット
        scoreboard players reset $Difficulty Temporary
        tag @a remove 2206.Hit

# 演出
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.7
    particle flash ~ ~ ~ 0 0 0 0 1
# 円型ベクトルパーティクル
# 円 1
    execute rotated ~00 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~10 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~20 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~30 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~40 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~50 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~60 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~70 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~80 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~90 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~100 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~110 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~120 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~130 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~140 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~150 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~160 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~170 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~180 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~190 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~200 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~210 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~220 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~230 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~240 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~250 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~260 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~270 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~280 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~290 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~300 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~310 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~320 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~330 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~340 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
    execute rotated ~350 0 run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
