#> asset:object/2039.pumpkin_dps_check/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2039/init

# セッション開ける
    function lib:array/session/open

# 回転用のデータを設定しておく
    data modify storage lib: Array set value []
    data modify storage lib: Array append value {Interpolation:25,Pitch:0.6}
    data modify storage lib: Array append value {Interpolation:24,Pitch:0.65}
    data modify storage lib: Array append value {Interpolation:23,Pitch:0.7}
    data modify storage lib: Array append value {Interpolation:22,Pitch:0.75}
    data modify storage lib: Array append value {Interpolation:21,Pitch:0.8}
    data modify storage lib: Array append value {Interpolation:20,Pitch:0.9}
    data modify storage lib: Array append value {Interpolation:19,Pitch:1.0}
    data modify storage lib: Array append value {Interpolation:18,Pitch:1.05}
    data modify storage lib: Array append value {Interpolation:17,Pitch:1.1}
    data modify storage lib: Array append value {Interpolation:16,Pitch:1.15}
    data modify storage lib: Array append value {Interpolation:15,Pitch:1.2}
    data modify storage lib: Array append value {Interpolation:14,Pitch:1.25}
    data modify storage lib: Array append value {Interpolation:13,Pitch:1.3}
    data modify storage lib: Array append value {Interpolation:12,Pitch:1.35}
    data modify storage lib: Array append value {Interpolation:11,Pitch:1.4}
    data modify storage lib: Array append value {Interpolation:10,Pitch:1.45}
    data modify storage lib: Array append value {Interpolation:9,Pitch:1.5}
    data modify storage lib: Array append value {Interpolation:8,Pitch:1.55}
    data modify storage lib: Array append value {Interpolation:7,Pitch:1.7}
    data modify storage lib: Array append value {Interpolation:6,Pitch:1.75}
    data modify storage lib: Array append value {Interpolation:5,Pitch:1.8}
    data modify storage lib: Array append value {Interpolation:4,Pitch:1.85}

# 反転
    function lib:array/reverse
# フィールドに保存
    data modify storage asset:context this.InterpolationList set from storage lib: Array
# セッション閉じる
    function lib:array/session/close
