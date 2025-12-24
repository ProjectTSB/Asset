#> asset:mob/0274.death_saw_jiki/tick/3.damage
#
#
#
# @within function asset:mob/0274.death_saw_jiki/tick/

#> private
# @private
    #declare tag DamageTarget

# 演出
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 0.5 0.4 0.5 0 20 normal
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.5 0
    playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 2.0 0

# 属性ダメージ
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 36f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 補正functionを実行
        function api:damage/modifier
    # 対象に
        tag @e[type=#lib:living_without_player,tag=Friend,distance=..1] add DamageTarget
        tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add DamageTarget
        execute as @e[type=#lib:living,tag=DamageTarget,distance=..1] run function api:damage/
    # リセット
        function api:damage/reset
        tag @e[type=#lib:living,tag=DamageTarget,distance=..2] remove DamageTarget

# クールタイムを与える
    scoreboard players set @s 7M.CoolTime 20
