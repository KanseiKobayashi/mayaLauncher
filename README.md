# mayaLauncher
# 🎨 Maya Launcher - README

Maya Launcher は、Maya 起動前に環境変数やプロジェクトを設定し、  
ワンクリックで Maya を起動できる PySide6 ベースの GUI ツールです。

PyInstaller により **PySide6 や Python がインストールされていない環境でも動作** します。

---

## 📌 主な機能

- Maya バージョン選択（2025 / 2026）
- **MAYA_SCRIPT_PATH** の設定
- **PYTHONPATH** の設定
- **MAYA_PROJECT** の履歴付き選択（増やせる）
- 設定の保存 / 読み込み（自動）
- Maya を独立プロセスとして起動（Launcher 終了しても Maya は閉じない）

---

##  使い方

### ① 起動
MayaLauncherGUI.exe


### ② 設定項目
- **MAYA_SCRIPT_PATH**（バージョンに応じて自動設定）
- **PYTHONPATH**（任意）
- **MAYA_PROJECT**  
  - コンボボックスで履歴選択  
  - 新規プロジェクトは「参照」か直接入力

### ③ 設定保存
「Save Setting」を押して JSON 保存：

MayaLauncherSettings.json

保存された設定は次回起動時に自動で反映されます。


### ④ Maya 起動
`Maya を起動` を押すと、指定した環境変数をセットした上で  
選択した Maya バージョンを起動します。

---

## 💾 保存される設定（JSON）

```json
{
    "version": "2026",
    "script_path": "C:/Users/user/Documents/maya/2026/scripts",
    "python_path": "E:/Python/Modules",
    "project_list": [
        "C:/Users/user/Documents/maya/projects/default",
        "D:/Project/Maya",
        "E:/Work/Scene01"
    ]
}
