#> asset:artifact/0454.kinoko/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/454/use_item/

# 演出
    tellraw @s [{"text": "<"},{"selector":"@s"},{"text": "> き の こ 万 歳 ！"}]
# 処理
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.01 run data get storage api: Return.MaxHealth 20
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
