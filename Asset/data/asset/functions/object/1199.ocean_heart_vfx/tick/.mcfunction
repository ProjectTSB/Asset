#> asset:object/1199.ocean_heart_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1199/tick

# 消える
    execute unless data storage asset:context this.List[0] run return run function asset:object/1199.ocean_heart_vfx/tick/kill

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# particle
    execute if score @s General.Object.Tick matches 4 run function asset:object/1199.ocean_heart_vfx/tick/vfx

# sound
    execute if score @s General.Object.Tick matches ..3 run playsound block.amethyst_cluster.step player @a ~ ~ ~ 0.7 0.8
    execute if score @s General.Object.Tick matches ..3 run playsound entity.dolphin.jump player @a ~ ~ ~ 0.2 0.8

# 途中から半透明にする
    execute if score @s General.Object.Tick matches 5 run function asset:object/1199.ocean_heart_vfx/tick/set_opacity

# 適用
    data modify storage asset:temp Args.Char set from storage asset:context this.List[-1]
    function asset:object/1199.ocean_heart_vfx/tick/change_char.m with storage asset:temp Args
    data remove storage asset:context this.List[-1]
    data remove storage asset:temp Args
