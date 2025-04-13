#> asset:mob/0339.twins_sapphiel/app/attack/1.shot
#
# 射撃の処理
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# 演出
    playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 2 0.5
    playsound entity.firework_rocket.blast hostile @a ~ ~ ~ 2 0.7
    # playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.8
    particle block gold_block ^ ^ ^-0.8 0 0 0 1 1
    particle electric_spark ~ ~ ~ 0 0 0 0.2 5

# 射撃
    scoreboard players set @s Temporary 40
    function asset:mob/0339.twins_sapphiel/app/attack/2.shot_attack
    scoreboard players reset @s Temporary

# 弾数消費
    scoreboard players add @s 9F.BulletCount.Hg 1

# TODO:ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Shot
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=9F.Temp.Target.Attack] at @s run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=9F.Temp.Target.Attack] remove 9F.Temp.Target.Attack
