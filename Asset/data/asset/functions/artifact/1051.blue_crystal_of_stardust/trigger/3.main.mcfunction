#> asset:artifact/1051.blue_crystal_of_stardust/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 自身と12m以内の現在体力割合の最も低いプレイヤー2名が回復の対象

# 演出
    function asset:artifact/1051.blue_crystal_of_stardust/trigger/vfx

# 使用者の最大体力の12%分、HealTargetが付与されたプレイヤーを回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.12 run data get storage api: Return.MaxHealth 1
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
