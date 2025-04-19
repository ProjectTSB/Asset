#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# アイテム指定
    execute if score @s General.Mob.Tick matches 0 run item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20075}

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right/tween {to_frame:0,duration:1}

# 自身のモデルにモーションを再生させる
    execute if score @s General.Mob.Tick matches 30 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/tween {to_frame:0,duration:1}

# 最初の移動
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/move/

# 移動終了後、ターゲットを狙う
    function asset:mob/1004.tultaria/tick/skill/fire/move_shot/aim.m with storage asset:context this

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 射撃
    execute if score @s General.Mob.Tick matches 20 at @e[type=marker,tag=RW.ModelLocator.RightHand,distance=..8,sort=nearest,limit=1] rotated as @s run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/shoot
    execute if score @s[scores={RW.Phase=2..}] General.Mob.Tick matches 25 at @e[type=marker,tag=RW.ModelLocator.RightHand,distance=..8,sort=nearest,limit=1] rotated as @s positioned ^-2 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/shoot
    execute if score @s[scores={RW.Phase=2..}] General.Mob.Tick matches 30 at @e[type=marker,tag=RW.ModelLocator.RightHand,distance=..8,sort=nearest,limit=1] rotated as @s positioned ^2 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/shoot

# 幻影に攻撃させる
    execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/illusion_of_loyalty/fire/meteor_rain

# ループ
    execute if entity @s[scores={RW.LoopCount=..1,General.Mob.Tick=35}] run function asset:mob/1004.tultaria/tick/skill/fire/move_shot/add_loop_count

# 自身のモデルにモーションを再生させる、解除モーション
    execute if score @s General.Mob.Tick matches 65 as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_1_right/tween {to_frame:0,duration:1}

# リセット
    execute if score @s General.Mob.Tick matches 80 run data remove storage asset:context this.TargetID
    execute if score @s General.Mob.Tick matches 80 run function asset:mob/1004.tultaria/tick/base_move/reset
