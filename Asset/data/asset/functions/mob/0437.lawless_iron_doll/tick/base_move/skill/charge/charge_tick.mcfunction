#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/charge_tick
#
# 突進中の処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# 多重ヒット防止判定
    execute positioned ~-1 ~-2 ~-1 as @a[tag=!PlayerShouldInvulnerable,distance=..16,dx=2,dy=4,dz=2] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/check_player/

# ブロックの破壊
    execute if predicate api:area/is_breakable positioned ~ ~0.5 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/block_break

# ダメージ
    # ダメージ値設定
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Charge
    # ダメージの属性をセット
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "None"
    # 補正functionを実行
        function api:damage/modifier
    # 多重ヒット防止判定部分でタグを付与した対象にダメージを与える
        execute as @a[tag=C5.TargetEntity,distance=..16] run function api:damage/
    # リセット
        function api:damage/reset
        tag @a[distance=..16] remove C5.TargetEntity

# 近くのプレイヤーの方にゆっくりと向き直る
    execute facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 6tickごとに足音
    scoreboard players operation $Interval Temporary %= $6 Const
# 下に何かあるなら、ゴツンゴツン
    execute if score $Interval Temporary matches 0 unless block ~ ~-0.25 ~ #lib:no_collision run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.5
    execute if score $Interval Temporary matches 0 unless block ~ ~-0.25 ~ #lib:no_collision run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 2.5 0.6
# 下に何もないなら、キラキラ
    execute if score $Interval Temporary matches 0 if block ~ ~-0.25 ~ #lib:no_collision run playsound minecraft:block.amethyst_block.place hostile @a ~ ~ ~ 2 0.5
    execute if score $Interval Temporary matches 0 if block ~ ~-0.25 ~ #lib:no_collision run playsound minecraft:block.amethyst_block.chime hostile @a ~ ~ ~ 2 1
# リセット
    scoreboard players reset $Interval Temporary

# 空中歩行に説得力もたせるパーティクル
    execute if block ~ ~-0.25 ~ #lib:no_collision run particle minecraft:enchant ~ ~ ~ 0.7 0 0.7 0 30 force @a[distance=..32]

# そこらのプレイヤーより上にいる場合、下にTP。下にブロックがあったら止まるよ。
    function asset:mob/0437.lawless_iron_doll/tick/base_move/common/descend_when_all_player_below

# 足元の先が埋まっているなら、上に移動
    execute rotated ~ 0 unless block ^ ^ ^1 #lib:no_collision run tp @s ~ ~0.1 ~

# まっすぐ前に歩く
    execute at @s run tp @s ^ ^ ^1 ~ 0
