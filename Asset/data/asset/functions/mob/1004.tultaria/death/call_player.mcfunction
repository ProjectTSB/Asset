#> asset:mob/1004.tultaria/death/call_player
#
#
#
# @within function asset:mob/1004.tultaria/death/

# 危ないので付近のプレイヤーを中央に寄せる
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0.0d,0.0d],[8d,8d]]
    execute as @a[distance=..64] at @e[type=marker,tag=RW.Marker.SpawnPoint] run function lib:spread_entity/
