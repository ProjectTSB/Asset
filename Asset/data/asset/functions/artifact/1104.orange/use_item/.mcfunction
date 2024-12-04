#> asset:artifact/1104.orange/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1104/use_item/

# 演出
    particle dust 100000000 0.7 0.25 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 40 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.3 2

# 最大体力の10%分回復する
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal float 0.1 run data get storage api: Return.MaxHealth 1
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
