#> asset:mob/0398.crystal_healer/ai/heal/
#
# 回復処理
#
# @within function asset:mob/0398.crystal_healer/tick/

# 演出
    particle happy_villager ~ ~2 ~ 0.75 0.5 0.75 0.3 20 force @a[distance=..32]
    playsound entity.arrow.hit_player hostile @a[distance=..32] ~ ~ ~ 1 1.6
    playsound entity.allay.item_thrown master @a[distance=..32] ~ ~ ~ 2 0.5 0.0
    playsound entity.ender_eye.death master @a ~ ~ ~ 2 0.5 0.0
    execute as @e[type=wither_skeleton,scores={MobID=392},distance=..25] at @s run particle heart ~ ~1.2 ~ 0.4 0.4 0.4 0 5 force @a[distance=..32]
    execute positioned ~ ~2 ~ facing entity @e[type=wither_skeleton,scores={MobID=392},distance=..25] eyes run function asset:mob/0398.crystal_healer/ai/heal/loop
 
# 回復
# 難易度値によって回復量が変動 150N
    function api:global_vars/get_difficulty
    execute store result storage api: Argument.Heal int 150 run data get storage api: Return.Difficulty
    function api:heal/modifier
    execute as @e[type=wither_skeleton,scores={MobID=392},distance=..25] run function api:heal/
    function api:heal/reset

#> function
# @private
    #declare function asset:mob/0390.triple_rabbits/ai/general/share_health

# 管理用スライムに情報を送る
    execute as @e[type=wither_skeleton,scores={MobID=392},distance=..25] run scoreboard players operation $B2.Temp AU.Dummy.UUID = @s AU.Dummy.UUID
    execute as @e[type=slime,scores={MobID=390},distance=..100] if score @s AU.Dummy.UUID = $B2.Temp AU.Dummy.UUID run function asset:mob/0390.triple_rabbits/ai/general/share_health

# リセット
    scoreboard players reset $B2.Temp AU.Dummy.UUID
