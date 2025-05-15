#> asset:mob/0424.icicle_leg/tick/stomp
#
#
#
# @within function asset:mob/0424.icicle_leg/tick/

# 演出
    particle smoke ~ ~0.1 ~ 1 0.1 1 0.02 100
    particle dust 0.4 0.8 1 1.5 ~ ~0.1 ~ 2 0.1 2 0.02 50
    particle dust 0.6 0.9 1 1.5 ~ ~0.1 ~ 2 0.1 2 0.02 50
    playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.5 2
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0.5

# スコアセット、着地後の行動が持続攻撃になる
    scoreboard players set @s General.Mob.Tick 2

# モデル変更
    item replace entity @s armor.head with stick{CustomModelData:20470}

# ダメージ設定
    data modify storage api: Argument.Damage set value 30f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function api:damage/
    function api:damage/reset

# ノーマルならreturn
    execute if predicate api:global_vars/difficulty/1_normal run return 0

# 難易度値を取得
    function api:global_vars/get_difficulty

# 鈍足を付与
    data modify storage api: Argument.ID set value 17
    data modify storage api: Argument.Stack set from storage api: Return.Difficulty
    data modify storage api: Argument.Duration set value 30
    execute as @a[gamemode=!spectator,distance=..3.5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
