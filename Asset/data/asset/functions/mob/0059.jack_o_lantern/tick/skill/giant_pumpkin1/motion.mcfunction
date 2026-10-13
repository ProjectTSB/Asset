#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/motion
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/first_tick

# 自身の後ろが壁か？
    execute if function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/check_no_wall_behind run data modify storage asset:temp NoBlockBihind set value true

# 後ろが壁でなければバックステップ
    execute if data storage asset:temp {NoBlockBihind:true} run data modify storage lib: Argument.VectorMagnitude set value 2.5
    execute if data storage asset:temp {NoBlockBihind:true} facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~180 -11.25 run function lib:motion/

# 壁なら前へステップ
    execute unless data storage asset:temp {NoBlockBihind:true} run data modify storage lib: Argument.VectorMagnitude set value 3.0
    execute unless data storage asset:temp {NoBlockBihind:true} facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~ -11.25 run function lib:motion/

# この時のrotationを記録しておく
    execute if data storage asset:temp {NoBlockBihind:true} facing entity @p[gamemode=!spectator,distance=..50] feet run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/save_rotation
    execute unless data storage asset:temp {NoBlockBihind:true} facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~180 ~ run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/save_rotation

# リセット
    data remove storage lib: Argument
    data remove storage asset:temp NoBlockBihind
