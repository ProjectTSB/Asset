#> asset:artifact/1024.brave_rod/trigger/combo/laser_damage
#
# レーザーのダメージ処理
#
# @within function
#   asset:artifact/1024.brave_rod/trigger/combo/laser
#   asset:artifact/1024.brave_rod/trigger/combo/laser_finish

# 使用者にヒットタグ付与
    tag @p[tag=SG.Used] add SG.Hit

# 引数の設定
    execute store result storage api: Argument.Damage float 1 run random value 90..155
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.AdditionalMPHeal set value 6.5f
# 補正functionを実行
    execute as @p[tag=SG.Used] run function api:damage/modifier
# ダメージ実行
    function api:damage/

# リセット
    function api:damage/reset
