#> asset:artifact/1363.hydra_fang/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1363.hydra_fang/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# SingleDamageSession Open
    function api:damage/single_damage_session/open

# 再帰でそれぞれに与えたダメージのN%分のダメージを与える
    data modify storage asset:temp Temp.To set from storage asset:context Attack.To
    data modify storage asset:temp Temp.Amounts set from storage asset:context Attack.Amounts
    function asset:artifact/1363.hydra_fang/trigger/recursive

# SingleDamageSession Close
    function api:damage/single_damage_session/close

# リセット
    data remove storage asset:temp Temp
