#> asset:mob/0292.trample_bot/tick/event/stomp
#
#
#
# @within function asset:mob/0292.trample_bot/tick/

# 演出
    playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 0.5 2
    playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 0.5 2
    scoreboard players reset @s 84.MoveTime

# モデル変更
    item replace entity @s armor.head with stick{CustomModelData:20211}

# ダメージ設定
    data modify storage api: Argument.Damage set value 38f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"

# 補正実行
    function api:damage/modifier

# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/

# 吹き飛ばし
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Stack set value 21
    data modify storage api: Argument.Duration set value 7
    execute as @a[gamemode=!spectator,distance=..2] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    function api:damage/reset

# パーティクル
    particle smoke ~ ~0.1 ~ 1 0.1 1 0.02 100
    particle dust 1000000000 1 0 1.5 ~ ~0.1 ~ 1 0.1 1 0.02 30
    particle dust 1 1 0 1 ~ ~0.1 ~ 1 0.1 1 0.02 30
    execute positioned ~ ~0.1 ~ run function asset:mob/0292.trample_bot/tick/event/shape
