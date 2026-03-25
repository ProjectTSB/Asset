#> asset:mob/0456.gargo_ex_machina/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/456/init

# AJロード
    # data modify storage asset:datapack ActivationState set value [{Datapack:"gargo_ex_machina",Active:true}]
    # function asset:datapack/set_activation_state

# 継承元の処理実行
    function asset:mob/super.init

# 再戦フラグチェック
    execute if entity @e[type=marker,tag=CO.IsRematch,distance=..80] run tag @s add CO.IsRematch

# 独自init処理
    # 登場演出再生
        # tag @s add CO.Skill.Start
    # 中心点設置
        summon marker ~ ~0.5 ~ {Tags:["CO.CenterPosition"]}
        execute as @e[type=marker,tag=CO.CenterPosition] at @s run tp @s ~ ~ ~ 0 0
    # NBT設定
    # Aj関連初期化
        function asset:mob/0456.gargo_ex_machina/init/animated_java.m with storage asset:context this.FirstPos
    # じゃまにならないよう移動
        execute at @e[type=marker,tag=CO.CenterPosition] run tp @s ~ ~10 ~
    # スコア初期化
        scoreboard players set @s CO.EventTimer 0
        scoreboard players set @s CO.Counter 0

# ダミー用ひつじ召喚
    execute unless entity @s[tag=CO.IsRematch] run data modify storage api: Argument.ID set value 2264
    execute unless entity @s[tag=CO.IsRematch] run function api:object/summon

# 登場モーション再生
    tag @s add CO.Skill.Activate
    # 再戦フラグ有効の場合、短縮版登場モーションを再生する
        execute if entity @s[tag=CO.IsRematch] run tag @s add CO.Skill.Activate.Short

# DPSタイマー計算開始
    function asset:mob/0456.gargo_ex_machina/init/set_dps_timer

# デバッグ
    # tag @s add CO.IsLatter
