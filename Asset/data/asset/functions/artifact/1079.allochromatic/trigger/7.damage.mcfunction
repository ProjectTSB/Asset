#> asset:artifact/1079.allochromatic/trigger/7.damage
#
# ダメージを与える
#
# @within function asset:artifact/1079.allochromatic/trigger/6.shot_recursive

# 一定の距離から距離減衰するための距離(適正距離をメートル*5で指定)
# 共鳴時に適正距離が延長される
    scoreboard players set $Appropriate_Distance Temporary 50
    execute if entity @s[tag=Resonance] run scoreboard players set $Appropriate_Distance Temporary 80
# 最低ダメージ保証
    scoreboard players set $MinDamage Temporary 160

# 基礎ダメージを設定
    scoreboard players set $Damage Temporary 400

# 適正距離じゃないければダメージ減衰の計算を行う
    execute if score $Distance_Damping Temporary >= $Appropriate_Distance Temporary run function asset:artifact/1079.allochromatic/trigger/8.damage_attenuation

# ダメージ設定 共鳴時にダメージが強化される
    execute if entity @s[tag=!Resonance] store result storage api: Argument.Damage double 1 run scoreboard players get $Damage Temporary
    execute if entity @s[tag=Resonance] store result storage api: Argument.Damage double 1.2 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..40,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary