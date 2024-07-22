#> asset:mob/0373.lightning_spellbook/tick/3.summon
#
# 弾を召喚する処理
#
# @within function asset:mob/0373.lightning_spellbook/tick/2.ready

# 弾を召喚
    data modify storage api: Argument.ID set value 374
    function api:mob/summon

# リセット
    function asset:mob/0373.lightning_spellbook/tick/4.reset
