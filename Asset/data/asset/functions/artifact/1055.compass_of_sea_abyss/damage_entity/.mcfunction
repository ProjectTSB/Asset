#> asset:artifact/1055.compass_of_sea_abyss/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1055/damage_entity/


#> Private
# @private
    #declare tag Target
    #declare score_holder $UU.Damage

# ターゲット選定
# Attackerと周囲の敵5体
    tag @e[type=#lib:living,tag=Attacker,distance=..32] add Target
    tag @e[type=#lib:living,tag=Enemy,tag=!Attacker,tag=!Uninterferable,distance=..16,sort=nearest,limit=5] add Target

# 演出
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/1055.compass_of_sea_abyss/damage_entity/vfx_compass
    execute at @e[type=#lib:living,tag=Target,distance=..32,sort=nearest,limit=6] run particle dust 0 0 -1 1.4 ~ ~1.2 ~ 0.4 0.5 0.4 0 50 normal @a
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.8 0.8 0
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.8 0.5

# ダメージを500倍にしてスコアへ移す
    execute store result score $UU.Damage Temporary run data get storage asset:context Damage.Amount 500

# 30000以上なら30000にする
    scoreboard players operation $UU.Damage Temporary < $30000 Const

# ダメージ
    execute store result storage api: Argument.Damage double 0.1 run scoreboard players get $UU.Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..32,sort=nearest,limit=6] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living,tag=Target,distance=..32] remove Target
    scoreboard players reset $UU.Damage Temporary
