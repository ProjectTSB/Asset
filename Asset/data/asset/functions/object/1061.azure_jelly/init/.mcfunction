#> asset:object/1061.azure_jelly/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1061/init

# OwnerID
    execute store result score @s 1061.OwnerID run data get storage asset:context this.UserID
    tellraw @a {"storage":"asset:context","nbt":"this.UserID"}
