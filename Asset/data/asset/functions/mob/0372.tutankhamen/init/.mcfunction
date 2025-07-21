#> asset:mob/0372.tutankhamen/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/372/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_tutankhamen",Active:true}]
    function asset:datapack/set_activation_state

# super.init呼び出し
    function asset:mob/super.init

# 召喚位置を記録するマーカーを召喚
    summon marker ~ ~ ~ {Tags:["AC.SpawnMarker"]}

# 棺召喚位置用markerを召喚
    execute rotated ~0 0 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"],Rotation:[180.0f,0.0f]}
    execute rotated ~45 0 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"],Rotation:[225.0f,0.0f]}
    execute rotated ~90 0 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"],Rotation:[270.0f,0.0f]}
    execute rotated ~135 0 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"],Rotation:[315.0f,0.0f]}
    execute rotated ~180 0 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"],Rotation:[0.0f,0.0f]}
    execute rotated ~225 0 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"],Rotation:[45.0f,0.0f]}
    execute rotated ~270 0 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"],Rotation:[90.0f,0.0f]}
    execute rotated ~315 0 positioned ^ ^ ^12 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"],Rotation:[135.0f,0.0f]}

# AJ召喚
    execute rotated ~ 0 run function animated_java:tutankhamen/summon {args:{}}

# tpさせる
# AC.AJはAJリポジトリ側で召喚時に付与されている
    execute at @s as @e[type=item_display,tag=AC.AJ,sort=nearest,limit=1] run tp @s ~ ~ ~

# スコア初期化
    scoreboard players set @s General.Mob.Tick -1
    scoreboard players set @s AC.Count.Dash 0

# 召喚モーション用Tagを自身に付与
    tag @s add AC.Opening
