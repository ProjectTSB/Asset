#> asset:artifact/1163.rail_shooter/shot/shoot
# @within function
#   asset:artifact/1163.rail_shooter/shot/
#   asset:artifact/1163.rail_shooter/shot/shoot

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,sort=nearest,limit=1] add LandingTarget

# 演出
    execute if entity @s[tag=!WB.FullCharge] run particle dust 0.769 0.973 0.863 0.5 ~ ~ ~ 0 0 0 0 5
    execute if entity @s[tag=WB.FullCharge] run particle dust 0.769 0.973 0.863 1 ~ ~ ~ 0.5 0.5 0.5 0 5
    execute if entity @s[tag=WB.FullCharge] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 0
    execute if entity @s[tag=WB.FullCharge] run particle sneeze ~ ~ ~ 0 0 0 0 2

# 着弾
    execute if entity @s[tag=Landing,tag=!WB.FullCharge] run function asset:artifact/1163.rail_shooter/shot/damage
    execute if entity @s[tag=Landing,tag=WB.FullCharge] run function asset:artifact/1163.rail_shooter/shot/damage_full

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..7] run function asset:artifact/1163.rail_shooter/shot/shoot
