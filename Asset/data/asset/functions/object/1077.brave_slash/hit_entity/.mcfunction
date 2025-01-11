#> asset:object/1077.brave_slash/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1077/hit_entity

#> private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ダメージ値設定
    execute store result storage lib: Argument.Damage float 1 run random value 105..155

# ダメージの属性をセット
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"

# 実行時に受け取っているUserIDの持ち主として補正を実行
    function asset:object/1077.brave_slash/hit_entity/modifier.m with storage asset:context this

# ダメージ、数Tickおきに実行
    # 実行時間を移す
        scoreboard players operation $Interval Temporary = @s General.Object.Tick
    # 2tickおきに実行
        scoreboard players operation $Interval Temporary %= $3 Const
    # ダメージ実行
        execute if score $Interval Temporary matches 0 positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $Interval Temporary
