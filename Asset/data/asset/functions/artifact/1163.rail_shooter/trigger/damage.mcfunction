#> asset:artifact/1163.rail_shooter/trigger/damage
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/1163.rail_shooter/trigger/shoot

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 0.4 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 100.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    function lib:damage/modifier
# ダメージ
    execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..5,limit=1] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..5,limit=1] remove LandingTarget
