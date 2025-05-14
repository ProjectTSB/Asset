#> asset:mob/0437.lawless_iron_doll/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/437/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_lawless_iron_doll",Active:true}]
    function asset:datapack/set_activation_state

# 出現座標を記憶する
    summon marker ~ ~ ~ {Tags:["C5.Marker.SpawnPoint","C5.Marker"]}

# 付近のプレイヤーのほうを向く
    execute facing entity @p[gamemode=!spectator,distance=..256] eyes run tp @s ~ ~ ~ ~ 0

# モデルを召喚
    execute at @s rotated ~ 0 run function animated_java:lawless_iron_doll/summon {args:{animation:intro,start_animation:1b}}

# 技のリストの初期値
    # ノーマル
        execute if predicate api:global_vars/difficulty/1_normal run data modify storage asset:context this.Skill.List set value [0,1,2,3]
    # ハード
        execute if predicate api:global_vars/difficulty/min/2_hard run data modify storage asset:context this.Skill.List set value [0,1,2,3,4]
    # Blessless。最初から全行動を使う。
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage asset:context this.Skill.List set value [0,1,2,3,4,5]

# スコアをセットする
    scoreboard players set @s General.Mob.Tick -1

# Super!
    function asset:mob/super.init
