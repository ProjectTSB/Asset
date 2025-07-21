#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/targeting
#
# 構えポーズを取りつつターゲッティング
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick

#> Private
# @private
    #declare tag TargetPlayer


# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_4_windup/tween {to_frame:0,duration:1}

# モデルをプレイヤーに向ける
    execute as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,distance=..128] eyes run tp @s ~ ~ ~ ~ 0

# 演出
    playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# 周囲のランダムなプレイヤーを対象に
    tag @r[gamemode=!spectator,distance=..80,limit=1] add TargetPlayer

# プレイヤーの周囲に大雑把にマーカー設置
    # 残ってたらヤなのでマーカーを消す
        kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]
    # 移動先を設置
        execute if entity @s[scores={RW.Phase=1..2}] facing entity @p[gamemode=!spectator,tag=TargetPlayer] feet run summon marker ^ ^ ^20 {Tags:[RW.TeleportMarker,RW.MarkerInit]}
        execute if entity @s[scores={RW.Phase=3..}] facing entity @p[gamemode=!spectator,distance=..32] feet run tp @s ~ ~ ~ ~ ~
    # 拡散設定
        #data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    # 最寄りのやつの場所で拡散させる
        #execute as @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] at @p[tag=TargetPlayer] run function lib:spread_entity/

# 雷撃マーカー設置
    execute if score @s RW.LoopCount matches 0 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning1"]}
    execute if score @s RW.LoopCount matches 1 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning2"]}
    execute if score @s RW.LoopCount matches 2 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning3"]}
    execute if score @s RW.LoopCount matches 3 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning4"]}
    execute if score @s RW.LoopCount matches 4 run summon marker ~ ~1 ~ {Tags:["RW.ChainLightning.Common","RW.ChainLightning5"]}

# プレイヤーのタグを外す
    tag @a[tag=TargetPlayer] remove TargetPlayer

# ヒットリストを削除
    data remove storage asset:context this.HitList
