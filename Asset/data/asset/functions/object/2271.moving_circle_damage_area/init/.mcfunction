#> asset:object/2271.moving_circle_damage_area/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2271/init

# 設定項目（FieldOverride）
    # Color : 円範囲エフェクトの色。leather_horse_armorの色であるため、16777215が白。
    # TextColor : 矢印エフェクトの色。カラーコードで指定すること
    # Scale : エフェクトの大きさ。[5f,5f,0.01f]がデフォルト。矢印エフェクトのサイズおよび位置調整にScale[0]を用いる。
    # Tick : 何Tick後にダメージを与えるかを指定する。ただしこのオブジェクトはあくまでも見た目だけなのでダメージ処理は自前で。

# 実行角度に合わせる
    tp @s ~ ~ ~ ~ 0

# 通常の円範囲を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set from storage asset:context this.Color
    data modify storage api: Argument.FieldOverride.Scale set from storage asset:context this.Scale
    data modify storage api: Argument.FieldOverride.Tick set from storage asset:context this.Tick
    execute rotated ~ 0 positioned ~ ~ ~ run function api:object/summon

# 矢印のサイズおよび位置調整
    execute store result storage asset:context this.Text.ScaleX float 3 run data get storage asset:context this.Scale[0]
    execute store result storage asset:context this.Text.ScaleY float 1 run data get storage asset:context this.Scale[0]
    execute store result storage asset:context this.Text.Offset float 0.5 run data get storage asset:context this.Scale[0]
    execute store result storage asset:context this.Text.PosOffset float 0.25 run data get storage asset:context this.Scale[0]
    function asset:object/2271.moving_circle_damage_area/init/set_transformation with storage asset:context this.Text
