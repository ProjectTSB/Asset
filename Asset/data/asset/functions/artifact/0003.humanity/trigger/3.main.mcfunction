#> asset:artifact/0003.humanity/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0003.humanity/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 10%の確率で死亡
    scoreboard players set @s Temporary 0
    execute if predicate lib:random_pass_per/10 run scoreboard players set @s Temporary 1

# 演出 共通
    title @s times 20 20 20
    particle portal ~ ~ ~ 0 0 0 2 250 force @s

# 処理
    execute if score @s Temporary matches 0 run function asset:artifact/0003.humanity/trigger/heal
    execute if score @s Temporary matches 1 run function asset:artifact/0003.humanity/trigger/damage

# リセット
    scoreboard players reset @s Temporary
