#> asset:mob/0429.killer_bee_formation/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/429/init

# IDを入れておく
    execute store result score @s 4V.QueenID run data get storage asset:context this.QueenID
    execute store result score @s 4V.Count run data get storage asset:context this.Count

# General.Mob.Tick初期化
    scoreboard players set @s General.Mob.Tick -2

# 100ブロック下にtp
    tp @s ~ ~-100 ~

# モデル装着
    # item replace entity @s armor.head with stone{CustomModelData:20054}
