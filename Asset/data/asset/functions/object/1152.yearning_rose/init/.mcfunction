#> asset:object/1152.yearning_rose/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1152/init

# TargetMobUUIDの大きさを取得
    function asset:object/1152.yearning_rose/init/get_scale/m with storage asset:context this

# Scale.Maxを設定
    execute store result storage asset:context this.Scale.Max[0] float 1 run scoreboard players get $Recursive Temporary
    data modify storage asset:context this.Scale.Max[1] set from storage asset:context this.Scale.Max[0]
    data modify storage asset:context this.Scale.Max[2] set from storage asset:context this.Scale.Max[0]

# debug
    #data modify storage asset:context this.Scale.Max set value [2f,2f,2f]
    #data modify entity @s transformation.translation set value [0f,1f,0f]

# 最小Scaleを設定し、それをentityのscaleに突っ込んでおく
# scale[1]だけ設定して他は0
    execute store result storage asset:context this.Scale.Min[1] float 0.06 run data get storage asset:context this.Scale.Max[1] 10
    data modify entity @s transformation.scale set from storage asset:context this.Scale.Min

# 最大より少し小さいScaleを設定しておく
    execute store result storage asset:context this.Scale.NearMax[0] float 0.08 run data get storage asset:context this.Scale.Max[0] 10
    data modify storage asset:context this.Scale.NearMax[1] set from storage asset:context this.Scale.NearMax[0]
    data modify storage asset:context this.Scale.NearMax[2] set from storage asset:context this.Scale.NearMax[0]

# 最大Scaleの半分をtranslationに変換
    execute store result entity @s transformation.translation[1] float 0.05 run data get storage asset:context this.Scale.Max[1] 10

# debug
    #tellraw @a [{"text":"Max: "},{"storage":"asset:context","nbt":"this.Scale.Max"}]
    #tellraw @a [{"text":"Min: "},{"storage":"asset:context","nbt":"this.Scale.Min"}]
    #tellraw @a [{"text":"NearMax: "},{"storage":"asset:context","nbt":"this.Scale.NearMax"}]

# リセット
    scoreboard players reset $Recursive Temporary
