#> asset:object/1066.knife/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1066/init

execute store result score @s 1066.API.UserID run data get storage asset:context this.UserID
execute if data storage asset:context this{TheWorld:true} run tag @s add 1066.API.TimeStop
function asset:object/super.init
