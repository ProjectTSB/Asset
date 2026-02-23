#> asset:artifact/1361.unicorn_horn/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1361.unicorn_horn/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# check_conditionで判定したTempTargetの中で最も近い対象を攻撃対象とする

# Victimのうちランダムな対象1体を指定して実行
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..64,sort=random,limit=1] at @s run function asset:artifact/1361.unicorn_horn/trigger/as_target
