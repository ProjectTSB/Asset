#> asset:mob/0390.triple_rabbits/ai/general/ecual_to_labyria
#
# エクアルからラビリアへ移行
#
# @within function asset:mob/0390.triple_rabbits/tick/

#> function
# @private
    #declare function asset_manager:mob/bossbar/init

# ボスは重複しないはずだが一応UUIDを設定しておく
    scoreboard players operation $AU.Temp AU.Dummy.UUID = @s AU.Dummy.UUID

# まずはアキシャを召喚する
    data modify storage api: Argument.ID set value 393
    function api:mob/summon
    execute as @e[type=wither_skeleton,scores={MobID=393},distance=..0.001,sort=nearest,limit=1] run tag @s add AU.Target
    execute as @e[type=wither_skeleton,scores={MobID=393},distance=..0.001,sort=nearest,limit=1] run scoreboard players operation @s AU.Dummy.UUID = $AU.Temp AU.Dummy.UUID

# リセット
    scoreboard players reset $AU.Temp AU.Dummy.UUID
