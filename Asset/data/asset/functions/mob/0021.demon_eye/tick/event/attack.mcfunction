#> asset:mob/0021.demon_eye/tick/event/attack
#
# 接触ダメージ 実行しているのはプレイヤー自身
#
# @within function asset:mob/0021.demon_eye/tick/

# VFX
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 2 1

# ダメージ設定
    data modify storage api: Argument.Damage set value 3.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

# 補正実行
    function api:damage/modifier

# 一番最寄りのプレイヤー（今回は接触したやつのハズ）のHurtTimeを取る
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:data_get/hurt_time

# HurTime取ってそれが0ならダメージを与える
    execute if data storage api: {HurtTime:0s} positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/

# リセット
    function api:damage/reset

# クールタイム設定
    scoreboard players set @s L.AttackCT 20
