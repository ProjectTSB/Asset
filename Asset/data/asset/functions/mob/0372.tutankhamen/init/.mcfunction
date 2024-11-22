#> asset:mob/0372.tutankhamen/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/372/init

# AJ召喚
    execute rotated ~ 0 run function animated_java:tutankhamen/summon

# tpさせる
# AC.AJはAJリポジトリ側で召喚時に付与されている
    execute at @s as @e[type=item_display,tag=AC.AJ,sort=nearest,limit=1] run tp @s ~ ~ ~

# スコア初期化
    scoreboard players set @s General.Mob.Tick -1

# 召喚モーション用Tagを自身に付与
    tag @s add AC.Opening
