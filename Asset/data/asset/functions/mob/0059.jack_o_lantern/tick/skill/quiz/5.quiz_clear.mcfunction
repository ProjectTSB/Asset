#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/5.quiz_clear
#
# クイズに正解されたときの処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main

# 演出
    playsound ogg:mob.strider.retreat5 hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
    particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.7 100

# 割合ダメージ
    execute store result storage api: Argument.Damage float 0.08 run function api:mob/get_max_health
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 偽物を消し飛ばす
    tp @e[type=husk,scores={MobID=224},distance=..50] ~ -100 ~

# クイズエンド
    function asset:mob/0059.jack_o_lantern/tick/skill/quiz/11.end
