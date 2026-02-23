#> asset:artifact/1175.rubber_mallet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1175.rubber_mallet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..10] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1
    execute positioned as @e[type=#lib:living_without_player,tag=Victim,distance=..10] run function asset:artifact/1175.rubber_mallet/trigger/particle
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.glow_squid.squirt player @a ~ ~ ~ 1 1.56

# ダメージ
    data modify storage api: Argument.Damage set value 1310f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @e[type=#lib:living,tag=Victim,distance=..10] run function api:damage/
# リセット
    function api:damage/reset

# 移動速度を下げる
    effect give @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,distance=..10] slowness 5 30 true
    effect give @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,distance=..10] slowness 2 30 true
