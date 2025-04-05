#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.2.attack_slash_1
#
# アニメーションのイベントハンドラ 前半・連続斬り 縦回転斬り攻撃判定
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main
#   function asset:mob/0327.eclael/debug_damage

# TODO：演出を練る
# 演出
    particle firework ~ ~1 ~ 0 0 0 0.2 5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^ rotated ~90 ~90 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.1.particle_slash

# ターゲット取得
    execute positioned ^ ^-2 ^-1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget
    execute positioned ^ ^-2 ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget
    execute positioned ^ ^-2 ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slash1
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute as @a[tag=93.Temp.AttackTarget] run function api:damage/
    tag @a[tag=93.Temp.AttackTarget] remove 93.Temp.AttackTarget
# リセット
    function api:damage/reset

# 演出
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20503,20504,20505],Scale:[8f,2f,8f],Transformation:{left_rotation:{axis:[0,0,1],angle:1.5708f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute positioned ^ ^1.8 ^2 run function api:object/summon
