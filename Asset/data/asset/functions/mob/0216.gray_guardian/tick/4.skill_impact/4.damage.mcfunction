#> asset:mob/0216.gray_guardian/tick/4.skill_impact/4.damage
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_impact/3.impact

# 与えるダメージ
    data modify storage api: Argument.Damage set value 49.0f
# 魔法属性
    data modify storage api: Argument.AttackType set value "Physical"
# 無属性
    data modify storage api: Argument.ElementType set value "None"
# ダメージ
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Friend,tag=!Uninterferable,nbt={OnGround:1b},distance=..30] run function api:damage/
# プレイヤー用のダメージファンクション
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..30] at @s run function asset:mob/0216.gray_guardian/tick/4.skill_impact/5.damage_player
# 上空へ飛ばす
    execute as @e[type=#lib:living,type=!player,tag=Friend,tag=!Uninterferable,nbt={OnGround:1b},distance=..30] at @s run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,effects:[{id:"levitation",amplifier:80b,duration:3,show_particles:0b},{id:"resistance",amplifier:127b,duration:1,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:1,show_particles:0b}]}
# リセット
    function api:damage/reset
