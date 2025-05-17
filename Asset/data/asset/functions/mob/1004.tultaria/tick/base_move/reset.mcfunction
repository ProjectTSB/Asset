#> asset:mob/1004.tultaria/tick/base_move/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S8.Death

# サウンド
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1 0.5
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.breeze.slide hostile @a ~ ~ ~ 1 0.7

# 自身のモデルのアニメ
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/dodge_side/tween {to_frame:0,duration:1}

# 壊れてる足場を復帰させる
    function asset:mob/1004.tultaria/tick/base_move/regenerate_platform/

# スキルのタグをリセットする
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# 行動中タグを解除
    tag @s remove RW.InAction

# 慣性ONに
    tag @s remove RW.DisableInertia

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable

# スコアを戻す
    scoreboard players set @s General.Mob.Tick -2
    scoreboard players set @s RW.LoopCount 0
    scoreboard players reset @s RW.FakeInertia

# 速度設定
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 4
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 6
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 7

# 移動完了するまでTickロックしちゃお
    tag @s add RW.TickLock

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1016}] add S8.Death

# 速度設定
    scoreboard players set @s RW.Speed 5

# ランダム移動
    execute at @r[gamemode=!spectator,distance=..64] run function asset:mob/1004.tultaria/tick/move/teleport/place_marker.m with storage asset:context this.Pos
