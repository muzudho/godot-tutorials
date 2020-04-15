extends Button

func _ready():
	# Game Over ボタンは 隠すこともできるから、必ず表示しておこうぜ☆（＾～＾）
	print("ゲーム・オーバー・ボタン「 ゲームシーンさんが何か準備してるな……」")

func _on_GameoverButton_pressed():
	# Game Over ボタンを押したら、そのボタンを隠そうぜ☆（＾～＾）？
	print("ゲーム・オーバー・ボタン「 誰だ、わたしを押したのは……」")
	hide()
