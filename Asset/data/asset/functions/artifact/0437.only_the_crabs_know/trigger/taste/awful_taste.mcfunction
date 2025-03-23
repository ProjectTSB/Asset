#> asset:artifact/0437.only_the_crabs_know/trigger/taste/awful_taste
#
# 毒 & MP減少 (酷い味だ)
#
# @within function asset:artifact/0437.only_the_crabs_know/trigger/3.main

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"は酷い味だと酷評した"}]
    playsound entity.llama.ambient player @a ~ ~ ~ 1.0 1.0

# 毒
    data modify storage api: Argument.ID set value 29
    data modify storage api: Argument.Stack set value 3
    data modify storage api: Argument.Duration set value 300
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# MP減少
    data modify storage api: Argument.Fluctuation set value -50
    function api:mp/fluctuation
