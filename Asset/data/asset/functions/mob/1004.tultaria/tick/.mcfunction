#> asset:mob/1004.tultaria/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1004/tick

#> private
# @private
    #declare score_holder $Count
    #declare score_holder $4tInterval

# スコア加算
    scoreboard players add @s[tag=!RW.TickLock] General.Mob.Tick 1

# モデルにタグ付与
    tag @e[type=item_display,tag=RW.ModelRoot,distance=..64,sort=nearest,limit=1] add RW.ModelRoot.Target

# 最寄りのモデルのRootを自身の座標にもってくる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..64,sort=nearest,limit=1] run tp @s ~ ~ ~

# モデルをプレイヤーに向ける
    execute if entity @s[tag=!RW.InAction] as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..64,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,distance=..128] eyes run tp @s ~ ~ ~ ~ 0

# 開幕
    execute if entity @s[tag=RW.Opening] run function asset:mob/1004.tultaria/tick/intro/tick

# ベース動作
    execute if entity @s[tag=!RW.Opening] run function asset:mob/1004.tultaria/tick/base_move/

# フェーズ2移行動作
    execute if entity @s[tag=RW.Transition.Phase2] run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/

# フェーズ3移行動作
    execute if entity @s[tag=RW.Transition.Phase3] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/

# 奈落落ちたときの処理
    execute at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function asset:mob/1004.tultaria/tick/void/

# 属性モードに応じたパーティクルを両手から出す
    execute if entity @s[tag=RW.Mode.Fire] at @e[type=marker,tag=RW.ModelLocator.LeftHand,distance=..8,sort=nearest,limit=1] run particle dust 1 0.5 0 1 ~ ~ ~ 0.1 0.1 0.1 1 1
    execute if entity @s[tag=RW.Mode.Fire] at @e[type=marker,tag=RW.ModelLocator.RightHand,distance=..8,sort=nearest,limit=1] run particle dust 1 0.5 0 1 ~ ~ ~ 0.1 0.1 0.1 1 1
    execute if entity @s[tag=RW.Mode.Water] at @e[type=marker,tag=RW.ModelLocator.LeftHand,distance=..8,sort=nearest,limit=1] run particle dust 0.8 1 1 1 ~ ~ ~ 0.1 0.1 0.1 1 1
    execute if entity @s[tag=RW.Mode.Water] at @e[type=marker,tag=RW.ModelLocator.RightHand,distance=..8,sort=nearest,limit=1] run particle dust 0.8 1 1 1 ~ ~ ~ 0.1 0.1 0.1 1 1
    execute if entity @s[tag=RW.Mode.Thunder] at @e[type=marker,tag=RW.ModelLocator.LeftHand,distance=..8,sort=nearest,limit=1] run particle dust 1 1 0.5 1 ~ ~ ~ 0.1 0.1 0.1 1 1
    execute if entity @s[tag=RW.Mode.Thunder] at @e[type=marker,tag=RW.ModelLocator.RightHand,distance=..8,sort=nearest,limit=1] run particle dust 1 1 0.5 1 ~ ~ ~ 0.1 0.1 0.1 1 1
    execute if entity @s[tag=RW.Mode.Light] at @e[type=marker,tag=RW.ModelLocator.LeftHand,distance=..8,sort=nearest,limit=1] run particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 1 1
    execute if entity @s[tag=RW.Mode.Light] at @e[type=marker,tag=RW.ModelLocator.RightHand,distance=..8,sort=nearest,limit=1] run particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 1 1

# フェイズ3以降は、「忠誠の幻想」が一人でもいるならカッチカチになる
    execute if score @s RW.Phase matches 3.. if entity @e[type=wither_skeleton,scores={MobID=1005},distance=..64] run tag @s add RW.Shield
    execute if entity @s[tag=RW.Shield] run function asset:mob/1004.tultaria/tick/base_move/loyalty_shield/

# フェイズ3以降、「忠誠の幻想」がいない場合はシールドが割れる
    execute if score @s[tag=!RW.Break] RW.Phase matches 3.. unless entity @e[type=wither_skeleton,scores={MobID=1005},distance=..64] run function asset:mob/1004.tultaria/tick/base_move/break/start

# ブレイク状態の時のTick処理
    execute if entity @s[tag=RW.Break] run function asset:mob/1004.tultaria/tick/base_move/break/tick

# 足元が埋まっている間は上にちょっとずつ登る
    execute unless block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~0.2 ~

# リセット
    tag @e[type=item_display,tag=RW.ModelRoot.Target,distance=..64,limit=1] remove RW.ModelRoot.Target

# Super!
    function asset:mob/super.tick
