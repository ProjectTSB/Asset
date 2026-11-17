#> asset:object/2279.magic_circle/init/
#
# Objectのinit時の処理
#
# @within function asset:object/alias/2279/init

# 裏面の文字が未指定なら表面の文字を使う
    execute unless data storage asset:context this.BackChar run data modify storage asset:context this.BackChar set from storage asset:context this.Char

# 本体と裏面に表示を設定する
    execute unless data storage asset:context this.Color run function asset:object/2279.magic_circle/init/apply.m with storage asset:context this
    execute if data storage asset:context this.Color run function asset:object/2279.magic_circle/init/apply_color.m with storage asset:context this

# 初回の補間準備として3tick待機する
    data modify storage asset:context this.SpinInterval set value 3

# 消滅までの残り時間を初期化する
    data modify storage asset:context this.RemainingTick set from storage asset:context this.Tick

# 初回待機の段階を設定する
    data modify storage asset:context this.Phase set value "Waiting"
