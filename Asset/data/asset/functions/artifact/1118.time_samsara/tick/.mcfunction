#> asset:artifact/1118.time_samsara/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1118/tick/

# 近くのモブのうちランダムな野郎を狙って撃つ
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,sort=random,limit=1] positioned ~ ~1 ~ run function asset:artifact/1118.time_samsara/tick/summon
