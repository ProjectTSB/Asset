#> asset:artifact/0217.fish/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/217/use_item/


# 最大体力を取得
    function api:modifier/max_health/get

# 最大体力だけ固定回復
    data modify storage api: Argument.Heal set from storage api: Return.MaxHealth
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 演出
    execute at @s run playsound entity.cat.ambient player @a[distance=..10] ~ ~ ~ 3 1
    execute at @s run tellraw @a[distance=..10] {"text":"ネコの気配を感じる……？","color":"white"}
