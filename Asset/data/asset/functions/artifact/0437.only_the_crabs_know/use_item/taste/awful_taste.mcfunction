#> asset:artifact/0437.only_the_crabs_know/use_item/taste/awful_taste
#
# MP減少,毒 + 酷い味だ
#
# @within function asset:artifact/0437.only_the_crabs_know/use_item/

# MP減少
    # 減少する量 = 50
        data modify storage api: Argument.Fluctuation set value -50
        function api:mp/fluctuation

# 毒
    effect give @s poison 15 2 true

# 演出
    tellraw @a[distance=..10] [{"selector":"@s","bold":true},{"text":"は酷い味だと酷評した"}]
    playsound entity.llama.ambient player @a ~ ~ ~ 1.0 1.0
