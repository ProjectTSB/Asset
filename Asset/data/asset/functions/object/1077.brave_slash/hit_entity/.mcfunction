#> asset:object/1077.brave_slash/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1077/hit_entity

#> private
# @private
    #declare score_holder $RandomDamage

# ダメージ値設定
    #ダメージブレのための処理
        # 疑似乱数取得
            execute store result score $RandomDamage Temporary run function lib:random/
        # 剰余算する。0~50の追加ダメージ
            scoreboard players operation $RandomDamage Temporary %= $51 Const
        # 最低ダメージ設定
            scoreboard players add $RandomDamage Temporary 250
    #ダメージセット
        execute store result storage lib: Argument.Damage float 1 run scoreboard players get $RandomDamage Temporary

# ダメージの属性をセット
    data modify storage lib: Argument.AttackType set value "Phyxical"
    data modify storage lib: Argument.ElementType set value "None"

# 実行時に受け取っているUserIDの持ち主として補正を実行
    function asset:object/1077.brave_slash/hit_entity/modifier.m with storage asset:context this

# ダメージ実行
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $RandomDamage Temporary
