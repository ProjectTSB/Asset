#> asset:object/1077.brave_slash/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1077/hit_entity

#> private
# @private
    #declare score_holder $Interval
    #declare score_holder $UserID
    #declare tag 1077.Player

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ダメージ値設定
    execute store result storage api: Argument.Damage float 1 run random value 160..205

# ユーザー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1077.Player
    scoreboard players reset $UserID Temporary

# MP
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal

# ダメージの属性をセット
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

# modifier をかける
    execute as @a[tag=1077.Player] run function api:damage/modifier

# ダメージ、数Tickおきに実行
    # 実行時間を移す
        scoreboard players operation $Interval Temporary = @s General.Object.Tick
    # 2tickおきに実行
        scoreboard players operation $Interval Temporary %= $3 Const
    # ダメージ実行
        execute if score $Interval Temporary matches 0 positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5] run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players reset $Interval Temporary
    tag @a[tag=1077.Player] remove 1077.Player
