#> asset:artifact/0374.thunder_spell/trigger/attack
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0374.thunder_spell/trigger/line

# タグチェック用
    tag @s add AE.Check
# 演出
    particle dust 1 1 0 1 ~ ~ ~ 0.1 0 0.1 0 5
    playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set value 24f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run function api:damage/
    function api:damage/reset
