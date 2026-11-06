#> asset:object/2246.lawless_trap_laser/common/recursive_laser
#
#
#
# @within function
#   asset:object/2246.lawless_trap_laser/init/
#   asset:object/2246.lawless_trap_laser/tick/
#   asset:object/2246.lawless_trap_laser/common/recursive_laser

# 見た目
    particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0 1 force @a[distance=..32]
    particle minecraft:dust 0.5 0 1 2 ~ ~ ~ 0.2 0.2 0.2 0 5 force @a[distance=..32]
    particle minecraft:dust 0.2 0 0.3 1.5 ~ ~ ~ 0.1 0.1 0.1 0 5 force @a[distance=..32]

# ダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add 2246.Hit

# 壁がなかったら再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision/ run function asset:object/2246.lawless_trap_laser/common/recursive_laser
