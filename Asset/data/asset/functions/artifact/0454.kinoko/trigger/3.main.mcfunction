#> asset:artifact/0454.kinoko/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0454.kinoko/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出
        tellraw @s [{"text": "<"},{"selector":"@s"},{"text": "> き の こ 万 歳 ！"}]
    # 処理
        function api:modifier/max_health/get
        execute store result storage api: Argument.Heal double 0.01 run data get storage api: Return.MaxHealth 20
        function api:heal/modifier
        function api:heal/
        function api:heal/reset
