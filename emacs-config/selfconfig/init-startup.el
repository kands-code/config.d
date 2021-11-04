;; 初始化 emacs

;; 设置为默认编码 utf-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; 关闭菜单栏
(menu-bar-mode -1)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭滚动条
(scroll-bar-mode -1)

;; 关闭初始界面
(setq inhibit-startup-screen t)

;; 启用时间模式
;; (display-time-mode 1)
;; 显示电池电量
;; (display-battery-mode 1)
;; 启用行列数字
(column-number-mode 1)
(line-number-mode 1)
;; 显示文件大小
(size-indication-mode 1)

;; 设置启动时界面大小
(add-to-list 'default-frame-alist '(width . 80))
(add-to-list 'default-frame-alist '(height . 24))

;; 在某些模式下关闭行号
(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))
   
;; 提供名称
(provide 'init-startup)
