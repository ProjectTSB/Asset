#> asset:artifact/1055.compass_of_sea_abyss/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1055.compass_of_sea_abyss/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare tag Target

# ターゲット選定
# Attackerと周囲の敵5体
    tag @e[type=#lib:living,tag=Attacker,distance=..32] add Target
    tag @e[type=#lib:living,tag=Enemy,tag=!Attacker,distance=..16,sort=nearest,limit=5] add Target

# 演出
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/1055.compass_of_sea_abyss/trigger/vfx_compass
    execute at @e[type=#lib:living,tag=Enemy,distance=..10,sort=nearest,limit=5] run particle dust 0 0 -1 1.4 ~ ~1.2 ~ 0.4 0.5 0.4 0 50 normal @a
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.8 0.8 0
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.8 0.5

# ダメージ
    execute store result storage api: Argument.Damage double 50 run data get storage asset:context Damage.Amount
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..32,sort=nearest,limit=6] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living,tag=Target,distance=..32] remove Target
