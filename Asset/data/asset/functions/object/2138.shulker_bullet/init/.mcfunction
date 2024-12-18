#> asset:object/2138.shulker_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2138/init

data modify entity @s Owner set from storage asset:context this.OwnerUUID
data modify entity @s Target set from storage asset:context this.TargetUUID
data modify entity @s Steps set value 1
