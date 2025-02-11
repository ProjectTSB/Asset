#> asset:artifact/0003.humanity/use_item/heal
#
#
#
# @within function asset:artifact/0003.humanity/use_item/

# 演出
    title @a title {"text":"HUMANITY RESTORED","color":"dark_aqua"}
    playsound block.enchantment_table.use player @s ~ ~ ~ 1 0 1
# 回復する
    function api:modifier/max_health/get
    data modify storage api: Argument.Heal set from storage api: Return.MaxHealth
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
