#> asset:mob/1004.tultaria/tick/skill/transition/common/start
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/windup
#   asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/windup

# タグ付与、全基本動作停止
    tag @s add RW.InAction

# アニメ再生
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/dodge_back/tween {to_frame:0,duration:1}

# スキルのタグをリセットする
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# その他タグリセット
    tag @s remove RW.Move
    tag @s remove RW.DisableInertia
    tag @s remove RW.Mode.Fire
    tag @s remove RW.Mode.Water
    tag @s remove RW.Mode.Thunder

# 腕輪を変更
    item replace entity @e[type=item_display,tag=aj.tultaria.bone.right_ring,sort=nearest,limit=1] container.0 with air
    item replace entity @e[type=item_display,tag=aj.tultaria.bone.left_ring,sort=nearest,limit=1] container.0 with air

# アイテム指定
    item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20075}

# マーカーも消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# スコアリセット
    scoreboard players reset @s RW.FakeInertia

# 無敵になる
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable

# オブジェクト削除
    function asset:mob/1004.tultaria/tick/reset/remove_objects

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 4 0.7
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 4 1.5
