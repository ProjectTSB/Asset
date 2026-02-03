#> asset:object/1011.456_dice/tick/beam/
#
#
#
# @within function asset:object/1011.456_dice/tick/

# 残り攻撃回数をデクリメント
    execute store result storage asset:context this.AttackCount int 0.9999999999 run data get storage asset:context this.AttackCount 1

# 攻撃
    execute facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes run function asset:object/1011.456_dice/tick/beam/recursive
    tag @s remove Landing
