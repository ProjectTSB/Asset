#> asset:mob/0236.ksitigarbha/death/2.1.curse
#
# お地蔵さんの祟り
#
# @input at player
#
# @within function asset:mob/0236.ksitigarbha/death/

#> Private
# @private
    #declare score_holder $Difficulty

# Killerがいた場合Killerとその周囲のFriendにデバフとダメージ
# playerにはcore側でFriendが自動で付与されている
    data modify storage api: Argument.Damage set value 11f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sはお地蔵さんに祟られた","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset

# デバフ
    function api:global_vars/get_difficulty

# 移動速度低下
# Duration = 10(17 + 3 * Difficulty)
    data modify storage api: Argument set value {ID:17,Stack:9}
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty 3
    execute store result storage api: Argument.Duration int 10 run scoreboard players add $Difficulty Temporary 17
    execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,distance=..5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 毒
# Stack = Difficulty
    data modify storage api: Argument set value {ID:29,Duration:100}
    execute store result storage api: Argument.Stack int 3 run data get storage api: Return.Difficulty
    execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,distance=..5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 音
    playsound entity.elder_guardian.curse hostile @a[tag=!PlayerShouldInvulnerable,distance=..5] ~ ~ ~ 1 1 1

# メッセージ
    execute as @e[tag=!PlayerShouldInvulnerable,distance=..5] run tellraw @s [{"translate": "%1$sはお地蔵さんを攻撃した罰が当たった。","with":[{"selector":"@s"}]}]

# リセット
    scoreboard players reset $Difficulty Temporary
