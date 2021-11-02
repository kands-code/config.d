;; 初始化 emacs

;; 关闭菜单栏
(menu-bar-mode -1)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭滚动条
(scroll-bar-mode -1)

;; 关闭初始界面
(setq inhibit-startup-screen t)

;; 启用时间模式
(display-time-mode 1)

;; 显示电池电量
(display-battery-mode 1)

;; 启用行列数字
(column-number-mode 1)
(line-number-mode 1)

;; 显示文件大小
(size-indication-mode 1)

;; 启用行号
;; (add-hook 'prog-mode-hook #'linum-mode)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; 提供名称
(provide 'init-startup)
