#> asset:artifact/1623.palermo/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1623.palermo/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

      execute store success storage asset:temp Success byte 1 run clear @s minecraft:gunpowder 1

# 演出
    execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ run function asset:artifact/1623.palermo/trigger/vfx

# メイン対象へダメージ
    #ダメ―ジ
        execute store result storage api: Argument.Damage float 1.0 run random value 350..550

    #火薬消費のチェックとダメ―ジ
        execute if data storage asset:temp {Success:1b} store result storage api: Argument.Damage double 1.2 run data get storage api: Argument.Damage

    #その他設定
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
        function api:damage/modifier
        execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function api:damage/
        function api:damage/reset

#リセット
        data remove storage asset:temp Success
