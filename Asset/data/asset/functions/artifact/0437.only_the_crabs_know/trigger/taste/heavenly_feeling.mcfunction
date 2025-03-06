#> asset:artifact/0437.only_the_crabs_know/trigger/taste/heavenly_feeling
#
# 初期リスワープ & HPMP全快 (天国にのぼるような)
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# 演出
    tellraw @a [{"selector":"@s","bold":true},{"text":"は天国に上るような錯覚がした"}]
    playsound ui.toast.challenge_complete player @a 23 3 24 1.0 1.2

# 初期地点ワープ
    execute in minecraft:overworld run tp @s 23 3 24

# HP、MP全快
    data modify storage api: Argument.Heal set value 10000f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    data modify storage api: Argument.FixedHeal set value false
    function api:heal/
    function api:heal/reset

    data modify storage api: Argument.Fluctuation set value 10000
    function api:mp/fluctuation
