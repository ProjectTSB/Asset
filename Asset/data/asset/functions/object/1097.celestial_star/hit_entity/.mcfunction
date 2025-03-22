#> asset:object/1097.celestial_star/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1097/hit_entity

#> Private
# @private
#declare score_holder $UserID

# VFX
    playsound ogg:random.glass2 neutral @a ~ ~ ~ 1 1.41

# プレイヤー特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
# modifier をかける
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
# ダメージを与える
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] positioned ~0.5 ~0.5 ~0.5 run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# super 呼び出し
    function asset:object/super.method
