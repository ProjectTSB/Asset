#> asset:object/1180.yumeori_vfx/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1180/init

# 色に応じたリストを適用
    execute if data storage asset:context this{Color:"Yellow"} run data modify storage asset:context this.List set from storage asset:context this.CharList.Yellow
    execute if data storage asset:context this{Color:"Pink"} run data modify storage asset:context this.List set from storage asset:context this.CharList.Pink
    execute if data storage asset:context this{Color:"Red"} run data modify storage asset:context this.List set from storage asset:context this.CharList.Red

#
    #execute store result entity @s transformation.translation double 0.005 run data get storage asset:context this.Scale[1] 100
