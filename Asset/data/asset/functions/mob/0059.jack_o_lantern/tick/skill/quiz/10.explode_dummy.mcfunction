#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/10.explode_dummy
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/8.explode_process

# 演出
    particle dust 1 0.6 0 1.8 ~ ~1.6 ~ 0.6 1.2 0.6 0 80 normal @a
    particle dust 0.851 0 1 1.8 ~ ~1.6 ~ 0.6 1.2 0.6 0 80 normal @a
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.2 0

# ダメージ
    data modify storage api: Argument.Damage set value 15
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:damage/
    function api:damage/reset

# 最寄りの偽物を抹消
    tp @e[type=husk,scores={MobID=224},distance=..0.01,sort=nearest,limit=1] ~ -100 ~
