#> asset:artifact/0455.takenoko/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/455/use_item/

# 演出
    tellraw @s [{"text": "<"},{"selector":"@s"},{"text": "> た け の こ 万 歳 ！"}]
# 処理
    function api:data_get/health
    execute store result storage api: Argument.Heal double 0.01 run data get storage api: Health 20
    function api:heal/modifier
    function api:heal/
    function api:heal/reset
