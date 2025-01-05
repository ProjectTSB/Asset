#> asset:mob/0329.eclael_swordbeam/tick/move
#
# Mobのtick時の処理
#
# @within function asset:mob/0329.eclael_swordbeam/tick/

# プレイヤーが近くにいる場合，ダメージ発生
    execute positioned ^-1 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 2190.Hit
    execute positioned ^ ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 2190.Hit
    execute positioned ^1 ^ ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 2190.Hit
    execute positioned ^-1 ^-1 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 2190.Hit
    execute positioned ^ ^-1 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 2190.Hit
    execute positioned ^1 ^-1 ^ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 2190.Hit
