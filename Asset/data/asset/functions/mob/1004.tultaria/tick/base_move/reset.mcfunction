#> asset:mob/1004.tultaria/tick/base_move/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

#> トゥル側から剣へと付与するタグ
# @private
#declare tag S8.Death

# 幻影をテレポートさせる
    execute as @e[type=wither_skeleton,scores={MobID=1005},distance=..128] at @s run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/teleport/

# 自身のモデルのアニメ
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral_air/stop
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/dodge_side/play

# 壊れてる足場を復帰させる
    function asset:mob/1004.tultaria/tick/base_move/regenerate_platform/

# スキルのタグをリセットする
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# 行動中タグを解除
    tag @s remove RW.InAction

# 方向タグ削除
    tag @s remove RW.Direction.Left
    tag @s remove RW.Direction.Right

# 慣性ONに
    tag @s remove RW.DisableInertia

# チェイス停止
    kill @e[tag=RW.ChaseMarker]
    tag @s remove RW.ChaseShot

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable

# スコアを戻す
    scoreboard players set @s RW.Tick -2
    scoreboard players set @s RW.LoopCount 0
    scoreboard players reset @s RW.FakeInertia
    scoreboard players reset @s RW.MiniSkillCount

# 速度設定
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 4
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 6
    scoreboard players set @s[scores={RW.Phase=1}] RW.Speed 7

# ソード設置カウントをリセット
    scoreboard players set @s[scores={RW.Phase=2,RW.SwordCount=2..}] RW.SwordCount 0
    scoreboard players set @s[scores={RW.Phase=3,RW.SwordCount=1..}] RW.SwordCount 0

# 移動完了するまでTickロックしちゃお
    tag @s add RW.TickLock

# 剣を消す
    tag @e[type=armor_stand,scores={MobID=1016}] add S8.Death

# 速度設定
    scoreboard players set @s RW.Speed 5

# ランダム移動
    execute at @r run function asset:mob/1004.tultaria/tick/move/teleport/place_marker
