#> asset:artifact/0615.censored/attack_melee/3.4.execution
#
# 雑魚モブの処刑
#
# @within function asset:artifact/0615.censored/attack_melee/

# 演出
    execute positioned ~ ~-0.2 ~ run function asset:artifact/0615.censored/attack_melee/3.1.censored_object
    execute positioned ~ ~ ~ run function asset:artifact/0615.censored/attack_melee/3.1.censored_object
    execute positioned ~ ~0.2 ~ run function asset:artifact/0615.censored/attack_melee/3.1.censored_object
    execute positioned ~ ~0.4 ~ run function asset:artifact/0615.censored/attack_melee/3.1.censored_object
    execute positioned ~ ~0.6 ~ run function asset:artifact/0615.censored/attack_melee/3.1.censored_object
    execute positioned ~ ~0.8 ~ run function asset:artifact/0615.censored/attack_melee/3.1.censored_object
    function asset:artifact/0615.censored/attack_melee/3.2.censored_object2
    particle block redstone_block ~ ~1.5 ~ 0.5 0.5 0.5 1 30
    particle block bedrock ~ ~1.5 ~ 0.5 0.5 0.5 1 30

# 効果
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01,limit=1] run function api:mob/remove
