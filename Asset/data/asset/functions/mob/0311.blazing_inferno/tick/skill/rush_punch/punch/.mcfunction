#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/
#
# パンチのメイン処理
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/tick

#> SpreadLib
# @private
    #declare tag SpreadMarker


# ちょ～っとずつ進む、ただしプレイヤーを捕捉していない場合
    execute at @s positioned ^ ^ ^1.5 unless entity @p[gamemode=!spectator,distance=..1.5] at @s rotated ~ 0 run tp @s ^ ^ ^0.5

# 常時壁破壊
    execute if predicate api:area/is_breakable run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/break_block

# 眼の前に壊せないブロックがあったら、そこでやめる
    execute at @s if block ^ ^ ^1 #lib:unbreakable run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/end

# パンチのダメージ判定
    # ダメージ設定
        data modify storage api: Argument.Damage set value 5f
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "Fire"
    # 補正実行
        function api:damage/modifier
    # ダメージを与える
        execute positioned ^ ^ ^1.5 as @a[tag=!PlayerShouldInvulnerable,distance=..1.5] run function api:damage/
    # プレイヤーを捕捉してフルヒットさせる！
        execute at @s positioned ^ ^ ^1.5 as @a[gamemode=!spectator,distance=..1.5] positioned ~ ~0.5 ~ rotated ~180 ~ run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/hold
    # リセット
        function api:damage/reset

# ランダムパンチ風演出
    # 拡散させるEntityを召喚する
        execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # ステータス設定
        data modify storage lib: Argument.Distance set value 1
        data modify storage lib: Argument.Spread set value 1
    # 拡散
        execute as @e[type=marker,tag=SpreadMarker,limit=1] rotated ~ 0 run function lib:forward_spreader/circle
    # パンチの判定を拡散したところに出す
        execute anchored eyes positioned ^ ^ ^ facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes positioned ^ ^-1 ^3 rotated ~ 0 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/vfx
    # 拡散マーカー消す
        kill @e[type=marker,tag=SpreadMarker,distance=..30]

# 攻撃終了
    # ハード未満
        execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 30 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/end
    # ハード以上
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 40 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/end
