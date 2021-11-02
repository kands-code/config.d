;; 外观配置

;; 下载主题并使用
(use-package material-theme
  :init (load-theme 'material-light t))

;; 配置 mode-line
(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	sml/theme 'respectful)
  (sml/setup))

;; 提供配置
(provide 'init-ui)
