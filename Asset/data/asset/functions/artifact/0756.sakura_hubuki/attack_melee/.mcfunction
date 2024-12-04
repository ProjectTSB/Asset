#> asset:artifact/0756.sakura_hubuki/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/756/attack_melee/

# 確率で攻撃演出を分岐
    execute store result score $Random Temporary run random value 0..6
    execute if score $Random Temporary matches 0..1 positioned ^ ^1 ^1.5 run function asset:artifact/0756.sakura_hubuki/attack_melee/vfx/slash1
    execute if score $Random Temporary matches 2..3 positioned ^ ^1 ^1.5 run function asset:artifact/0756.sakura_hubuki/attack_melee/vfx/slash2
    execute if score $Random Temporary matches 4..5 positioned ^ ^1.4 ^1.5 run function asset:artifact/0756.sakura_hubuki/attack_melee/vfx/slash3

# 音
    playsound block.glass.break player @a ~ ~ ~ 0.8 2 0
    playsound block.glass.break player @a ~ ~ ~ 0.8 1.8 0
    playsound block.glass.break player @a ~ ~ ~ 0.8 1.6 0
    playsound block.glass.break player @a ~ ~ ~ 0.8 1.4 0
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1.2 0

# ダメージ
    # ブレ
        execute store result score $RandomDamage Temporary run random value 150..220

    # スコアが6ならVictimにダメージを与える前に範囲攻撃を行う
        execute if score $Random Temporary matches 6 at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function asset:artifact/0756.sakura_hubuki/attack_melee/4.range_attack

    # 数値を代入
        execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Water"
    # 補正
        function api:damage/modifier
    # ダメージを与える
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $RandomDamage Temporary
    function api:damage/reset
