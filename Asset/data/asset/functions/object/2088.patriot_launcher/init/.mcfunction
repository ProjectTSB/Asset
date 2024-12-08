#> asset:object/2088.patriot_launcher/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2088/init

#> prv
# @private
    #declare tag PatriotLauncher.ObjectInit

# 見た目召喚
summon block_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,4f]},block_state:{Name:"minecraft:white_concrete"},Tags:["PatriotLauncher.ObjectInit"]}
ride @e[tag=PatriotLauncher.ObjectInit,limit=1] mount @s

# データセット
    data modify storage asset:context this.Durability set value 10
    data modify storage asset:context this.RepairTime set value 0
    data modify storage asset:context this.IsBroken set value 0b
    data modify storage asset:context this.IsActive set value 1b
    data modify storage asset:context this.MissileCooltime set value 199

# reset
tag @e[tag=PatriotLauncher.ObjectInit] remove PatriotLauncher.ObjectInit
