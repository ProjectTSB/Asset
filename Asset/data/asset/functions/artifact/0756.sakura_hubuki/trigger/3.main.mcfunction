#> asset:artifact/0756.sakura_hubuki/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0756.sakura_hubuki/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 確率で攻撃演出を分岐
    execute store result score $Random Temporary run random value 0..6
    scoreboard players operation $Random Temporary %= $7 Const
    execute if score $Random Temporary matches 0..1 positioned ^ ^1 ^1.5 run function asset:artifact/0756.sakura_hubuki/trigger/vfx/slash1
    execute if score $Random Temporary matches 2..3 positioned ^ ^1 ^1.5 run function asset:artifact/0756.sakura_hubuki/trigger/vfx/slash2
    execute if score $Random Temporary matches 4..5 positioned ^ ^1.4 ^1.5 run function asset:artifact/0756.sakura_hubuki/trigger/vfx/slash3

# 音
    playsound block.glass.break player @a ~ ~ ~ 0.8 2 0
    playsound block.glass.break player @a ~ ~ ~ 0.8 1.8 0
    playsound block.glass.break player @a ~ ~ ~ 0.8 1.6 0
    playsound block.glass.break player @a ~ ~ ~ 0.8 1.4 0
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1.2 0

# ダメージ
    # ダメージ範囲
        execute store result score $RandomDamage Temporary run random value 150..220

    # スコアが6ならVictimにダメージを与える前に範囲攻撃を行う
        execute if score $Random Temporary matches 6 at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function asset:artifact/0756.sakura_hubuki/trigger/4.range_attack

    # メイン対象へダメージ
        execute store result storage api: Argument.Damage float 1.0 run scoreboard players get $RandomDamage Temporary
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Water"
        function api:damage/modifier
        execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function api:damage/
        function api:damage/reset

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $RandomDamage Temporary
