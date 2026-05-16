#> asset:object/1059.book_of_hero/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1059/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 同IDのプレイヤーを特定
    execute store result score $OwnerID Temporary run data get storage asset:context this.UserID
    execute at @a[distance=..60] if score $OwnerID Temporary = @p UserID as @p run tag @s add 1059.OwnerPlayer

# だいたい本からコピー。
# パーティクル
    particle enchant ~ ~ ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~80

# 周囲にプレイヤーがいない場合、プレイヤーを追尾
    execute unless entity @p[tag=1059.OwnerPlayer,distance=..8] facing entity @p[tag=1059.OwnerPlayer] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 周囲にプレイヤーがいる場合、かつ敵がいない場合、プレイヤーを追尾
    execute if entity @p[tag=1059.OwnerPlayer,distance=..8] unless entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..6] facing entity @p[tag=1059.OwnerPlayer] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# 周囲にプレイヤーがいて、かつ敵が近くにいる場合、範囲内なら敵を追う
    execute if entity @p[tag=1059.OwnerPlayer,distance=..8] if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..6] facing entity @e[type=#lib:living,distance=..6,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~


# スコア増やす
    scoreboard players add @s 1059.ActionTime 1
# 敵が周囲にいてスコア達したら実行
    execute if score @s 1059.ActionTime matches 40.. if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..10] run function asset:object/1059.book_of_hero/tick/attack
# 敵が周囲にいない状態でスコア達したらスコア戻す
    execute if score @s 1059.ActionTime matches 40.. unless entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..10] run scoreboard players set @s 1059.ActionTime 0

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision/ at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision/ at @s run tp @s ~ ~ ~ ~45 ~-45

# 離れ過ぎたら消える
    execute unless entity @a[tag=1059.OwnerPlayer,distance=..70] run function asset:object/1059.book_of_hero/tick/kill

# リセット
    scoreboard players reset $OwnerID Temporary
    tag @a[tag=1059.OwnerPlayer,distance=..80] remove 1059.OwnerPlayer

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=300..}] run function asset:object/1059.book_of_hero/tick/kill
