#> asset:object/1029.barrage_spirit/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1029/tick

#> ゴーストちゃんの移動先を決定するマーカーのタグ
# @private
    #declare tag MoveMarker

# 同IDのプレイヤーを特定
    execute as @a[distance=..60] if score @s UserID = @e[type=armor_stand,tag=this,distance=..0.01,limit=1] 1029.UserID run tag @s add 1029.OwnerPlayer

# マスターにMarkerを召喚する
    execute at @p[tag=1029.OwnerPlayer,distance=..60] rotated ~ 0 run summon marker ^-1 ^1 ^-1 {Tags:[MoveMarker]}

# マスターのマーカーに誘導移動
    execute facing entity @e[type=marker,tag=MoveMarker,distance=1..60,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-400 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.23 ~ ~

# マーカーが近づいたらゆっくりと向かう
    execute facing entity @e[type=marker,tag=MoveMarker,distance=0.5..1,limit=1] eyes run tp @s ^ ^ ^0.1

# 付近に敵がいたら攻撃モードへと移行
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15] run tag @s add 1029.AttackMode

# 付近に敵がいたらそっちへの攻撃を優先
    execute facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.05 ~ ~

# ポーズ
    # (待機)
        item replace entity @s[tag=!1029.AttackMode] armor.head with stick{CustomModelData:20236}

    # (射撃)
        item replace entity @s[tag=1029.AttackMode] armor.head with stick{CustomModelData:20229}

# パーティクル
    execute rotated ~ 0 run particle minecraft:dust 1 1 1 0.5 ^ ^ ^-0.2 0.07 0.07 0.07 0 1 force @a[distance=..60]
    execute rotated ~ 0 run particle minecraft:dust 0.592 0.722 0.918 1 ^ ^ ^-0.2 0.1 0.1 0.1 0 1
    execute if predicate lib:random_pass_per/30 rotated ~ 0 run particle minecraft:soul_fire_flame ^ ^ ^-0.2 0.1 0.1 0.1 0 1

# 付近に敵がいるならスコア加算
    scoreboard players add @s[tag=1029.AttackMode] 1029.ActionTime 1

# 魔法攻撃
    execute if entity @s[scores={1029.ActionTime=2..}] rotated ~ 0 positioned ^0.1 ^0.8 ^0.5 run function asset:object/1029.barrage_spirit/tick/shoot

# 撃ちまくったら休憩
    execute if entity @s[scores={1029.ShotCount=3..}] run scoreboard players set @s 1029.ActionTime -10
    execute if entity @s[scores={1029.ShotCount=3..}] run scoreboard players reset @s 1029.ShotCount

# 付近に敵がいないならスコアリセット
    scoreboard players reset @s[tag=!1029.AttackMode] 1029.ActionTime
    scoreboard players reset @s[tag=!1029.AttackMode] 1029.ShotCount

# 離れ過ぎると消える
    execute unless entity @e[type=marker,tag=MoveMarker,distance=..60,limit=1] run function asset:object/1029.barrage_spirit/tick/disapper

# ヘルス
    scoreboard players add @s General.Object.Tick 1
    execute if score @s General.Object.Tick matches 300 run function asset:object/1029.barrage_spirit/tick/disapper

# リセット
    kill @e[type=marker,tag=MoveMarker]
    tag @a[tag=1029.OwnerPlayer] remove 1029.OwnerPlayer
    tag @s[tag=1029.AttackMode] remove 1029.AttackMode
    scoreboard players reset $OwnerID Temporary
