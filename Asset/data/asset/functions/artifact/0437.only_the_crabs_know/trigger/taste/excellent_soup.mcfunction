#> asset:artifact/0437.only_the_crabs_know/trigger/taste/excellent_soup
#
# HP,MP回復 + うまいっ！
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# HP回復
    # 回復する量 = 20
        data modify storage api: Argument.Heal set value 20f
        function api:heal/modifier
        function api:heal/
    # リセット
        function api:heal/reset

# MP回復
    # 回復する量 = 50
        data modify storage api: Argument.Fluctuation set value 50
        function api:mp/fluctuation

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"はうまいっ！ と賞賛した"}]
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 2.0
