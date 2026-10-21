#> asset:artifact/1680.pluvia/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1680.pluvia/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ランダムな敵の位置に魔法陣召喚
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..6,sort=random,limit=1] at @s run function asset:artifact/1680.pluvia/trigger/summon_object/random_rotate

# 敵がいなかった場合、周囲の適当な位置に出す
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..6,limit=1] run function asset:artifact/1680.pluvia/trigger/summon_object/spread
