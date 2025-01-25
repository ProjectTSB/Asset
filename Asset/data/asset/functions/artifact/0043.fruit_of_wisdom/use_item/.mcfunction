#> asset:artifact/0043.fruit_of_wisdom/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/43/use_item/

    # MP回復
        data modify storage api: Argument.Fluctuation set value 10000
        function api:mp/fluctuation

    # データ取得
        function api:data_get/health

    # 体力減
        data modify storage lib: Argument set value {AttackType:Physical,FixedDamage:1b}
        execute store result storage lib: Argument.Damage float 0.01 run data get storage api: Health 75
        function lib:damage/
        function lib:damage/reset
        playsound entity.player.hurt player @a ~ ~ ~ 1 1
        particle enchant ~ ~1 ~ 0.5 0.5 0.5 0 300 force @a
