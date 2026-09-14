#> asset:artifact/1598.banisher/trigger/damage/boss
#
#
#
# @within function asset:artifact/1598.banisher/trigger/damage/

# 先に回復
    data modify storage api: Argument.Heal set value 20.0f
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# ダメージ値を設定
    data modify storage api: Argument.Damage set value 2000
