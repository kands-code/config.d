;; 配置键盘

;; 键位映射

;; 修改 yes-or-no 为 y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; 绑定 `esc` 到 `keyboard-escape-quit`
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; 提供名称
(provide 'init-kbd)
