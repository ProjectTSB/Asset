#> asset:artifact/1051.blue_crystal_of_stardust/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1051/damage/

# 自身と12m以内の現在体力割合の最も低いプレイヤー2名が回復の対象

# 演出
    function asset:artifact/1051.blue_crystal_of_stardust/damage/vfx

# 使用者の最大体力の12%分、HealTargetが付与されたプレイヤーを回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.12 run data get storage api: Return.MaxHealth 1
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
