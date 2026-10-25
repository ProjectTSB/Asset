#> asset:object/1058.brave_knight/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1058/tick


# 同IDのプレイヤーを特定
    execute at @a[distance=..60] if score @s 1058.OwnerID = @p UserID run tag @p add 1058.OwnerPlayer

# マスターにMarkerを召喚する
    execute at @p[tag=1058.OwnerPlayer,distance=..60] rotated ~ 0 run summon marker ^-1 ^1 ^-1 {Tags:[1058.MoveMarker]}

# マスターの最寄りの敵を自身のターゲットとする
    execute at @p[tag=1058.OwnerPlayer,distance=..60] run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,sort=nearest,limit=1] add 1058.TargetedEnemy

# マスターのマーカーに誘導移動
    execute if entity @s[tag=!1058.AttackMode] facing entity @e[type=marker,tag=1058.MoveMarker,distance=1..60,sort=nearest,limit=1] eyes positioned ^ ^ ^-20 rotated as @s positioned ^ ^ ^-40 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.6 ~ ~

# マーカーが近づいたらゆっくりと向かう
    execute if entity @s[tag=!1058.AttackMode] facing entity @e[type=marker,tag=1058.MoveMarker,distance=0.5..1,sort=nearest,limit=1] eyes run tp @s ^ ^ ^0.1

# 攻撃停止モード時、マーカーが近づいたらタグ解除
    execute if entity @e[type=marker,tag=1058.MoveMarker,distance=..3,limit=1] run tag @s[tag=1058.StopAttack] remove 1058.StopAttack

# 付近に敵がいたら攻撃モードへと移行
    execute if entity @s[tag=!1058.AttackMode,tag=!1058.StopAttack] if entity @e[type=#lib:living_without_player,tag=Enemy,tag=1058.TargetedEnemy,tag=!Uninterferable,distance=..8] run function asset:object/1058.brave_knight/tick/event/dash
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=1058.TargetedEnemy,tag=!Uninterferable,distance=..8] run tag @s[tag=!1058.StopAttack] add 1058.AttackMode

# 攻撃モード時の処理
    execute if entity @s[tag=1058.AttackMode] run function asset:object/1058.brave_knight/tick/event/attack_mode

# パーティクル
    particle minecraft:dust 0.5 0.9 1 0.5 ~ ~0.3 ~ 0.03 0.03 0.03 0 1 force @a[distance=..60]
    particle minecraft:dust 0.4 0.7 1 1 ~ ~0.3 ~ 0.1 0.1 0.1 0 1

# 離れ過ぎると消える
    execute unless entity @e[type=marker,tag=1058.MoveMarker,distance=..40,limit=1] run function asset:object/1058.brave_knight/tick/event/disappear

# ヘルス
    scoreboard players remove @s 1058.LifeTime 1
    execute if score @s 1058.LifeTime matches 0 run function asset:object/1058.brave_knight/tick/event/disappear

# リセット
    kill @e[type=marker,tag=1058.MoveMarker]
    tag @a[tag=1058.OwnerPlayer] remove 1058.OwnerPlayer
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=1058.TargetedEnemy,tag=!Uninterferable] remove 1058.TargetedEnemy
