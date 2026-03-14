#> asset:artifact/0376.ray_sorcery/trigger/3.2.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/0376.ray_sorcery/trigger/3.1.shoot

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2
    playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 90.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..2.2] run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living_without_player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] remove LandingTarget
