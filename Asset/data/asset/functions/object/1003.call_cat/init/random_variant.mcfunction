#> asset:object/1003.call_cat/init/random_variant
#
#
#
# @within function asset:object/1003.call_cat/init/

#> Private
# @private
    #declare score_holder $Random

# ネコの種類をランダムに
    execute store result score $Random Temporary run random value 0..10
    execute if score $Random Temporary matches 0 run data modify entity @s variant set value "all_black"
    execute if score $Random Temporary matches 1 run data modify entity @s variant set value "black"
    execute if score $Random Temporary matches 2 run data modify entity @s variant set value "british_shorthair"
    execute if score $Random Temporary matches 3 run data modify entity @s variant set value "calico"
    execute if score $Random Temporary matches 4 run data modify entity @s variant set value "jellie"
    execute if score $Random Temporary matches 5 run data modify entity @s variant set value "persian"
    execute if score $Random Temporary matches 6 run data modify entity @s variant set value "ragdoll"
    execute if score $Random Temporary matches 7 run data modify entity @s variant set value "red"
    execute if score $Random Temporary matches 8 run data modify entity @s variant set value "siamese"
    execute if score $Random Temporary matches 9 run data modify entity @s variant set value "tabby"
    execute if score $Random Temporary matches 10 run data modify entity @s variant set value "white"
    scoreboard players reset $Random Temporary
