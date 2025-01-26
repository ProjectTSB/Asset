#> asset:artifact/0437.only_the_crabs_know/trigger/taste/great_stock
# 回復,リジェネ + 出汁美味
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# HP回復
    # 回復する量 = 10
        data modify storage api: Argument.Heal set value 10f
        function api:heal/modifier
        function api:heal/
    # リセット
        function api:heal/reset

# リジェネ
    effect give @s regeneration 600 3 true

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"は出汁が良く出ていると絶賛した"}]
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 1.3
