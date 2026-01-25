#> asset:object/1030.barrage_spirit_bullet/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1030/kill

# ダメージ
    execute if entity @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run function asset:object/1030.barrage_spirit_bullet/kill/damage

# 演出
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 0.5 5
# 死ぬ
    kill @s
