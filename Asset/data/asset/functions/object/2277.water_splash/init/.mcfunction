#> asset:object/2277.water_splash/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2277/init

# Translationを設定
# Object2001はTransformationを纏めて適用するため、Transformationを初期化してから設定する
    data modify storage asset:context this.Transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],translation:[0f,0f,0f]}
    execute store result storage asset:context this.Transformation.translation[1] float 0.005 run data get storage asset:context this.Scale 100

# Object2001用のthis.Scaleを組み立て
# このObjectはScaleのxyzが全て同じであることを想定しているため
    data modify storage asset:temp 2277.Scale set value [0f,0f,0f]
    data modify storage asset:temp 2277.Scale[0] set from storage asset:context this.Scale
    data modify storage asset:temp 2277.Scale[1] set from storage asset:context this.Scale
    data modify storage asset:temp 2277.Scale[2] set from storage asset:context this.Scale
    data modify storage asset:context this.Scale set from storage asset:temp 2277.Scale
    data remove storage asset:temp 2277

# super
    function asset:object/super.init
