;; 外观配置

;; 下载主题并使用
(use-package material-theme
  :init (load-theme 'material-light t))

;; 配置 mode-line 一般不需要配置
;; (use-package smart-mode-line
;;   :init
;;   (setq sml/no-confirm-load-theme t
;; 	sml/theme 'respectful)
;;   (sml/setup))
;; (use-package doom-modeline
;;   :ensure t
;;   :config
;;   ;; 关闭彩色图标
;;   ;; (setq all-the-icons-color-icons nil)
;;   :hook (after-init . doom-modeline-mode))
	 
;; 设置字体
;; 需要提前安装好字体
(use-package emacs
  :if (display-graphic-p) ;; 只在图形界面有效
  :config
  (set-face-attribute 'default nil
		      :font "Sarasa Mono Slab SC"
		      :height 180))

;; 设置行号
(use-package emacs
  :unless *is-win*
  :config
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode t))

;; 提供配置
(provide 'init-ui)