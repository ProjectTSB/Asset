#> asset:mob/0124.skull_harpy/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0124.skull_harpy/attack/1.trigger

# 演出
   execute at @p[tag=Victim] run particle minecraft:dust 1 1 0 2 ~ ~ ~ 0.8 0.8 0.8 0.1 20 normal @a
   execute at @p[tag=Victim] run playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 0.7 1.5 0

# ハード以上の場合、浮遊を付与
    execute if predicate api:global_vars/difficulty/min/hard at @p[tag=Victim,distance=..60] run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:0.5f,Duration:6,Age:4,effects:[{id:"levitation",amplifier:10b,duration:5,show_particles:1b}]}

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 8.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    function lib:damage/reset