#> asset:artifact/1118.time_samsara/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1118.time_samsara/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 近くのモブのうちランダムな野郎を狙って撃つ
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..12,sort=random,limit=1] positioned ~ ~1 ~ run function asset:artifact/1118.time_samsara/trigger/summon
