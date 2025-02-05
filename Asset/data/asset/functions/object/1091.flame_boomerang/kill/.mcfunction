#> asset:object/1091.flame_boomerang/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1091/kill

#
    execute if entity @s[tag=ReturnToOwner] run playsound minecraft:block.wooden_trapdoor.close neutral @p[tag=Owner] ~ ~ ~ 0.8 2
    execute if entity @s[tag=ReturnToOwner] run playsound minecraft:block.wooden_trapdoor.close neutral @p[tag=Owner] ~ ~ ~ 0.8 1.95
    execute if entity @s[tag=ReturnToOwner] run playsound minecraft:block.wood.hit neutral @p[tag=Owner] ~ ~ ~ 0.8 1
# 消滅
    execute on passengers run kill @s
    kill @s
