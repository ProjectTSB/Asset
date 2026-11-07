#> asset:object/1209.pluvia_circle/tick/laser/recursive
#
#
#
# @within function
#   asset:object/1209.pluvia_circle/tick/laser/
#   asset:object/1209.pluvia_circle/tick/laser/recursive

# パーティクル
    particle dust 0.4 0.65 1 0.5 ~ ~ ~ 0.05 0.05 0.05 0 1 normal @a
    particle dust 0.4 0.65 1 0.5 ^ ^ ^-0.25 0.05 0.05 0.05 0 1 normal @a

# Range - 1
    execute store result storage asset:context this.Range int 0.9999999999 run data get storage asset:context this.Range

# 以下の条件で再帰を終了
    # Rangeが0
        execute if data storage asset:context this{Range:0} run return run function asset:object/1209.pluvia_circle/tick/laser/vfx
    # ブロックに接触
        execute unless block ^ ^ ^0.5 #lib:no_collision/ run return run function asset:object/1209.pluvia_circle/tick/laser/vfx
    # 敵に接触
        execute as @e[type=#lib:living_without_player,tag=Enemy,dx=0,sort=random,limit=1] at @s run return run function asset:object/1209.pluvia_circle/tick/laser/damage

# 再帰
    execute positioned ^ ^ ^0.5 run function asset:object/1209.pluvia_circle/tick/laser/recursive
