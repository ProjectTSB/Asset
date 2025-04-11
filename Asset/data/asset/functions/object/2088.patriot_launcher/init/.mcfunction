#> asset:object/2088.patriot_launcher/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2088/init

#> prv
# @private
    #declare tag PatriotLauncher.ObjectInit

# AJモデル召喚
    execute rotated 0 0 run function animated_java:patriot_launcher/summon {args: {animation: 'default', start_animation: true}}

# ride
    ride @e[tag=PatriotLauncherRoot,distance=..1,limit=1] mount @s

# 見た目召喚
    summon text_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[2f,2f,4f]},billboard:"center",text:'{"color":"#ffffff","text":"対空砲"}',Tags:["PatriotLauncher.ObjectInit","PatriotLauncher.DisplayName"]}
    summon text_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,5f,0f],scale:[2f,2f,4f]},billboard:"center",text:'{"color":"#ffffff","text":""}',Tags:["PatriotLauncher.ObjectInit","PatriotLauncher.Gauge"]}
    ride @e[type=text_display,tag=PatriotLauncher.ObjectInit,tag=PatriotLauncher.DisplayName,limit=1] mount @s
    ride @e[type=text_display,tag=PatriotLauncher.ObjectInit,tag=PatriotLauncher.Gauge,limit=1] mount @s

# 難易度で対空砲の耐久値変更
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage asset:context this.MaxDurability set value 3

# データセット
    data modify storage asset:context this.Durability set from storage asset:context this.MaxDurability
    data modify storage asset:context this.RepairTime set value 0
    data modify storage asset:context this.IsBroken set value 0b
    data modify storage asset:context this.IsActive set value 1b
    data modify storage asset:context this.MissileCooltime set from storage asset:context this.MaxMissileCooltime

# reset
    tag @e[tag=PatriotLauncher.ObjectInit] remove PatriotLauncher.ObjectInit
