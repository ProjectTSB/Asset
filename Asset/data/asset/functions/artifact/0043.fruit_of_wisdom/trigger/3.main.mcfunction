#> asset:artifact/0043.fruit_of_wisdom/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0043.fruit_of_wisdom/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # MP回復
        data modify storage api: Argument.Fluctuation set value 10000
        function api:mp/fluctuation

    # データ取得
        function api:data_get/health

    # 体力減
        execute store result storage api: Argument.Damage float 0.01 run data get storage api: Health 75
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.FixedDamage set value true
        function api:damage/
        function api:damage/reset
        playsound entity.player.hurt player @a ~ ~ ~ 1 1
        particle enchant ~ ~1 ~ 0.5 0.5 0.5 0 300 force @a
