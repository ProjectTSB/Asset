#> asset:artifact/1079.allochromatic/trigger/7.damage
#
# ダメージを与える
#
# @within function asset:artifact/1079.allochromatic/trigger/6.shot_recursive

# 演出
    execute at @e[type=#lib:living,tag=Target,distance=..40,limit=1] run particle firework ~ ~1.2 ~ 0 0 0 0.3 10

# 一定の距離から距離減衰するための距離
# 再帰1回につき0.6m進み、5回で3m
# 共鳴時に適正距離が延長される
    scoreboard players set $Appropriate_Distance Temporary 10
    execute if entity @s[tag=Resonance] run scoreboard players set $Appropriate_Distance Temporary 15
# 最低ダメージ保証
    scoreboard players set $MinDamage Temporary 110

# 基礎ダメージを設定
    scoreboard players set $Damage Temporary 455

# デバッグ用減衰確認コマンド1
    #tellraw @a {"text":"-----"}
    #tellraw @a [{"text":"再帰回数: "},{"score":{"name":"$Distance_Damping","objective":"Temporary"},"color":"blue"}]

# 適正距離じゃないければダメージ減衰の計算を行う
    execute if score $Distance_Damping Temporary >= $Appropriate_Distance Temporary run function asset:artifact/1079.allochromatic/trigger/8.damage_attenuation

# デバッグ用減衰確認コマンド2
    #tellraw @a [{"text":"ダメージ: "},{"score":{"name":"$Damage","objective":"Temporary"},"color":"red"}]

# ダメージ設定 共鳴時にダメージが強化される
    execute if entity @s[tag=!Resonance] store result storage api: Argument.Damage double 1 run scoreboard players get $Damage Temporary
    execute if entity @s[tag=Resonance] store result storage api: Argument.Damage double 1.2 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..40,limit=1] run function api:damage/
    function api:damage/reset

# 共鳴攻撃
    execute if entity @s[tag=Resonance] run function asset:artifact/1079.allochromatic/trigger/9.resonance_cooldown
