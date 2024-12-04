#> asset:artifact/0248.bow_of_vinderre/attack_projectile/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/248/attack_projectile/

#> private
# @private
    #declare tag RandomTP

# ここから先は神器側の効果の処理を書く
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..100] run effect give @s poison 20 4

# ダメージを与える
    data modify storage lib: Argument.Damage set value 40.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..100,limit=1] run function lib:damage/
    function lib:damage/reset

# テレポート処理
    execute if predicate lib:random_pass_per/25 as @e[type=#lib:living,type=!player,tag=Victim,tag=!Immovable,distance=..100] run tag @s add RandomTP
    tp @e[type=#lib:living,type=!player,tag=Victim,tag=RandomTP,distance=..100] ^ ^ ^1.5
    execute if entity @e[type=#lib:living,type=!player,tag=Victim,tag=RandomTP,distance=..2] run playsound minecraft:entity.enderman.teleport player @a ^ ^ ^1.5 1 1 0
    tag @e[type=#lib:living,type=!player,tag=Victim,tag=RandomTP,distance=..100] remove RandomTP
