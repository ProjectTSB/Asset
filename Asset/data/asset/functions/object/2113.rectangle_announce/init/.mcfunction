#> asset:object/2113.rectangle_announce/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2113/init

# KillするTickを指定
    execute store result score @s 2113.Tick run data get storage asset:context this.Tick

# ToForward:trueなら、this.Scale[1]の半分をthis.translationZへ
    execute if data storage asset:context this{ToForward:true} store result storage asset:context this.TranslationZ float 0.05 run data get storage asset:context this.Scale[1] 10
