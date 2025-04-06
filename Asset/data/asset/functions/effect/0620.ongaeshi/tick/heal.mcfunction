#> asset:effect/0620.ongaeshi/tick/heal
#
# 回復する
#
# @within function asset:effect/0620.ongaeshi/tick/

# 固定回復
# 本来は付与するentityによって補正されるべきな気はするが、このバフが付与されるころにはそのentityは消えているため
    data modify storage api: Argument.Heal set value 1.2
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:heal/
    function api:heal/reset
