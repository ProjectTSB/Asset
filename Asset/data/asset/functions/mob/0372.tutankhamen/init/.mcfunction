#> asset:mob/0372.tutankhamen/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/372/init

# super.init呼び出し
    function asset:mob/super.init

# 召喚位置を記録するマーカーを召喚
    summon marker ~ ~ ~ {Tags:["AC.SpawnMarker"]}

# 棺召喚位置用markerを召喚
    execute rotated ~0 0 positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"]}
    execute rotated ~45 0 positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"]}
    execute rotated ~90 0 positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"]}
    execute rotated ~135 0 positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"]}
    execute rotated ~180 0 positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"]}
    execute rotated ~225 0 positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"]}
    execute rotated ~270 0 positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"]}
    execute rotated ~315 0 positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["AC.CoffinPoint"]}

# AJ召喚
    execute rotated ~ 0 run function animated_java:tutankhamen/summon {args:{}}

# tpさせる
# AC.AJはAJリポジトリ側で召喚時に付与されている
    execute at @s as @e[type=item_display,tag=AC.AJ,sort=nearest,limit=1] run tp @s ~ ~ ~

# スコア初期化
    scoreboard players set @s General.Mob.Tick -1

# 召喚モーション用Tagを自身に付与
    tag @s add AC.Opening
