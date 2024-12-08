#> asset:object/1038.thelema_slash_entity/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1038/init

# フィールドから諸々の設定
    execute store result score @s 1038.Count run data get storage asset:context this.Count
    data modify entity @s Rotation set from storage asset:context this.Rotation
