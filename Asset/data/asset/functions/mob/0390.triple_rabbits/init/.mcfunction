#> asset:mob/0390.triple_rabbits/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/390/init

#> function
# @private
    #declare function asset_manager:mob/bossbar/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_axia",Active:true},{Datapack:"AJ_ecual",Active:true},{Datapack:"AJ_labyria",Active:true}]
    function asset:datapack/set_activation_state

# 位置を調整
    tp @s ~ ~0.1 ~ ~ ~

# ボスは重複しないはずだが一応UUIDを設定しておく
    execute store result score @s AU.Dummy.UUID run random value 0..2147483646
    scoreboard players operation $AU.Temp AU.Dummy.UUID = @s AU.Dummy.UUID

# まずはアキシャを召喚する
    data modify storage api: Argument.ID set value 391
    function api:mob/summon
    execute as @e[type=wither_skeleton,scores={MobID=391},distance=..0.001,sort=nearest,limit=1] run tag @s add AU.Target
    execute as @e[type=wither_skeleton,scores={MobID=391},distance=..0.001,sort=nearest,limit=1] run scoreboard players operation @s AU.Dummy.UUID = $AU.Temp AU.Dummy.UUID

# リセット
    scoreboard players reset $AU.Temp AU.Dummy.UUID
