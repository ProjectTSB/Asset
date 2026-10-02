#> asset:artifact/1626.years_magic_index/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1626.years_magic_index/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..5,sort=nearest,limit=1] run function asset:artifact/1626.years_magic_index/trigger/vfx/attack
# 引数の設定
    data modify storage api: Argument.Damage set value 2800f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier

    data modify storage api: Argument.AttackType set value "Physical"
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..5,sort=nearest,limit=1] run function api:damage/
# リセット
    function api:damage/reset
