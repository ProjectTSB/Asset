#> asset:mob/0390.triple_rabbits/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/390/remove

# Removeする
    scoreboard players operation $AU.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=wither_skeleton,tag=AU.Target,distance=..100] if score @s AU.Dummy.UUID = $AU.Temp AU.Dummy.UUID run data modify entity @s DeathLootTable set value "empty"
    execute as @e[type=wither_skeleton,tag=AU.Target,distance=..100] if score @s AU.Dummy.UUID = $AU.Temp AU.Dummy.UUID run function api:mob/remove

# リセット
    scoreboard players reset $AU.Temp AU.Dummy.UUID

# 継承元の処理
    function asset:mob/super.remove

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_triple_rabbits",Active:false}]
    function asset:datapack/set_activation_state
