#> asset:mob/0424.icicle_leg/tick/stomp
#
#
#
# @within function asset:mob/0424.icicle_leg/tick/

# 演出
    playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.5 2
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1

# スコアセット、着地後の行動が持続攻撃になる
    scoreboard players set @s General.Mob.Tick 32

# モデル変更
    item replace entity @s armor.head with stick{CustomModelData:20209}

# ダメージ設定
    data modify storage lib: Argument.Damage set value 40f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"

# 補正実行
    function lib:damage/modifier

# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/

# 吹き飛ばし
    data modify storage api: Argument.ID set value 17
    data modify storage api: Argument.Stack set value 2
    data modify storage api: Argument.Duration set value 20
    execute as @a[gamemode=!spectator,distance=..3] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    function lib:damage/reset

# パーティクル
    particle smoke ~ ~0.1 ~ 1 0.1 1 0.02 100
    particle dust 0.5 0.8 1 1.5 ~ ~0.1 ~ 1.2 0.1 1.2 0.02 50
    particle dust 0 0.8 1 1.5 ~ ~0.1 ~ 1.2 0.1 1.2 0.02 50
