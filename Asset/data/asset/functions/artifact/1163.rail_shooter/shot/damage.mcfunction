#> asset:artifact/1163.rail_shooter/shot/damage
# @within function asset:artifact/1163.rail_shooter/shot/shoot

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 0.4 0

# ダメージ設定
    data modify storage api: Argument.Damage set value 100.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
# ダメージ
    execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..5,limit=1] at @s run function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..5,limit=1] remove LandingTarget
