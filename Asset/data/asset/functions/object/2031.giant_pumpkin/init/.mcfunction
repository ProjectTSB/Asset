#> asset:object/2031.giant_pumpkin/init/
#
# Objectのinit時の処理
#
# @within function asset:object/alias/2031/init

# 指定があればカボチャの頭を被る
    execute if data storage asset:context this.FaceID run data modify entity @s ArmorItems.[3].tag.CustomModelData set from storage asset:context this.FaceID

# スピード関連の設定
    data modify storage asset:context this.Speed set value 0
    data modify storage asset:context this.Range set value 128
    data modify storage asset:context this.MovePerStep set value 1

# 継承
    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
