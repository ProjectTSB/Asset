#> asset:object/1152.yearning_rose/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1152/init

# TargetMobUUIDの大きさを取得
    function asset:object/1152.yearning_rose/init/get_scale/m with storage asset:context this

# $RecursiveをScaleに変換し、フィールドに保存
    execute store result storage asset:context this.Scale[0] float 1 run scoreboard players get $Recursive Temporary
    data modify storage asset:context this.Scale[1] set from storage asset:context this.Scale[0]
    data modify storage asset:context this.Scale[2] set from storage asset:context this.Scale[0]

# Scaleの半分をtranslationに変換
    execute store result entity @s transformation.translation[1] float 0.05 run data get storage asset:context this.Scale[0] 10

    #tellraw @a {"score":{"objective": "Temporary","name": "$Recursive"}}

# リセット
    scoreboard players reset $Recursive Temporary
