#> asset:object/2276.aurora_wave/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2276/init

# スコアを-3にしておく
    scoreboard players set @s General.Object.Tick -3

# transformation用のscaleを事前にフィールドに設定しておく
    data modify storage asset:context this.PreScale set value [[0f,0f,0f],[0f,0f,0f],[0f,0f,0f]]
    data modify storage asset:context this.PreTranslation set value [[0f,0f,0f],[0f,0f,0f],[0f,0f,0f]]

# 0
    data modify storage asset:context this.PreScale[0][0] set from storage asset:context this.Scale
    data modify storage asset:context this.PreScale[0][1] set from storage asset:context this.Scale
    data modify storage asset:context this.PreScale[0][2] set from storage asset:context this.Scale

    execute store result storage asset:context this.PreTranslation[0][1] float 0.005 run data get storage asset:context this.Scale 100

# 1
    data modify storage asset:context this.PreScale[1][0] set from storage asset:context this.Scale
    execute store result storage asset:context this.PreScale[1][1] float 0.015 run data get storage asset:context this.Scale 100
    data modify storage asset:context this.PreScale[1][2] set from storage asset:context this.Scale

    execute store result storage asset:context this.PreTranslation[1][1] float 0.0075 run data get storage asset:context this.Scale 100

# 2
    data modify storage asset:context this.PreScale[2][0] set from storage asset:context this.Scale
    # data modify storage asset:context this.PreScale[2][1] set value 0f
    data modify storage asset:context this.PreScale[2][2] set from storage asset:context this.Scale

    # data modify storage asset:context this.PreTranslation[2][1] set value 0f
